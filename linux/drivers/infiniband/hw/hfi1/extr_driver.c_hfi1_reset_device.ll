; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hfi1_devdata = type { i32, i32, %struct.hfi1_pportdata*, i64, i32 }
%struct.hfi1_pportdata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reset on unit %u requested\0A\00", align 1
@HFI1_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Invalid unit number %u or not initialized or not present\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@hfi1_mutex = common dso_local global i32 0, align 4
@hfi1_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Reinitialize unit %u after reset failed with %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Reinitialized unit %u after resetting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_reset_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.hfi1_devdata* @hfi1_lookup(i32 %7)
  store %struct.hfi1_devdata* %8, %struct.hfi1_devdata** %4, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %10 = icmp ne %struct.hfi1_devdata* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @dd_dev_info(%struct.hfi1_devdata* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HFI1_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @dd_dev_info(%struct.hfi1_devdata* %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %96

35:                                               ; preds = %22
  %36 = call i32 @mutex_lock(i32* @hfi1_mutex)
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hfi1_stats, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = call i32 @mutex_unlock(i32* @hfi1_mutex)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %96

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %35
  %50 = call i32 @mutex_unlock(i32* @hfi1_mutex)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %66, %49
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %54 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %59 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %58, i32 0, i32 2
  %60 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %60, i64 %62
  store %struct.hfi1_pportdata* %63, %struct.hfi1_pportdata** %5, align 8
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %65 = call i32 @shutdown_led_override(%struct.hfi1_pportdata* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %71 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %78 = call i32 @sdma_exit(%struct.hfi1_devdata* %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %81 = call i32 @hfi1_reset_cpu_counters(%struct.hfi1_devdata* %80)
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %83 = call i32 @hfi1_init(%struct.hfi1_devdata* %82, i32 1)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @dd_dev_err(%struct.hfi1_devdata* %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  br label %95

91:                                               ; preds = %79
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @dd_dev_info(%struct.hfi1_devdata* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %44, %29, %11
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.hfi1_devdata* @hfi1_lookup(i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @shutdown_led_override(%struct.hfi1_pportdata*) #1

declare dso_local i32 @sdma_exit(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_reset_cpu_counters(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_init(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
