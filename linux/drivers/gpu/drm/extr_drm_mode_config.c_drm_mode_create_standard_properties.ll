; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_config.c_drm_mode_create_standard_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_config.c_drm_mode_create_standard_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@drm_plane_type_enum_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_PROP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"SRC_X\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"SRC_Y\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SRC_W\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SRC_H\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CRTC_X\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"CRTC_Y\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CRTC_W\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CRTC_H\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FB_ID\00", align 1
@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"IN_FENCE_FD\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"OUT_FENCE_PTR\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"CRTC_ID\00", align 1
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"FB_DAMAGE_CLIPS\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"MODE_ID\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"VRR_ENABLED\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"DEGAMMA_LUT\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"DEGAMMA_LUT_SIZE\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"CTM\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"GAMMA_LUT\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"GAMMA_LUT_SIZE\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"IN_FORMATS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @drm_mode_create_standard_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_create_standard_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_property*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call i32 @drm_connector_create_standard_properties(%struct.drm_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %336

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %15 = load i32, i32* @drm_plane_type_enum_list, align 4
  %16 = load i32, i32* @drm_plane_type_enum_list, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  store %struct.drm_property* %18, %struct.drm_property** %4, align 8
  %19 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %20 = icmp ne %struct.drm_property* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %336

24:                                               ; preds = %12
  %25 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 22
  store %struct.drm_property* %25, %struct.drm_property** %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %31)
  store %struct.drm_property* %32, %struct.drm_property** %4, align 8
  %33 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %34 = icmp ne %struct.drm_property* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %336

38:                                               ; preds = %24
  %39 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 21
  store %struct.drm_property* %39, %struct.drm_property** %42, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %45 = load i32, i32* @UINT_MAX, align 4
  %46 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %43, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %45)
  store %struct.drm_property* %46, %struct.drm_property** %4, align 8
  %47 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %48 = icmp ne %struct.drm_property* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %336

52:                                               ; preds = %38
  %53 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 20
  store %struct.drm_property* %53, %struct.drm_property** %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %59 = load i32, i32* @UINT_MAX, align 4
  %60 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %59)
  store %struct.drm_property* %60, %struct.drm_property** %4, align 8
  %61 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %62 = icmp ne %struct.drm_property* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %336

66:                                               ; preds = %52
  %67 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 19
  store %struct.drm_property* %67, %struct.drm_property** %70, align 8
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %73 = load i32, i32* @UINT_MAX, align 4
  %74 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %71, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %73)
  store %struct.drm_property* %74, %struct.drm_property** %4, align 8
  %75 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %76 = icmp ne %struct.drm_property* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %336

80:                                               ; preds = %66
  %81 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 18
  store %struct.drm_property* %81, %struct.drm_property** %84, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %86 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %87 = load i32, i32* @INT_MIN, align 4
  %88 = load i32, i32* @INT_MAX, align 4
  %89 = call %struct.drm_property* @drm_property_create_signed_range(%struct.drm_device* %85, i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %88)
  store %struct.drm_property* %89, %struct.drm_property** %4, align 8
  %90 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %91 = icmp ne %struct.drm_property* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %336

95:                                               ; preds = %80
  %96 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 17
  store %struct.drm_property* %96, %struct.drm_property** %99, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %101 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %102 = load i32, i32* @INT_MIN, align 4
  %103 = load i32, i32* @INT_MAX, align 4
  %104 = call %struct.drm_property* @drm_property_create_signed_range(%struct.drm_device* %100, i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %103)
  store %struct.drm_property* %104, %struct.drm_property** %4, align 8
  %105 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %106 = icmp ne %struct.drm_property* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %95
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %336

110:                                              ; preds = %95
  %111 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %112 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 16
  store %struct.drm_property* %111, %struct.drm_property** %114, align 8
  %115 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %116 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %117 = load i32, i32* @INT_MAX, align 4
  %118 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %115, i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %117)
  store %struct.drm_property* %118, %struct.drm_property** %4, align 8
  %119 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %120 = icmp ne %struct.drm_property* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %336

124:                                              ; preds = %110
  %125 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %126 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 15
  store %struct.drm_property* %125, %struct.drm_property** %128, align 8
  %129 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %130 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %131 = load i32, i32* @INT_MAX, align 4
  %132 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %129, i32 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %131)
  store %struct.drm_property* %132, %struct.drm_property** %4, align 8
  %133 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %134 = icmp ne %struct.drm_property* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %124
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %336

138:                                              ; preds = %124
  %139 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %140 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %141 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 14
  store %struct.drm_property* %139, %struct.drm_property** %142, align 8
  %143 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %144 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %145 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %146 = call %struct.drm_property* @drm_property_create_object(%struct.drm_device* %143, i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  store %struct.drm_property* %146, %struct.drm_property** %4, align 8
  %147 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %148 = icmp ne %struct.drm_property* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %138
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %336

152:                                              ; preds = %138
  %153 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %154 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %155 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 13
  store %struct.drm_property* %153, %struct.drm_property** %156, align 8
  %157 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %158 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %159 = load i32, i32* @INT_MAX, align 4
  %160 = call %struct.drm_property* @drm_property_create_signed_range(%struct.drm_device* %157, i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 %159)
  store %struct.drm_property* %160, %struct.drm_property** %4, align 8
  %161 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %162 = icmp ne %struct.drm_property* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %152
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %336

166:                                              ; preds = %152
  %167 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %168 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %169 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 12
  store %struct.drm_property* %167, %struct.drm_property** %170, align 8
  %171 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %172 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %173 = load i32, i32* @U64_MAX, align 4
  %174 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %171, i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %173)
  store %struct.drm_property* %174, %struct.drm_property** %4, align 8
  %175 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %176 = icmp ne %struct.drm_property* %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %166
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %336

