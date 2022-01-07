; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32* }
%struct.radeon_connector = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_audio_detect(%struct.drm_connector* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %11 = alloca %struct.radeon_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %9, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %21 = call i32 @radeon_audio_chipset_supported(%struct.radeon_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %109

24:                                               ; preds = %3
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %26 = call i32 @radeon_encoder_is_digital(%struct.drm_encoder* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %109

29:                                               ; preds = %24
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %30, i32 0, i32 1
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %31, align 8
  store %struct.radeon_encoder_atom_dig* %32, %struct.radeon_encoder_atom_dig** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @connector_status_connected, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %101

36:                                               ; preds = %29
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %43)
  store %struct.radeon_connector* %44, %struct.radeon_connector** %11, align 8
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %11, align 8
  %46 = call i64 @radeon_dp_getsinktype(%struct.radeon_connector* %45)
  %47 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %62 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %49
  br label %71

64:                                               ; preds = %36
  %65 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %64, %63
  %72 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %73 = call i32 @radeon_connector_edid(%struct.drm_connector* %72)
  %74 = call i64 @drm_detect_monitor_audio(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %78 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %83 = call i32* @radeon_audio_get_pin(%struct.drm_encoder* %82)
  %84 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %85 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %88 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %89 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @radeon_audio_enable(%struct.radeon_device* %87, i32* %90, i32 15)
  br label %100

92:                                               ; preds = %71
  %93 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %94 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %95 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @radeon_audio_enable(%struct.radeon_device* %93, i32* %96, i32 0)
  %98 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %99 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %92, %86
  br label %109

101:                                              ; preds = %29
  %102 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %103 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %104 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @radeon_audio_enable(%struct.radeon_device* %102, i32* %105, i32 0)
  %107 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  %108 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %23, %28, %101, %100
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_chipset_supported(%struct.radeon_device*) #1

declare dso_local i32 @radeon_encoder_is_digital(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @radeon_dp_getsinktype(%struct.radeon_connector*) #1

declare dso_local i64 @drm_detect_monitor_audio(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32* @radeon_audio_get_pin(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_audio_enable(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
