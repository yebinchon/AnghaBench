; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_usnic_fwd_disable_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_usnic_fwd_disable_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_fwd_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }

@CMD_QP_RQWQ = common dso_local global i32 0, align 4
@CMD_QP_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PF %s VNIC Index %u RQ Index: %u DISABLE Failed with status %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PF %s VNIC Index %u RQ Index: %u DISABLED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_fwd_disable_qp(%struct.usnic_fwd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usnic_fwd_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.usnic_fwd_dev* %0, %struct.usnic_fwd_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %4, align 8
  %12 = getelementptr inbounds %struct.usnic_fwd_dev, %struct.usnic_fwd_dev* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @CMD_QP_RQWQ, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CMD_QP_DISABLE, align 4
  %19 = call i32 @usnic_fwd_devcmd(%struct.usnic_fwd_dev* %16, i32 %17, i32 %18, i32* %8, i32* %9)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = call i32 @netdev_name(%struct.net_device* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @usnic_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = call i32 @netdev_name(%struct.net_device* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @usnic_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @usnic_fwd_devcmd(%struct.usnic_fwd_dev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

declare dso_local i32 @usnic_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
