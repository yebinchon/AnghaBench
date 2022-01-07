; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { i32, i32, %struct.radeon_encoder_atom_dig*, %struct.drm_encoder }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@LCD1OutputControl = common dso_local global i32 0, align 4
@ATOM_LCD_BLOFF = common dso_local global i32 0, align 4
@ATOM_LCD_BL_BRIGHTNESS_CONTROL = common dso_local global i32 0, align 4
@ATOM_LCD_BLON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLOFF = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_LCD_BLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_set_backlight_level(%struct.radeon_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %11, i32 0, i32 3
  store %struct.drm_encoder* %12, %struct.drm_encoder** %5, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %7, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATOM_BIOS_INFO_BL_CONTROLLED_BY_GPU, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %112

28:                                               ; preds = %2
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %112

35:                                               ; preds = %28
  %36 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %36, i32 0, i32 2
  %38 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %37, align 8
  %39 = icmp ne %struct.radeon_encoder_atom_dig* %38, null
  br i1 %39, label %40, label %112

40:                                               ; preds = %35
  %41 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %41, i32 0, i32 2
  %43 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %42, align 8
  store %struct.radeon_encoder_atom_dig* %43, %struct.radeon_encoder_atom_dig** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %48 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @radeon_atom_set_backlight_level_to_reg(%struct.radeon_device* %47, i32 %50)
  %52 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %110 [
    i32 133, label %55
    i32 132, label %55
    i32 131, label %93
    i32 134, label %93
    i32 130, label %93
    i32 129, label %93
    i32 128, label %93
  ]

55:                                               ; preds = %40, %40
  %56 = load i32, i32* @COMMAND, align 4
  %57 = load i32, i32* @LCD1OutputControl, align 4
  %58 = call i32 @GetIndexIntoMasterTable(i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* @ATOM_LCD_BLOFF, align 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = bitcast %struct.TYPE_4__* %9 to i32*
  %72 = call i32 @atom_execute_table(i32 %69, i32 %70, i32* %71)
  br label %92

73:                                               ; preds = %55
  %74 = load i32, i32* @ATOM_LCD_BL_BRIGHTNESS_CONTROL, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = bitcast %struct.TYPE_4__* %9 to i32*
  %82 = call i32 @atom_execute_table(i32 %79, i32 %80, i32* %81)
  %83 = load i32, i32* @ATOM_LCD_BLON, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = bitcast %struct.TYPE_4__* %9 to i32*
  %91 = call i32 @atom_execute_table(i32 %88, i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %73, %63
  br label %111

93:                                               ; preds = %40, %40, %40, %40, %40
  %94 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %100 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLOFF, align 4
  %101 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %99, i32 %100, i32 0, i32 0)
  br label %109

102:                                              ; preds = %93
  %103 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %104 = load i32, i32* @ATOM_TRANSMITTER_ACTION_BL_BRIGHTNESS_CONTROL, align 4
  %105 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %103, i32 %104, i32 0, i32 0)
  %106 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %107 = load i32, i32* @ATOM_TRANSMITTER_ACTION_LCD_BLON, align 4
  %108 = call i32 @atombios_dig_transmitter_setup(%struct.drm_encoder* %106, i32 %107, i32 0, i32 0)
  br label %109

109:                                              ; preds = %102, %98
  br label %111

110:                                              ; preds = %40
  br label %111

111:                                              ; preds = %110, %109, %92
  br label %112

112:                                              ; preds = %27, %111, %35, %28
  ret void
}

declare dso_local i32 @radeon_atom_set_backlight_level_to_reg(%struct.radeon_device*, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @atombios_dig_transmitter_setup(%struct.drm_encoder*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
