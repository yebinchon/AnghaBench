; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_uvd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_setup_uvd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.trinity_power_info = type { i64, i64 }

@CG_MISC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @trinity_setup_uvd_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_setup_uvd_clocks(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.trinity_power_info*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %9)
  store %struct.trinity_power_info* %10, %struct.trinity_power_info** %7, align 8
  %11 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %12 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = call i32 @trinity_gfx_powergating_enable(%struct.radeon_device* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %20 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %25 = call i64 @trinity_uvd_clocks_zero(%struct.radeon_ps* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %29 = call i64 @trinity_uvd_clocks_zero(%struct.radeon_ps* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = call i32 @trinity_setup_uvd_dpm_interval(%struct.radeon_device* %32, i32 0)
  br label %65

34:                                               ; preds = %27, %23
  %35 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %36 = call i64 @trinity_uvd_clocks_zero(%struct.radeon_ps* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %41 = call i32 @trinity_setup_uvd_clock_table(%struct.radeon_device* %39, %struct.radeon_ps* %40)
  %42 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %43 = call i64 @trinity_uvd_clocks_zero(%struct.radeon_ps* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i32, i32* @CG_MISC_REG, align 4
  %47 = call i32 @RREG32(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, -3
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @CG_MISC_REG, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %53, i32 %56, i32 %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %62 = call i32 @trinity_setup_uvd_dpm_interval(%struct.radeon_device* %61, i32 3000)
  br label %63

63:                                               ; preds = %45, %38
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %67 = call i32 @trinity_uvd_dpm_config(%struct.radeon_device* %66)
  br label %87

68:                                               ; preds = %18
  %69 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %70 = call i64 @trinity_uvd_clocks_zero(%struct.radeon_ps* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %74 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %75 = call i64 @trinity_uvd_clocks_equal(%struct.radeon_ps* %73, %struct.radeon_ps* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %68
  br label %95

78:                                               ; preds = %72
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %81 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %79, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %65
  %88 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %89 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %94 = call i32 @trinity_gfx_powergating_enable(%struct.radeon_device* %93, i32 1)
  br label %95

95:                                               ; preds = %77, %92, %87
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_gfx_powergating_enable(%struct.radeon_device*, i32) #1

declare dso_local i64 @trinity_uvd_clocks_zero(%struct.radeon_ps*) #1

declare dso_local i32 @trinity_setup_uvd_dpm_interval(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_setup_uvd_clock_table(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @trinity_uvd_dpm_config(%struct.radeon_device*) #1

declare dso_local i64 @trinity_uvd_clocks_equal(%struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
