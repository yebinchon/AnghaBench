; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_current_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_current_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_dpm_context }
%struct.smu_dpm_context = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BALANCED = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4
@SMU_STATE_CLASSIFICATION_FLAG_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_INTERNAL_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_get_current_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_current_power_state(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_dpm_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %6 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 1
  store %struct.smu_dpm_context* %7, %struct.smu_dpm_context** %5, align 8
  %8 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %9 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %14 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %22 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %25 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %36 [
    i32 129, label %30
    i32 130, label %32
    i32 128, label %34
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %20
  %33 = load i32, i32* @POWER_STATE_TYPE_BALANCED, align 4
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %20
  %35 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %20
  %37 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %38 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SMU_STATE_CLASSIFICATION_FLAG_BOOT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @POWER_STATE_TYPE_INTERNAL_BOOT, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %34, %32, %30
  %52 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %53 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
