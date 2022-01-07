; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_ext_tmds_info_from_combios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_ext_tmds_info_from_combios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder_ext_tmds = type { i32, i32*, i32 }
%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@DDC_MONID = common dso_local global i32 0, align 4
@DVO_SIL164 = common dso_local global i32 0, align 4
@COMBIOS_EXT_TMDS_INFO_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"External TMDS Table revision: %d\0A\00", align 1
@DDC_LCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"No valid Ext TMDS info found in BIOS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_legacy_get_ext_tmds_info_from_combios(%struct.radeon_encoder* %0, %struct.radeon_encoder_ext_tmds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_i2c_bus_rec, align 4
  %12 = alloca %struct.radeon_i2c_bus_rec, align 4
  %13 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %4, align 8
  store %struct.radeon_encoder_ext_tmds* %1, %struct.radeon_encoder_ext_tmds** %5, align 8
  %14 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %7, align 8
  %21 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RADEON_IS_IGP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %2
  %30 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %31 = load i32, i32* @DDC_MONID, align 4
  %32 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %30, i32 %31, i32 0, i32 0)
  %33 = bitcast %struct.radeon_i2c_bus_rec* %12 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i64, i64 } %32, 0
  store i64 %35, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i64, i64 } %32, 1
  store i64 %37, i64* %36, align 4
  %38 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  %39 = bitcast %struct.radeon_i2c_bus_rec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %41 = call i8* @radeon_i2c_lookup(%struct.radeon_device* %40, %struct.radeon_i2c_bus_rec* %11)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* @DVO_SIL164, align 4
  %46 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %48, i32 0, i32 0
  store i32 56, i32* %49, align 8
  br label %103

50:                                               ; preds = %2
  %51 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %52 = load i32, i32* @COMBIOS_EXT_TMDS_INFO_TABLE, align 4
  %53 = call i64 @combios_get_table_offset(%struct.drm_device* %51, i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = call i8* @RBIOS8(i64 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 4
  %63 = add nsw i64 %62, 2
  %64 = call i8* @RBIOS8(i64 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 4
  %74 = add nsw i64 %73, 3
  %75 = call i8* @RBIOS8(i64 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DDC_LCD, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 3
  store i32 160, i32* %84, align 4
  br label %96

85:                                               ; preds = %56
  %86 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %86, i32 %87, i32 0, i32 0)
  %89 = bitcast %struct.radeon_i2c_bus_rec* %13 to { i64, i64 }*
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 0
  %91 = extractvalue { i64, i64 } %88, 0
  store i64 %91, i64* %90, align 4
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 1
  %93 = extractvalue { i64, i64 } %88, 1
  store i64 %93, i64* %92, align 4
  %94 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  %95 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 16, i1 false)
  br label %96

96:                                               ; preds = %85, %80
  %97 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %98 = call i8* @radeon_i2c_lookup(%struct.radeon_device* %97, %struct.radeon_i2c_bus_rec* %11)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %96, %50
  br label %103

103:                                              ; preds = %102, %29
  %104 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %5, align 8
  %105 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %111

110:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %108
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @radeon_i2c_lookup(%struct.radeon_device*, %struct.radeon_i2c_bus_rec*) #1

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i8* @RBIOS8(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
