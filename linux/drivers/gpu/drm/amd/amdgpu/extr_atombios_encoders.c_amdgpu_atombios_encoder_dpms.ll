; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"encoder dpms %d to mode %d, devices %08x, active_devices %08x\0A\00", align 1
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_encoder_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %6)
  store %struct.amdgpu_encoder* %7, %struct.amdgpu_encoder** %5, align 8
  %8 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %9 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %55 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
    i32 132, label %33
    i32 133, label %44
  ]

22:                                               ; preds = %2, %2, %2, %2
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %32 [
    i32 136, label %24
    i32 135, label %28
    i32 134, label %28
    i32 137, label %28
  ]

24:                                               ; preds = %22
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %26 = load i32, i32* @ATOM_ENABLE, align 4
  %27 = call i32 @amdgpu_atombios_encoder_setup_dig(%struct.drm_encoder* %25, i32 %26)
  br label %32

28:                                               ; preds = %22, %22, %22
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %30 = load i32, i32* @ATOM_DISABLE, align 4
  %31 = call i32 @amdgpu_atombios_encoder_setup_dig(%struct.drm_encoder* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %28, %24
  br label %56

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %43 [
    i32 136, label %35
    i32 135, label %39
    i32 134, label %39
    i32 137, label %39
  ]

35:                                               ; preds = %33
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %37 = load i32, i32* @ATOM_ENABLE, align 4
  %38 = call i32 @amdgpu_atombios_encoder_setup_dvo(%struct.drm_encoder* %36, i32 %37)
  br label %43

39:                                               ; preds = %33, %33, %33
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %41 = load i32, i32* @ATOM_DISABLE, align 4
  %42 = call i32 @amdgpu_atombios_encoder_setup_dvo(%struct.drm_encoder* %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %39, %35
  br label %56

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %54 [
    i32 136, label %46
    i32 135, label %50
    i32 134, label %50
    i32 137, label %50
  ]

46:                                               ; preds = %44
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %48 = load i32, i32* @ATOM_ENABLE, align 4
  %49 = call i32 @amdgpu_atombios_encoder_setup_dac(%struct.drm_encoder* %47, i32 %48)
  br label %54

50:                                               ; preds = %44, %44, %44
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %52 = load i32, i32* @ATOM_DISABLE, align 4
  %53 = call i32 @amdgpu_atombios_encoder_setup_dac(%struct.drm_encoder* %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %50, %46
  br label %56

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %55, %54, %43, %32
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dig(%struct.drm_encoder*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dvo(%struct.drm_encoder*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dac(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
