; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_display_gap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_display_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@DISP1_GAP_MCHG_MASK = common dso_local global i32 0, align 4
@DISP2_GAP_MCHG_MASK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_VBLANK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_program_display_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_program_display_gap(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %5 = call i32 @RREG32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @DISP1_GAP_MCHG_MASK, align 4
  %7 = load i32, i32* @DISP2_GAP_MCHG_MASK, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK, align 4
  %21 = call i32 @DISP1_GAP_MCHG(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %25 = call i32 @DISP2_GAP_MCHG(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %1
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %38 = call i32 @DISP1_GAP_MCHG(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK, align 4
  %42 = call i32 @DISP2_GAP_MCHG(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %28
  %46 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %47 = call i32 @DISP1_GAP_MCHG(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %51 = call i32 @DISP2_GAP_MCHG(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DISP1_GAP_MCHG(i32) #1

declare dso_local i32 @DISP2_GAP_MCHG(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
