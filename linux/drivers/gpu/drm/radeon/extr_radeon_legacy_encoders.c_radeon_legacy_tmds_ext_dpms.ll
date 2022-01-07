; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_ext_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_tmds_ext_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }

@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_FP2_BLANK_EN = common dso_local global i32 0, align 4
@RADEON_FP2_ON = common dso_local global i32 0, align 4
@RADEON_FP2_DVO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_legacy_tmds_ext_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_tmds_ext_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %6, align 8
  %14 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %38 [
    i32 130, label %18
    i32 129, label %28
    i32 128, label %28
    i32 131, label %28
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @RADEON_FP2_BLANK_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @RADEON_FP2_ON, align 4
  %24 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %38

28:                                               ; preds = %2, %2, %2
  %29 = load i32, i32* @RADEON_FP2_BLANK_EN, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @RADEON_FP2_ON, align 4
  %33 = load i32, i32* @RADEON_FP2_DVO_EN, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %2, %28, %18
  %39 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 130
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %47, i32 %51)
  br label %60

53:                                               ; preds = %38
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 130
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = call i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder* %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
