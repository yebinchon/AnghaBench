; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_output_stepping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_output_stepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rv6xx_sclk_stepping = type { i32, i32 }
%struct.rv6xx_power_info = type { i32, i32 }

@R600_SPLLSTEPTIME_DFLT = common dso_local global i32 0, align 4
@R600_SPLLSTEPUNIT_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, %struct.rv6xx_sclk_stepping*)* @rv6xx_output_stepping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_output_stepping(%struct.radeon_device* %0, i32 %1, %struct.rv6xx_sclk_stepping* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rv6xx_sclk_stepping*, align 8
  %7 = alloca %struct.rv6xx_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rv6xx_sclk_stepping* %2, %struct.rv6xx_sclk_stepping** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device* %13)
  store %struct.rv6xx_power_info* %14, %struct.rv6xx_power_info** %7, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = load i32, i32* @R600_SPLLSTEPTIME_DFLT, align 4
  %22 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %7, align 8
  %23 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32, i32* @R600_SPLLSTEPUNIT_DFLT, align 4
  %27 = call i32 @rv6xx_scale_count_given_unit(%struct.radeon_device* %20, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @r600_engine_clock_entry_enable(%struct.radeon_device* %28, i32 %29, i32 1)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @r600_engine_clock_entry_enable_pulse_skipping(%struct.radeon_device* %31, i32 %32, i32 0)
  %34 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %35 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device* %39, i32 %40, i32 0)
  br label %64

42:                                               ; preds = %3
  %43 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %44 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 2
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %11, align 4
  %48 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %49 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 2
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device* %54, i32 %55, i32 1)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @r600_engine_clock_entry_set_post_divider(%struct.radeon_device* %57, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %42, %38
  %65 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %66 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %7, align 8
  %69 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  %74 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %7, align 8
  %75 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %73, %76
  store i32 %77, i32* %9, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.rv6xx_power_info*, %struct.rv6xx_power_info** %7, align 8
  %81 = getelementptr inbounds %struct.rv6xx_power_info, %struct.rv6xx_power_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @r600_engine_clock_entry_set_reference_divider(%struct.radeon_device* %78, i32 %79, i32 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @r600_engine_clock_entry_set_feedback_divider(%struct.radeon_device* %85, i32 %86, i32 %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @r600_engine_clock_entry_set_step_time(%struct.radeon_device* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local %struct.rv6xx_power_info* @rv6xx_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv6xx_scale_count_given_unit(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable_pulse_skipping(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_enable_post_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_post_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_reference_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_feedback_divider(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_engine_clock_entry_set_step_time(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
