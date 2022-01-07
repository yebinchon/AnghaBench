; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_primary_dac_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_primary_dac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_primary_dac = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._COMPASSIONATE_DATA = type { i32, i32 }

@DATA = common dso_local global i32 0, align 4
@CompassionateData = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_primary_dac* @radeon_atombios_get_primary_dac_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_primary_dac*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_mode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct._COMPASSIONATE_DATA*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_encoder_primary_dac*, align 8
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %15 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %4, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %5, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  store %struct.radeon_mode_info* %23, %struct.radeon_mode_info** %6, align 8
  %24 = load i32, i32* @DATA, align 4
  %25 = load i32, i32* @CompassionateData, align 4
  %26 = call i32 @GetIndexIntoMasterTable(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  store %struct.radeon_encoder_primary_dac* null, %struct.radeon_encoder_primary_dac** %14, align 8
  %27 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %28 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @atom_parse_data_header(%struct.TYPE_4__* %29, i32 %30, i32* null, i32* %10, i32* %11, i64* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %1
  %34 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = inttoptr i64 %40 to %struct._COMPASSIONATE_DATA*
  store %struct._COMPASSIONATE_DATA* %41, %struct._COMPASSIONATE_DATA** %9, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.radeon_encoder_primary_dac* @kzalloc(i32 4, i32 %42)
  store %struct.radeon_encoder_primary_dac* %43, %struct.radeon_encoder_primary_dac** %14, align 8
  %44 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %14, align 8
  %45 = icmp ne %struct.radeon_encoder_primary_dac* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store %struct.radeon_encoder_primary_dac* null, %struct.radeon_encoder_primary_dac** %2, align 8
  br label %62

47:                                               ; preds = %33
  %48 = load %struct._COMPASSIONATE_DATA*, %struct._COMPASSIONATE_DATA** %9, align 8
  %49 = getelementptr inbounds %struct._COMPASSIONATE_DATA, %struct._COMPASSIONATE_DATA* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct._COMPASSIONATE_DATA*, %struct._COMPASSIONATE_DATA** %9, align 8
  %52 = getelementptr inbounds %struct._COMPASSIONATE_DATA, %struct._COMPASSIONATE_DATA* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %14, align 8
  %59 = getelementptr inbounds %struct.radeon_encoder_primary_dac, %struct.radeon_encoder_primary_dac* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %47, %1
  %61 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %14, align 8
  store %struct.radeon_encoder_primary_dac* %61, %struct.radeon_encoder_primary_dac** %2, align 8
  br label %62

62:                                               ; preds = %60, %46
  %63 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %2, align 8
  ret %struct.radeon_encoder_primary_dac* %63
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_4__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local %struct.radeon_encoder_primary_dac* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
