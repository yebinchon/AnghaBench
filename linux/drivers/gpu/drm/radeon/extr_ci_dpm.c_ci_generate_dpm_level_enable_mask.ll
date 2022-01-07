; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_generate_dpm_level_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_generate_dpm_level_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.ci_power_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @ci_generate_dpm_level_enable_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_generate_dpm_level_enable_mask(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %12 = call i32 @ci_trim_dpm_states(%struct.radeon_device* %10, %struct.radeon_ps* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %19 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = call i8* @ci_get_dpm_level_enable_mask_value(i32* %20)
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i8* %21, i8** %24, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i8* @ci_get_dpm_level_enable_mask_value(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %34 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %38 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %40 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %17
  %44 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %45 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %52 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -2
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %59 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i8* @ci_get_dpm_level_enable_mask_value(i32* %60)
  %62 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %63 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_trim_dpm_states(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i8* @ci_get_dpm_level_enable_mask_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
