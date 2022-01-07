; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_partition_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_partition_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32*, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Setting partition keys\0A\00", align 1
@RCV_PARTITION_KEY_PARTITION_KEY_A_MASK = common dso_local global i32 0, align 4
@RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT = common dso_local global i32 0, align 4
@RCV_PARTITION_KEY = common dso_local global i64 0, align 8
@RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @set_partition_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_partition_keys(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %6 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %6, i32 0, i32 1
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = call i32 @dd_dev_info(%struct.hfi1_devdata* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RCV_PARTITION_KEY_PARTITION_KEY_A_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 4
  %28 = load i32, i32* @RCV_PARTITION_KEY_PARTITION_KEY_B_SHIFT, align 4
  %29 = mul nsw i32 %27, %28
  %30 = shl i32 %25, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %16
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %38 = load i64, i64* @RCV_PARTITION_KEY, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 3
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @write_csr(%struct.hfi1_devdata* %37, i64 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %11
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %52 = load i32, i32* @RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK, align 4
  %53 = call i32 @add_rcvctrl(%struct.hfi1_devdata* %51, i32 %52)
  ret void
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @add_rcvctrl(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
