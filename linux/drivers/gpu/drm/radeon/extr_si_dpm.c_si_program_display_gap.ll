; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_display_gap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_display_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@CG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@DISP1_GAP_MASK = common dso_local global i32 0, align 4
@DISP2_GAP_MASK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_VBLANK_OR_WM = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_IGNORE = common dso_local global i32 0, align 4
@DCCG_DISP_SLOW_SELECT_REG = common dso_local global i32 0, align 4
@DCCG_DISP1_SLOW_SELECT_MASK = common dso_local global i32 0, align 4
@DCCG_DISP1_SLOW_SELECT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_program_display_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_display_gap(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %7 = call i32 @RREG32(i32 %6)
  %8 = load i32, i32* @DISP1_GAP_MASK, align 4
  %9 = load i32, i32* @DISP2_GAP_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK_OR_WM, align 4
  %21 = call i32 @DISP1_GAP(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %26 = call i32 @DISP1_GAP(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK_OR_WM, align 4
  %38 = call i32 @DISP2_GAP(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %43 = call i32 @DISP2_GAP(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* @DCCG_DISP_SLOW_SELECT_REG, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @DCCG_DISP1_SLOW_SELECT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @DCCG_DISP1_SLOW_SELECT_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %4, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %46
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %116, label %73

73:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %92, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %95

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %74

95:                                               ; preds = %90, %74
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i32, i32* @DCCG_DISP1_SLOW_SELECT_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @DCCG_DISP1_SLOW_SELECT(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* @DCCG_DISP_SLOW_SELECT_REG, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @WREG32(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %104, %63, %46
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @si_notify_smc_display_change(%struct.radeon_device* %117, i32 %124)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DISP1_GAP(i32) #1

declare dso_local i32 @DISP2_GAP(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @DCCG_DISP1_SLOW_SELECT(i32) #1

declare dso_local i32 @si_notify_smc_display_change(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
