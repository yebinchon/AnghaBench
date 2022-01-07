; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_encoders.c_amdgpu_atombios_encoder_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_encoder = type { i32, i32, %struct.amdgpu_encoder_atom_dig*, %struct.drm_encoder }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLOFF = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_encoder_set_backlight_level(%struct.amdgpu_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.amdgpu_encoder* %0, %struct.amdgpu_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %9, i32 0, i32 3
  store %struct.drm_encoder* %10, %struct.drm_encoder** %5, align 8
  %11 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %7, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %34, i32 0, i32 2
  %36 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %35, align 8
  %37 = icmp ne %struct.amdgpu_encoder_atom_dig* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %39, i32 0, i32 2
  %41 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %40, align 8
  store %struct.amdgpu_encoder_atom_dig* %41, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %44 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %46 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @amdgpu_atombios_encoder_set_backlight_level_to_reg(%struct.amdgpu_device* %45, i32 %48)
  %50 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %70 [
    i32 131, label %53
    i32 132, label %53
    i32 130, label %53
    i32 129, label %53
    i32 128, label %53
  ]

53:                                               ; preds = %38, %38, %38, %38, %38
  %54 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %55 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %60 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLOFF, align 4
  %61 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %59, i32 %60, i32 0, i32 0)
  br label %69

62:                                               ; preds = %53
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %64 = load i32, i32* @ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL, align 4
  %65 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %63, i32 %64, i32 0, i32 0)
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %67 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLON, align 4
  %68 = call i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder* %66, i32 %67, i32 0, i32 0)
  br label %69

69:                                               ; preds = %62, %58
  br label %71

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %25, %71, %33, %26
  ret void
}

declare dso_local i32 @amdgpu_atombios_encoder_set_backlight_level_to_reg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_atombios_encoder_setup_dig_transmitter(%struct.drm_encoder*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
