; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.trinity_power_info = type { %struct.radeon_ps }
%struct.radeon_ps = type { i32 }
%struct.trinity_ps = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trinity_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trinity_power_info*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.trinity_ps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %11)
  store %struct.trinity_power_info* %12, %struct.trinity_power_info** %6, align 8
  %13 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %13, i32 0, i32 0
  store %struct.radeon_ps* %14, %struct.radeon_ps** %7, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %16 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %15)
  store %struct.trinity_ps* %16, %struct.trinity_ps** %8, align 8
  %17 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  %18 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %35 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  %36 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @trinity_dpm_n_levels_disabled(%struct.radeon_device* %34, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %33
  br label %64

45:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  %49 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %54 = call i32 @trinity_dpm_n_levels_disabled(%struct.radeon_device* %53, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %46

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %57, %42, %26, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @trinity_dpm_n_levels_disabled(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
