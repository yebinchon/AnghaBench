; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_get_sleep_divider_id_from_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_get_sleep_divider_id_from_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { i32 }

@SUMO_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@SUMO_MAX_DEEPSLEEP_DIVIDER_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sumo_power_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %12)
  store %struct.sumo_power_info* %13, %struct.sumo_power_info** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SUMO_MINIMUM_ENGINE_CLOCK, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @SUMO_MINIMUM_ENGINE_CLOCK, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %53

27:                                               ; preds = %21
  %28 = load %struct.sumo_power_info*, %struct.sumo_power_info** %8, align 8
  %29 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %53

33:                                               ; preds = %27
  %34 = load i64, i64* @SUMO_MAX_DEEPSLEEP_DIVIDER_ID, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %48, %33
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @sumo_get_sleep_divider_from_id(i64 %37)
  %39 = sdiv i64 %36, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %35
  br label %51

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %9, align 8
  br label %35

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %32, %26
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @sumo_get_sleep_divider_from_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
