; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_force_mc_use_s0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_force_mc_use_s0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@MC_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_CG_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_CONFIG = common dso_local global i32 0, align 4
@MC_CG_CONFIG = common dso_local global i32 0, align 4
@MC_SEQ_CG = common dso_local global i32 0, align 4
@MC_CG_SEQ_YCLK_SUSPEND = common dso_local global i32 0, align 4
@MC_CG_SEQ_DRAMCONF_S0 = common dso_local global i32 0, align 4
@MC_SEQ_STATUS_M = common dso_local global i32 0, align 4
@PMG_PWRSTATE = common dso_local global i32 0, align 4
@CG_SEQ_REQ_MASK = common dso_local global i32 0, align 4
@MC_CG_SEQ_YCLK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @cypress_force_mc_use_s0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_force_mc_use_s0(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %10 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %9)
  store %struct.rv7xx_ps* %10, %struct.rv7xx_ps** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @cypress_copy_ac_timing_from_s1_to_s0(%struct.radeon_device* %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @radeon_mc_wait_for_idle(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_CYPRESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_HEMLOCK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @MC_CONFIG_MCD, align 4
  %28 = call i32 @WREG32(i32 %27, i32 15)
  %29 = load i32, i32* @MC_CG_CONFIG_MCD, align 4
  %30 = call i32 @WREG32(i32 %29, i32 15)
  br label %36

31:                                               ; preds = %20
  %32 = load i32, i32* @MC_CONFIG, align 4
  %33 = call i32 @WREG32(i32 %32, i32 15)
  %34 = load i32, i32* @MC_CG_CONFIG, align 4
  %35 = call i32 @WREG32(i32 %34, i32 15)
  br label %36

36:                                               ; preds = %31, %26
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %44, i32 %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %37

50:                                               ; preds = %37
  %51 = load i32, i32* @MC_SEQ_CG, align 4
  %52 = load i32, i32* @MC_CG_SEQ_YCLK_SUSPEND, align 4
  %53 = call i32 @WREG32(i32 %51, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i32, i32* @MC_CG_SEQ_YCLK_SUSPEND, align 4
  %56 = call i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device* %54, i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %59 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %57, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @MC_CG_SEQ_DRAMCONF_S0, align 4
  %64 = call i32 @CG_SEQ_REQ(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @SEQ_CG_RESP(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @MC_SEQ_CG, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %87, %50
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32, i32* @MC_SEQ_STATUS_M, align 4
  %80 = call i32 @RREG32(i32 %79)
  %81 = load i32, i32* @PMG_PWRSTATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %90

85:                                               ; preds = %78
  %86 = call i32 @udelay(i32 1)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %72

90:                                               ; preds = %84, %72
  %91 = load i32, i32* @CG_SEQ_REQ_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @MC_CG_SEQ_YCLK_RESUME, align 4
  %96 = call i32 @CG_SEQ_REQ(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @MC_SEQ_CG, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load i32, i32* @MC_CG_SEQ_YCLK_RESUME, align 4
  %104 = call i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device* %102, i32 %103)
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @cypress_copy_ac_timing_from_s1_to_s0(%struct.radeon_device*) #1

declare dso_local i32 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_wait_for_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i32) #1

declare dso_local i32 @CG_SEQ_REQ(i32) #1

declare dso_local i32 @SEQ_CG_RESP(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