180:                                              ; preds = %166
  %181 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %182 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %183 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 11
  store %struct.drm_property* %181, %struct.drm_property** %184, align 8
  %185 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %186 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %187 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %188 = call %struct.drm_property* @drm_property_create_object(%struct.drm_device* %185, i32 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %187)
  store %struct.drm_property* %188, %struct.drm_property** %4, align 8
  %189 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %190 = icmp ne %struct.drm_property* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %180
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %336

194:                                              ; preds = %180
  %195 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %196 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %197 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 10
  store %struct.drm_property* %195, %struct.drm_property** %198, align 8
  %199 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %200 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %201 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %202 = or i32 %200, %201
  %203 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %199, i32 %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store %struct.drm_property* %203, %struct.drm_property** %4, align 8
  %204 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %205 = icmp ne %struct.drm_property* %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %194
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %336

209:                                              ; preds = %194
  %210 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %211 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %212 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 9
  store %struct.drm_property* %210, %struct.drm_property** %213, align 8
  %214 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %215 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %216 = call %struct.drm_property* @drm_property_create_bool(%struct.drm_device* %214, i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  store %struct.drm_property* %216, %struct.drm_property** %4, align 8
  %217 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %218 = icmp ne %struct.drm_property* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %209
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %336

222:                                              ; preds = %209
  %223 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %224 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %225 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 8
  store %struct.drm_property* %223, %struct.drm_property** %226, align 8
  %227 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %228 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %229 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %230 = or i32 %228, %229
  %231 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %227, i32 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 0)
  store %struct.drm_property* %231, %struct.drm_property** %4, align 8
  %232 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %233 = icmp ne %struct.drm_property* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %222
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %336

237:                                              ; preds = %222
  %238 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %239 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %240 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 7
  store %struct.drm_property* %238, %struct.drm_property** %241, align 8
  %242 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %243 = call %struct.drm_property* @drm_property_create_bool(%struct.drm_device* %242, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  store %struct.drm_property* %243, %struct.drm_property** %4, align 8
  %244 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %245 = icmp ne %struct.drm_property* %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %237
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %336

249:                                              ; preds = %237
  %250 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %251 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %252 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 6
  store %struct.drm_property* %250, %struct.drm_property** %253, align 8
  %254 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %255 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %256 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %254, i32 %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 0)
  store %struct.drm_property* %256, %struct.drm_property** %4, align 8
  %257 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %258 = icmp ne %struct.drm_property* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %249
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %2, align 4
  br label %336

262:                                              ; preds = %249
  %263 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %264 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %265 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 5
  store %struct.drm_property* %263, %struct.drm_property** %266, align 8
  %267 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %268 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %269 = load i32, i32* @UINT_MAX, align 4
  %270 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %267, i32 %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 %269)
  store %struct.drm_property* %270, %struct.drm_property** %4, align 8
  %271 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %272 = icmp ne %struct.drm_property* %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* @ENOMEM, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %2, align 4
  br label %336

276:                                              ; preds = %262
  %277 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %278 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %279 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 4
  store %struct.drm_property* %277, %struct.drm_property** %280, align 8
  %281 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %282 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %283 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %281, i32 %282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 0)
  store %struct.drm_property* %283, %struct.drm_property** %4, align 8
  %284 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %285 = icmp ne %struct.drm_property* %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %276
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %2, align 4
  br label %336

289:                                              ; preds = %276
  %290 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %291 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %292 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 3
  store %struct.drm_property* %290, %struct.drm_property** %293, align 8
  %294 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %295 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %296 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %294, i32 %295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 0)
  store %struct.drm_property* %296, %struct.drm_property** %4, align 8
  %297 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %298 = icmp ne %struct.drm_property* %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %289
  %300 = load i32, i32* @ENOMEM, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %2, align 4
  br label %336

302:                                              ; preds = %289
  %303 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %304 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %305 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 2
  store %struct.drm_property* %303, %struct.drm_property** %306, align 8
  %307 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %308 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %309 = load i32, i32* @UINT_MAX, align 4
  %310 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %307, i32 %308, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 %309)
  store %struct.drm_property* %310, %struct.drm_property** %4, align 8
  %311 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %312 = icmp ne %struct.drm_property* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %302
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %2, align 4
  br label %336

316:                                              ; preds = %302
  %317 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %318 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %319 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  store %struct.drm_property* %317, %struct.drm_property** %320, align 8
  %321 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %322 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %323 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %324 = or i32 %322, %323
  %325 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %321, i32 %324, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 0)
  store %struct.drm_property* %325, %struct.drm_property** %4, align 8
  %326 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %327 = icmp ne %struct.drm_property* %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %316
  %329 = load i32, i32* @ENOMEM, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %2, align 4
  br label %336

331:                                              ; preds = %316
  %332 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %333 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %334 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  store %struct.drm_property* %332, %struct.drm_property** %335, align 8
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %331, %328, %313, %299, %286, %273, %259, %246, %234, %219, %206, %191, %177, %163, %149, %135, %121, %107, %92, %77, %63, %49, %35, %21, %10
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @drm_connector_create_standard_properties(%struct.drm_device*) #1

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.drm_property* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_signed_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_object(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_bool(%struct.drm_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
