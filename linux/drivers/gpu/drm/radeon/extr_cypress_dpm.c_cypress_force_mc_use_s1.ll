; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_force_mc_use_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_force_mc_use_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MC_SEQ_STATUS_M = common dso_local global i32 0, align 4
@PMG_PWRSTATE = common dso_local global i32 0, align 4
@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@MC_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_CG_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_CONFIG = common dso_local global i32 0, align 4
@MC_CG_CONFIG = common dso_local global i32 0, align 4
@MC_SEQ_CG = common dso_local global i32 0, align 4
@MC_CG_SEQ_YCLK_SUSPEND = common dso_local global i32 0, align 4
@MC_CG_SEQ_DRAMCONF_S1 = common dso_local global i32 0, align 4
@CG_SEQ_REQ_MASK = common dso_local global i32 0, align 4
@MC_CG_SEQ_YCLK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @cypress_force_mc_use_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_force_mc_use_s1(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
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
  %11 = load i32, i32* @MC_SEQ_STATUS_M, align 4
  %12 = call i32 @RREG32(i32 %11)
  %13 = load i32, i32* @PMG_PWRSTATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %116

17:                                               ; preds = %2
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %20 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @radeon_atom_set_ac_timing(%struct.radeon_device* %18, i32 %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @radeon_mc_wait_for_idle(%struct.radeon_device* %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_CYPRESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %17
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_HEMLOCK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %17
  %38 = load i32, i32* @MC_CONFIG_MCD, align 4
  %39 = call i32 @WREG32(i32 %38, i32 15)
  %40 = load i32, i32* @MC_CG_CONFIG_MCD, align 4
  %41 = call i32 @WREG32(i32 %40, i32 15)
  br label %47

42:                                               ; preds = %31
  %43 = load i32, i32* @MC_CONFIG, align 4
  %44 = call i32 @WREG32(i32 %43, i32 15)
  %45 = load i32, i32* @MC_CG_CONFIG, align 4
  %46 = call i32 @WREG32(i32 %45, i32 15)
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %55, i32 %56)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load i32, i32* @MC_SEQ_CG, align 4
  %63 = load i32, i32* @MC_CG_SEQ_YCLK_SUSPEND, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = load i32, i32* @MC_CG_SEQ_YCLK_SUSPEND, align 4
  %67 = call i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device* %65, i32 %66)
  %68 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %69 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %70 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cypress_get_strobe_mode_settings(%struct.radeon_device* %68, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @MC_CG_SEQ_DRAMCONF_S1, align 4
  %75 = call i32 @CG_SEQ_REQ(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SEQ_CG_RESP(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @MC_SEQ_CG, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %98, %61
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load i32, i32* @MC_SEQ_STATUS_M, align 4
  %91 = call i32 @RREG32(i32 %90)
  %92 = load i32, i32* @PMG_PWRSTATE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %101

96:                                               ; preds = %89
  %97 = call i32 @udelay(i32 1)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %83

101:                                              ; preds = %95, %83
  %102 = load i32, i32* @CG_SEQ_REQ_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @MC_CG_SEQ_YCLK_RESUME, align 4
  %107 = call i32 @CG_SEQ_REQ(i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @MC_SEQ_CG, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @WREG32(i32 %110, i32 %111)
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = load i32, i32* @MC_CG_SEQ_YCLK_RESUME, align 4
  %115 = call i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device* %113, i32 %114)
  br label %116

116:                                              ; preds = %101, %16
  ret void
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_atom_set_ac_timing(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_wait_for_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_wait_for_mc_sequencer(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_get_strobe_mode_settings(%struct.radeon_device*, i32) #1

declare dso_local i32 @CG_SEQ_REQ(i32) #1

declare dso_local i32 @SEQ_CG_RESP(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
