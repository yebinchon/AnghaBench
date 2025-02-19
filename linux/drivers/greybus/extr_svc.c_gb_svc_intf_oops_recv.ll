; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_oops_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc.c_gb_svc_intf_oops_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_svc = type { i32 }
%struct.gb_svc_intf_oops_request = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"short intf-oops request received (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_svc_intf_oops_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_svc_intf_oops_recv(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_svc*, align 8
  %5 = alloca %struct.gb_svc_intf_oops_request*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %6 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %7 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.gb_svc* @gb_connection_get_data(i32 %8)
  store %struct.gb_svc* %9, %struct.gb_svc** %4, align 8
  %10 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %11 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.gb_svc*, %struct.gb_svc** %4, align 8
  %19 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %18, i32 0, i32 0
  %20 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %21 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24, i32 4)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %30 = call i32 @gb_svc_queue_deferred_request(%struct.gb_operation* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.gb_svc* @gb_connection_get_data(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @gb_svc_queue_deferred_request(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
