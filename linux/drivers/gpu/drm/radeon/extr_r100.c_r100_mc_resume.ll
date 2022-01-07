; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.r100_mc_save = type { i32, i32, i32, i32 }

@R_00023C_DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@R_00033C_CRTC2_DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@R_0003C2_GENMO_WT = common dso_local global i32 0, align 4
@R_000054_CRTC_EXT_CNTL = common dso_local global i32 0, align 4
@R_000050_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@R_0003F8_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_mc_resume(%struct.radeon_device* %0, %struct.r100_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.r100_mc_save*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.r100_mc_save* %1, %struct.r100_mc_save** %4, align 8
  %5 = load i32, i32* @R_00023C_DISPLAY_BASE_ADDR, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WREG32(i32 %5, i32 %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @R_00033C_CRTC2_DISPLAY_BASE_ADDR, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WREG32(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @R_0003C2_GENMO_WT, align 4
  %26 = load %struct.r100_mc_save*, %struct.r100_mc_save** %4, align 8
  %27 = getelementptr inbounds %struct.r100_mc_save, %struct.r100_mc_save* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WREG8(i32 %25, i32 %28)
  %30 = load i32, i32* @R_000054_CRTC_EXT_CNTL, align 4
  %31 = load %struct.r100_mc_save*, %struct.r100_mc_save** %4, align 8
  %32 = getelementptr inbounds %struct.r100_mc_save, %struct.r100_mc_save* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WREG32(i32 %30, i32 %33)
  %35 = load i32, i32* @R_000050_CRTC_GEN_CNTL, align 4
  %36 = load %struct.r100_mc_save*, %struct.r100_mc_save** %4, align 8
  %37 = getelementptr inbounds %struct.r100_mc_save, %struct.r100_mc_save* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @WREG32(i32 %35, i32 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %24
  %47 = load i32, i32* @R_0003F8_CRTC2_GEN_CNTL, align 4
  %48 = load %struct.r100_mc_save*, %struct.r100_mc_save** %4, align 8
  %49 = getelementptr inbounds %struct.r100_mc_save, %struct.r100_mc_save* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WREG32(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
