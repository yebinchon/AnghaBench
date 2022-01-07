; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_populate_dml_pipes_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_populate_dml_pipes_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_77__ = type { i64 }
%struct.dc = type { %struct.TYPE_73__*, %struct.TYPE_64__ }
%struct.TYPE_73__ = type { i32, %struct.TYPE_72__* }
%struct.TYPE_72__ = type { {}* }
%struct.TYPE_64__ = type { i64 }
%struct.resource_context = type { %struct.TYPE_57__* }
%struct.TYPE_57__ = type { %struct.TYPE_56__*, %struct.TYPE_50__*, %struct.TYPE_81__, %struct.dc_plane_state*, %struct.TYPE_76__*, %struct.pipe_ctx*, i32, i64, %struct.TYPE_78__ }
%struct.TYPE_56__ = type { %struct.TYPE_55__, %struct.dc_plane_state*, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i64, i64 }
%struct.TYPE_50__ = type { %struct.TYPE_49__, %struct.dc_plane_state* }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64, i64 }
%struct.TYPE_81__ = type { %struct.scaler_data }
%struct.scaler_data = type { %struct.TYPE_67__, %struct.TYPE_63__, %struct.TYPE_46__, %struct.TYPE_83__, %struct.TYPE_82__ }
%struct.TYPE_67__ = type { i32, i32, i32, i32 }
%struct.TYPE_63__ = type { %struct.TYPE_62__, %struct.TYPE_61__, %struct.TYPE_60__, %struct.TYPE_59__ }
%struct.TYPE_62__ = type { i64 }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_60__ = type { i64 }
%struct.TYPE_59__ = type { i64 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_83__ = type { i32, i32, i32 }
%struct.TYPE_82__ = type { i32, i32, i32 }
%struct.dc_plane_state = type { i64, i32, %struct.TYPE_69__, %struct.TYPE_45__, %struct.TYPE_44__, i32 }
%struct.TYPE_69__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_45__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_76__ = type { i32, %struct.dc_crtc_timing, %struct.TYPE_79__, i64 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i64, i32, i32, %struct.TYPE_65__, %struct.TYPE_54__ }
%struct.TYPE_65__ = type { i32, i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_79__ = type { i32, i32 }
%struct.pipe_ctx = type { i32, %struct.pipe_ctx* }
%struct.TYPE_78__ = type { %struct.TYPE_75__* }
%struct.TYPE_75__ = type { i32 }
%struct.TYPE_74__ = type { %struct.TYPE_71__, %struct.TYPE_80__ }
%struct.TYPE_71__ = type { %struct.TYPE_70__, %struct.TYPE_66__, %struct.TYPE_58__, %struct.TYPE_51__ }
%struct.TYPE_70__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_66__ = type { i32, i32, i32, i32 }
%struct.TYPE_58__ = type { double, double, i32, double, double, i8* }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_80__ = type { i32, i32, i32, i8*, i8*, i32, i32 }

@TIMING_3D_FORMAT_HW_FRAME_PACKING = common dso_local global i64 0, align 8
@dm_dp = common dso_local global i8* null, align 8
@dm_edp = common dso_local global i8* null, align 8
@dm_hdmi = common dso_local global i8* null, align 8
@dm_444 = common dso_local global i8* null, align 8
@dm_420 = common dso_local global i8* null, align 8
@dm_s422 = common dso_local global i8* null, align 8
@dm_cur_32bit = common dso_local global i8* null, align 8
@dm_horz = common dso_local global i8* null, align 8
@dm_sw_linear = common dso_local global i32 0, align 4
@dm_64k_tile = common dso_local global i32 0, align 4
@dm_444_32 = common dso_local global i8* null, align 8
@dm_lb_16 = common dso_local global i8* null, align 8
@ROTATION_ANGLE_90 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_270 = common dso_local global i64 0, align 8
@dm_vert = common dso_local global i8* null, align 8
@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@dc_fixpt_one = common dso_local global %struct.TYPE_77__ zeroinitializer, align 8
@dm_420_8 = common dso_local global i8* null, align 8
@dm_420_10 = common dso_local global i8* null, align 8
@dm_444_64 = common dso_local global i8* null, align 8
@dm_444_16 = common dso_local global i8* null, align 8
@dm_444_8 = common dso_local global i8* null, align 8
@dm_n422 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_populate_dml_pipes_from_context(%struct.dc* %0, %struct.resource_context* %1, %struct.TYPE_74__* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.TYPE_74__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_crtc_timing*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pipe_ctx*, align 8
  %13 = alloca %struct.dc_plane_state*, align 8
  %14 = alloca %struct.scaler_data*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.resource_context* %1, %struct.resource_context** %5, align 8
  store %struct.TYPE_74__* %2, %struct.TYPE_74__** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  br label %15

15:                                               ; preds = %60, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.dc*, %struct.dc** %4, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_73__*, %struct.TYPE_73__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %15
  %24 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %25 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %24, i32 0, i32 0
  %26 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_76__*, %struct.TYPE_76__** %30, align 8
  %32 = icmp ne %struct.TYPE_76__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %60

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %60

39:                                               ; preds = %34
  %40 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %41 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_57__*, %struct.TYPE_57__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_76__*, %struct.TYPE_76__** %46, align 8
  %48 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %49 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_57__*, %struct.TYPE_57__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_76__*, %struct.TYPE_76__** %54, align 8
  %56 = call i32 @resource_are_streams_timing_synchronizable(%struct.TYPE_76__* %47, %struct.TYPE_76__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %63

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %37, %33
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %15

63:                                               ; preds = %58, %15
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %1662, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.dc*, %struct.dc** %4, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_73__*, %struct.TYPE_73__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %1665

72:                                               ; preds = %64
  %73 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %74 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %73, i32 0, i32 0
  %75 = load %struct.TYPE_57__*, %struct.TYPE_57__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_76__*, %struct.TYPE_76__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %80, i32 0, i32 1
  store %struct.dc_crtc_timing* %81, %struct.dc_crtc_timing** %10, align 8
  %82 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %83 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %82, i32 0, i32 0
  %84 = load %struct.TYPE_57__*, %struct.TYPE_57__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_76__*, %struct.TYPE_76__** %88, align 8
  %90 = icmp ne %struct.TYPE_76__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %72
  br label %1662

92:                                               ; preds = %72
  %93 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %94 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %93, i32 0, i32 0
  %95 = load %struct.TYPE_57__*, %struct.TYPE_57__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_76__*, %struct.TYPE_76__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %156

104:                                              ; preds = %92
  %105 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %113 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %116 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %120 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  %123 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %124 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = sdiv i32 %126, 2
  %128 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %133, i32 0, i32 1
  store i32 %127, i32* %134, align 4
  %135 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %136 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %135, i32 0, i32 0
  %137 = load %struct.TYPE_57__*, %struct.TYPE_57__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_76__*, %struct.TYPE_76__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @dc_is_dp_signal(i32 %144)
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 36, i32 32
  %149 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %154, i32 0, i32 2
  store i32 %148, i32* %155, align 8
  br label %156

156:                                              ; preds = %104, %92
  %157 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %162, i32 0, i32 3
  store i32 0, i32* %163, align 4
  %164 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %169, i32 0, i32 4
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %177, i32 0, i32 0
  store i32 %171, i32* %178, align 8
  %179 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %180 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %183 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %181, %184
  %186 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %191, i32 0, i32 1
  store i32 %185, i32* %192, align 4
  %193 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %202 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %200, %203
  %205 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %206 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %210 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %208, %211
  %213 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %218, i32 0, i32 2
  store i32 %212, i32* %219, align 8
  %220 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %221 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %224 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %222, %225
  %227 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %232, i32 0, i32 3
  store i32 %226, i32* %233, align 4
  %234 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %243 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %241, %244
  %246 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %247 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = sub nsw i32 %245, %248
  %250 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %251 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 %249, %252
  %254 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %259, i32 0, i32 4
  store i32 %253, i32* %260, align 8
  %261 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %262 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %269, i32 0, i32 5
  store i32 %263, i32* %270, align 4
  %271 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %272 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %279, i32 0, i32 6
  store i32 %273, i32* %280, align 8
  %281 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %282 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %285 = load i32, i32* %7, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %289, i32 0, i32 7
  store i32 %283, i32* %290, align 4
  %291 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %292 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %299, i32 0, i32 8
  store i32 %293, i32* %300, align 8
  %301 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %302 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %301, i32 0, i32 14
  %303 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %310, i32 0, i32 18
  store i32 %304, i32* %311, align 8
  %312 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %313 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %312, i32 0, i32 10
  %314 = load double, double* %313, align 8
  %315 = fdiv double %314, 1.000000e+04
  %316 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %321, i32 0, i32 9
  store double %315, double* %322, align 8
  %323 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %324 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %323, i32 0, i32 11
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @TIMING_3D_FORMAT_HW_FRAME_PACKING, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %338

328:                                              ; preds = %156
  %329 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %334, i32 0, i32 9
  %336 = load double, double* %335, align 8
  %337 = fmul double %336, 2.000000e+00
  store double %337, double* %335, align 8
  br label %338

338:                                              ; preds = %328, %156
  %339 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %340 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %339, i32 0, i32 0
  %341 = load %struct.TYPE_57__*, %struct.TYPE_57__** %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %344, i32 0, i32 8
  %346 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_75__*, %struct.TYPE_75__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %355, i32 0, i32 17
  store i32 %349, i32* %356, align 4
  %357 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %361, i32 0, i32 0
  store i32 4, i32* %362, align 8
  %363 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %364 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %363, i32 0, i32 0
  %365 = load %struct.TYPE_57__*, %struct.TYPE_57__** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %368, i32 0, i32 4
  %370 = load %struct.TYPE_76__*, %struct.TYPE_76__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %375 = load i32, i32* %7, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %379, i32 0, i32 10
  store i32 %373, i32* %380, align 8
  %381 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %382 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %381, i32 0, i32 0
  %383 = load %struct.TYPE_57__*, %struct.TYPE_57__** %382, align 8
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_76__*, %struct.TYPE_76__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %397, i32 0, i32 11
  store i32 %391, i32* %398, align 4
  %399 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %400 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %399, i32 0, i32 0
  %401 = load %struct.TYPE_57__*, %struct.TYPE_57__** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %404, i32 0, i32 5
  %406 = load %struct.pipe_ctx*, %struct.pipe_ctx** %405, align 8
  %407 = icmp ne %struct.pipe_ctx* %406, null
  br i1 %407, label %418, label %408

408:                                              ; preds = %338
  %409 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %410 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %409, i32 0, i32 0
  %411 = load %struct.TYPE_57__*, %struct.TYPE_57__** %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %414, i32 0, i32 7
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br label %418

418:                                              ; preds = %408, %338
  %419 = phi i1 [ true, %338 ], [ %417, %408 ]
  %420 = zext i1 %419 to i32
  %421 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %422 = load i32, i32* %7, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %426, i32 0, i32 12
  store i32 %420, i32* %427, align 8
  %428 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %429 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %428, i32 0, i32 0
  %430 = load %struct.TYPE_57__*, %struct.TYPE_57__** %429, align 8
  %431 = load i32, i32* %8, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %441, i32 0, i32 26
  store i32 %435, i32* %442, align 8
  %443 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %444 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %443, i32 0, i32 0
  %445 = load %struct.TYPE_57__*, %struct.TYPE_57__** %444, align 8
  %446 = load i32, i32* %8, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_56__*, %struct.TYPE_56__** %449, align 8
  %451 = icmp ne %struct.TYPE_56__* %450, null
  br i1 %451, label %452, label %490

452:                                              ; preds = %418
  %453 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %454 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %453, i32 0, i32 0
  %455 = load %struct.TYPE_57__*, %struct.TYPE_57__** %454, align 8
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_56__*, %struct.TYPE_56__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %460, i32 0, i32 1
  %462 = load %struct.dc_plane_state*, %struct.dc_plane_state** %461, align 8
  %463 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %464 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %463, i32 0, i32 0
  %465 = load %struct.TYPE_57__*, %struct.TYPE_57__** %464, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %468, i32 0, i32 3
  %470 = load %struct.dc_plane_state*, %struct.dc_plane_state** %469, align 8
  %471 = icmp eq %struct.dc_plane_state* %462, %470
  br i1 %471, label %472, label %490

472:                                              ; preds = %452
  %473 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %474 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %473, i32 0, i32 0
  %475 = load %struct.TYPE_57__*, %struct.TYPE_57__** %474, align 8
  %476 = load i32, i32* %8, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_56__*, %struct.TYPE_56__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %488, i32 0, i32 26
  store i32 %482, i32* %489, align 8
  br label %530

490:                                              ; preds = %452, %418
  %491 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %492 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %491, i32 0, i32 0
  %493 = load %struct.TYPE_57__*, %struct.TYPE_57__** %492, align 8
  %494 = load i32, i32* %8, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %496, i32 0, i32 5
  %498 = load %struct.pipe_ctx*, %struct.pipe_ctx** %497, align 8
  %499 = icmp ne %struct.pipe_ctx* %498, null
  br i1 %499, label %500, label %529

500:                                              ; preds = %490
  %501 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %502 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %501, i32 0, i32 0
  %503 = load %struct.TYPE_57__*, %struct.TYPE_57__** %502, align 8
  %504 = load i32, i32* %8, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %503, i64 %505
  %507 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %506, i32 0, i32 5
  %508 = load %struct.pipe_ctx*, %struct.pipe_ctx** %507, align 8
  store %struct.pipe_ctx* %508, %struct.pipe_ctx** %12, align 8
  br label %509

509:                                              ; preds = %514, %500
  %510 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %511 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %510, i32 0, i32 1
  %512 = load %struct.pipe_ctx*, %struct.pipe_ctx** %511, align 8
  %513 = icmp ne %struct.pipe_ctx* %512, null
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %516 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %515, i32 0, i32 1
  %517 = load %struct.pipe_ctx*, %struct.pipe_ctx** %516, align 8
  store %struct.pipe_ctx* %517, %struct.pipe_ctx** %12, align 8
  br label %509

518:                                              ; preds = %509
  %519 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %520 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %523 = load i32, i32* %7, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %527, i32 0, i32 26
  store i32 %521, i32* %528, align 8
  br label %529

529:                                              ; preds = %518, %490
  br label %530

530:                                              ; preds = %529, %472
  %531 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %532 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %531, i32 0, i32 0
  %533 = load %struct.TYPE_57__*, %struct.TYPE_57__** %532, align 8
  %534 = load i32, i32* %8, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %533, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %536, i32 0, i32 4
  %538 = load %struct.TYPE_76__*, %struct.TYPE_76__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  switch i32 %540, label %565 [
    i32 142, label %541
    i32 143, label %541
    i32 139, label %549
    i32 138, label %557
    i32 140, label %557
    i32 141, label %557
  ]

541:                                              ; preds = %530, %530
  %542 = load i8*, i8** @dm_dp, align 8
  %543 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %544 = load i32, i32* %7, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %543, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %547, i32 0, i32 4
  store i8* %542, i8** %548, align 8
  br label %579

549:                                              ; preds = %530
  %550 = load i8*, i8** @dm_edp, align 8
  %551 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %552 = load i32, i32* %7, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %555, i32 0, i32 4
  store i8* %550, i8** %556, align 8
  br label %579

557:                                              ; preds = %530, %530, %530
  %558 = load i8*, i8** @dm_hdmi, align 8
  %559 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %560 = load i32, i32* %7, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %559, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %563, i32 0, i32 4
  store i8* %558, i8** %564, align 8
  br label %579

565:                                              ; preds = %530
  %566 = load i8*, i8** @dm_dp, align 8
  %567 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %568 = load i32, i32* %7, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %571, i32 0, i32 4
  store i8* %566, i8** %572, align 8
  %573 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %574 = load i32, i32* %7, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %573, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %577, i32 0, i32 0
  store i32 4, i32* %578, align 8
  br label %579

579:                                              ; preds = %565, %557, %549, %541
  %580 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %581 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %580, i32 0, i32 0
  %582 = load %struct.TYPE_57__*, %struct.TYPE_57__** %581, align 8
  %583 = load i32, i32* %8, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %585, i32 0, i32 4
  %587 = load %struct.TYPE_76__*, %struct.TYPE_76__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %588, i32 0, i32 12
  %590 = load i32, i32* %589, align 8
  switch i32 %590, label %597 [
    i32 150, label %591
    i32 149, label %592
    i32 155, label %593
    i32 153, label %594
    i32 152, label %595
    i32 151, label %596
  ]

591:                                              ; preds = %579
  store i32 6, i32* %11, align 4
  br label %598

592:                                              ; preds = %579
  store i32 8, i32* %11, align 4
  br label %598

593:                                              ; preds = %579
  store i32 10, i32* %11, align 4
  br label %598

594:                                              ; preds = %579
  store i32 12, i32* %11, align 4
  br label %598

595:                                              ; preds = %579
  store i32 14, i32* %11, align 4
  br label %598

596:                                              ; preds = %579
  store i32 16, i32* %11, align 4
  br label %598

597:                                              ; preds = %579
  store i32 8, i32* %11, align 4
  br label %598

598:                                              ; preds = %597, %596, %595, %594, %593, %592, %591
  %599 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %600 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %599, i32 0, i32 0
  %601 = load %struct.TYPE_57__*, %struct.TYPE_57__** %600, align 8
  %602 = load i32, i32* %8, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %601, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %604, i32 0, i32 4
  %606 = load %struct.TYPE_76__*, %struct.TYPE_76__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %606, i32 0, i32 1
  %608 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %607, i32 0, i32 13
  %609 = load i32, i32* %608, align 4
  switch i32 %609, label %659 [
    i32 147, label %610
    i32 144, label %610
    i32 146, label %626
    i32 145, label %643
  ]

610:                                              ; preds = %598, %598
  %611 = load i8*, i8** @dm_444, align 8
  %612 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %613 = load i32, i32* %7, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %612, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %615, i32 0, i32 1
  %617 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %616, i32 0, i32 3
  store i8* %611, i8** %617, align 8
  %618 = load i32, i32* %11, align 4
  %619 = mul nsw i32 %618, 3
  %620 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %621 = load i32, i32* %7, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %624, i32 0, i32 1
  store i32 %619, i32* %625, align 4
  br label %675

626:                                              ; preds = %598
  %627 = load i8*, i8** @dm_420, align 8
  %628 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %629 = load i32, i32* %7, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %628, i64 %630
  %632 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %632, i32 0, i32 3
  store i8* %627, i8** %633, align 8
  %634 = load i32, i32* %11, align 4
  %635 = mul nsw i32 %634, 3
  %636 = sdiv i32 %635, 2
  %637 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %638 = load i32, i32* %7, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %641, i32 0, i32 1
  store i32 %636, i32* %642, align 4
  br label %675

643:                                              ; preds = %598
  %644 = load i8*, i8** @dm_s422, align 8
  %645 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %646 = load i32, i32* %7, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %649, i32 0, i32 3
  store i8* %644, i8** %650, align 8
  %651 = load i32, i32* %11, align 4
  %652 = mul nsw i32 %651, 2
  %653 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %654 = load i32, i32* %7, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %653, i64 %655
  %657 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %656, i32 0, i32 1
  %658 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %657, i32 0, i32 1
  store i32 %652, i32* %658, align 4
  br label %675

659:                                              ; preds = %598
  %660 = load i8*, i8** @dm_444, align 8
  %661 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %662 = load i32, i32* %7, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %661, i64 %663
  %665 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %665, i32 0, i32 3
  store i8* %660, i8** %666, align 8
  %667 = load i32, i32* %11, align 4
  %668 = mul nsw i32 %667, 3
  %669 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %670 = load i32, i32* %7, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %669, i64 %671
  %673 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %673, i32 0, i32 1
  store i32 %668, i32* %674, align 4
  br label %675

675:                                              ; preds = %659, %643, %626, %610
  %676 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %677 = load i32, i32* %7, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %676, i64 %678
  %680 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %680, i32 0, i32 2
  store i32 12, i32* %681, align 8
  %682 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %683 = load i32, i32* %7, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %682, i64 %684
  %686 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %687, i32 0, i32 5
  store i32 2, i32* %688, align 4
  %689 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %690 = load i32, i32* %7, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %689, i64 %691
  %693 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %694, i32 0, i32 6
  store i32 256, i32* %695, align 8
  %696 = load i8*, i8** @dm_cur_32bit, align 8
  %697 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %698 = load i32, i32* %7, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %697, i64 %699
  %701 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %702, i32 0, i32 25
  store i8* %696, i8** %703, align 8
  %704 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %705 = load i32, i32* %7, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %704, i64 %706
  %708 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %707, i32 0, i32 0
  %709 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %708, i32 0, i32 0
  %710 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %709, i32 0, i32 7
  store i32 256, i32* %710, align 4
  %711 = load i8*, i8** @dm_cur_32bit, align 8
  %712 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %713 = load i32, i32* %7, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %712, i64 %714
  %716 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %716, i32 0, i32 0
  %718 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %717, i32 0, i32 24
  store i8* %711, i8** %718, align 8
  %719 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %720 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %719, i32 0, i32 0
  %721 = load %struct.TYPE_57__*, %struct.TYPE_57__** %720, align 8
  %722 = load i32, i32* %8, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %724, i32 0, i32 3
  %726 = load %struct.dc_plane_state*, %struct.dc_plane_state** %725, align 8
  %727 = icmp ne %struct.dc_plane_state* %726, null
  br i1 %727, label %972, label %728

728:                                              ; preds = %675
  %729 = load i8*, i8** @dm_horz, align 8
  %730 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %731 = load i32, i32* %7, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %730, i64 %732
  %734 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %734, i32 0, i32 0
  %736 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %735, i32 0, i32 22
  store i8* %729, i8** %736, align 8
  %737 = load i32, i32* @dm_sw_linear, align 4
  %738 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %739 = load i32, i32* %7, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %738, i64 %740
  %742 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %741, i32 0, i32 0
  %743 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %742, i32 0, i32 0
  %744 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %743, i32 0, i32 13
  store i32 %737, i32* %744, align 8
  %745 = load i32, i32* @dm_64k_tile, align 4
  %746 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %747 = load i32, i32* %7, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %746, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %750, i32 0, i32 0
  %752 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %751, i32 0, i32 14
  store i32 %745, i32* %752, align 4
  %753 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %754 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %753, i32 0, i32 6
  %755 = load i32, i32* %754, align 8
  %756 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %757 = load i32, i32* %7, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %756, i64 %758
  %760 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %761, i32 0, i32 8
  store i32 %755, i32* %762, align 8
  %763 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %764 = load i32, i32* %7, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %763, i64 %765
  %767 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %767, i32 0, i32 0
  %769 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %768, i32 0, i32 8
  %770 = load i32, i32* %769, align 8
  %771 = icmp sgt i32 %770, 1920
  br i1 %771, label %772, label %780

772:                                              ; preds = %728
  %773 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %774 = load i32, i32* %7, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %773, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %776, i32 0, i32 0
  %778 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %777, i32 0, i32 0
  %779 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %778, i32 0, i32 8
  store i32 1920, i32* %779, align 8
  br label %780

780:                                              ; preds = %772, %728
  %781 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %782 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %785 = load i32, i32* %7, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %784, i64 %786
  %788 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %787, i32 0, i32 0
  %789 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %788, i32 0, i32 0
  %790 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %789, i32 0, i32 9
  store i32 %783, i32* %790, align 4
  %791 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %792 = load i32, i32* %7, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %791, i64 %793
  %795 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %794, i32 0, i32 0
  %796 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %795, i32 0, i32 0
  %797 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %796, i32 0, i32 9
  %798 = load i32, i32* %797, align 4
  %799 = icmp sgt i32 %798, 1080
  br i1 %799, label %800, label %808

800:                                              ; preds = %780
  %801 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %802 = load i32, i32* %7, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %801, i64 %803
  %805 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %804, i32 0, i32 0
  %806 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %806, i32 0, i32 9
  store i32 1080, i32* %807, align 4
  br label %808

808:                                              ; preds = %800, %780
  %809 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %810 = load i32, i32* %7, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %809, i64 %811
  %813 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %812, i32 0, i32 0
  %814 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %813, i32 0, i32 0
  %815 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %814, i32 0, i32 8
  %816 = load i32, i32* %815, align 8
  %817 = add nsw i32 %816, 63
  %818 = sdiv i32 %817, 64
  %819 = mul nsw i32 %818, 64
  %820 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %821 = load i32, i32* %7, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %820, i64 %822
  %824 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %823, i32 0, i32 0
  %825 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %824, i32 0, i32 0
  %826 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %825, i32 0, i32 10
  store i32 %819, i32* %826, align 8
  %827 = load i8*, i8** @dm_444_32, align 8
  %828 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %829 = load i32, i32* %7, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %828, i64 %830
  %832 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %831, i32 0, i32 0
  %833 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %832, i32 0, i32 0
  %834 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %833, i32 0, i32 12
  store i8* %827, i8** %834, align 8
  %835 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %836 = load i32, i32* %7, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %835, i64 %837
  %839 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %838, i32 0, i32 0
  %840 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %839, i32 0, i32 0
  %841 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %840, i32 0, i32 8
  %842 = load i32, i32* %841, align 8
  %843 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %844 = load i32, i32* %7, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %843, i64 %845
  %847 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %846, i32 0, i32 0
  %848 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %847, i32 0, i32 3
  %849 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %848, i32 0, i32 13
  store i32 %842, i32* %849, align 4
  %850 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %851 = load i32, i32* %7, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %850, i64 %852
  %854 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %853, i32 0, i32 0
  %855 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %854, i32 0, i32 0
  %856 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %855, i32 0, i32 9
  %857 = load i32, i32* %856, align 4
  %858 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %859 = load i32, i32* %7, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %858, i64 %860
  %862 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %861, i32 0, i32 0
  %863 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %862, i32 0, i32 3
  %864 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %863, i32 0, i32 14
  store i32 %857, i32* %864, align 8
  %865 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %866 = load i32, i32* %7, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %865, i64 %867
  %869 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %868, i32 0, i32 0
  %870 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %869, i32 0, i32 3
  %871 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %870, i32 0, i32 13
  %872 = load i32, i32* %871, align 4
  %873 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %874 = load i32, i32* %7, align 4
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %873, i64 %875
  %877 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %876, i32 0, i32 0
  %878 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %877, i32 0, i32 3
  %879 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %878, i32 0, i32 15
  store i32 %872, i32* %879, align 4
  %880 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %881 = load i32, i32* %7, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %880, i64 %882
  %884 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %883, i32 0, i32 0
  %885 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %884, i32 0, i32 3
  %886 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %885, i32 0, i32 14
  %887 = load i32, i32* %886, align 8
  %888 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %889 = load i32, i32* %7, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %888, i64 %890
  %892 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %891, i32 0, i32 0
  %893 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %892, i32 0, i32 3
  %894 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %893, i32 0, i32 16
  store i32 %887, i32* %894, align 8
  %895 = load i8*, i8** @dm_lb_16, align 8
  %896 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %897 = load i32, i32* %7, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %896, i64 %898
  %900 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %899, i32 0, i32 0
  %901 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %900, i32 0, i32 2
  %902 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %901, i32 0, i32 5
  store i8* %895, i8** %902, align 8
  %903 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %904 = load i32, i32* %7, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %903, i64 %905
  %907 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %906, i32 0, i32 0
  %908 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %907, i32 0, i32 2
  %909 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %908, i32 0, i32 0
  store double 1.000000e+00, double* %909, align 8
  %910 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %911 = load i32, i32* %7, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %910, i64 %912
  %914 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %913, i32 0, i32 0
  %915 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %914, i32 0, i32 2
  %916 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %915, i32 0, i32 1
  store double 1.000000e+00, double* %916, align 8
  %917 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %918 = load i32, i32* %7, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %917, i64 %919
  %921 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %920, i32 0, i32 0
  %922 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %921, i32 0, i32 2
  %923 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %922, i32 0, i32 2
  store i32 0, i32* %923, align 8
  %924 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %925 = load i32, i32* %7, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %924, i64 %926
  %928 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %927, i32 0, i32 0
  %929 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %929, i32 0, i32 0
  store i32 1, i32* %930, align 8
  %931 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %932 = load i32, i32* %7, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %931, i64 %933
  %935 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %934, i32 0, i32 0
  %936 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %936, i32 0, i32 1
  store i32 1, i32* %937, align 4
  %938 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %939 = load i32, i32* %7, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %938, i64 %940
  %942 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %941, i32 0, i32 0
  %943 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %942, i32 0, i32 0
  %944 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %943, i32 0, i32 11
  store i32 0, i32* %944, align 4
  %945 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %946 = load i32, i32* %7, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %945, i64 %947
  %949 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %948, i32 0, i32 0
  %950 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %949, i32 0, i32 3
  %951 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %950, i32 0, i32 12
  store i32 0, i32* %951, align 8
  %952 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %953 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 8
  %955 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %956 = load i32, i32* %7, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %955, i64 %957
  %959 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %958, i32 0, i32 0
  %960 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %959, i32 0, i32 3
  %961 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %960, i32 0, i32 10
  store i32 %954, i32* %961, align 8
  %962 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %963 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 8
  %965 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %966 = load i32, i32* %7, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %965, i64 %967
  %969 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %968, i32 0, i32 0
  %970 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %969, i32 0, i32 3
  %971 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %970, i32 0, i32 11
  store i32 %964, i32* %971, align 4
  br label %1659

972:                                              ; preds = %675
  %973 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %974 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %973, i32 0, i32 0
  %975 = load %struct.TYPE_57__*, %struct.TYPE_57__** %974, align 8
  %976 = load i32, i32* %8, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %975, i64 %977
  %979 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %978, i32 0, i32 3
  %980 = load %struct.dc_plane_state*, %struct.dc_plane_state** %979, align 8
  store %struct.dc_plane_state* %980, %struct.dc_plane_state** %13, align 8
  %981 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %982 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %981, i32 0, i32 0
  %983 = load %struct.TYPE_57__*, %struct.TYPE_57__** %982, align 8
  %984 = load i32, i32* %8, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %983, i64 %985
  %987 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %986, i32 0, i32 2
  %988 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %987, i32 0, i32 0
  store %struct.scaler_data* %988, %struct.scaler_data** %14, align 8
  %989 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %990 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %989, i32 0, i32 5
  %991 = load i32, i32* %990, align 4
  %992 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %993 = load i32, i32* %7, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %992, i64 %994
  %996 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %995, i32 0, i32 0
  %997 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %996, i32 0, i32 0
  %998 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %997, i32 0, i32 23
  store i32 %991, i32* %998, align 8
  %999 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1000 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %999, i32 0, i32 0
  %1001 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1000, align 8
  %1002 = load i32, i32* %8, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1001, i64 %1003
  %1005 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1004, i32 0, i32 1
  %1006 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1005, align 8
  %1007 = icmp ne %struct.TYPE_50__* %1006, null
  br i1 %1007, label %1008, label %1021

1008:                                             ; preds = %972
  %1009 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1010 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1009, i32 0, i32 0
  %1011 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1010, align 8
  %1012 = load i32, i32* %8, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1011, i64 %1013
  %1015 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1014, i32 0, i32 1
  %1016 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1015, align 8
  %1017 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1016, i32 0, i32 1
  %1018 = load %struct.dc_plane_state*, %struct.dc_plane_state** %1017, align 8
  %1019 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1020 = icmp eq %struct.dc_plane_state* %1018, %1019
  br i1 %1020, label %1046, label %1021

1021:                                             ; preds = %1008, %972
  %1022 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1023 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1022, i32 0, i32 0
  %1024 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1023, align 8
  %1025 = load i32, i32* %8, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1024, i64 %1026
  %1028 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1027, i32 0, i32 0
  %1029 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1028, align 8
  %1030 = icmp ne %struct.TYPE_56__* %1029, null
  br i1 %1030, label %1031, label %1044

1031:                                             ; preds = %1021
  %1032 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1033 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1032, i32 0, i32 0
  %1034 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1033, align 8
  %1035 = load i32, i32* %8, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1034, i64 %1036
  %1038 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1037, i32 0, i32 0
  %1039 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1038, align 8
  %1040 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1039, i32 0, i32 1
  %1041 = load %struct.dc_plane_state*, %struct.dc_plane_state** %1040, align 8
  %1042 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1043 = icmp eq %struct.dc_plane_state* %1041, %1042
  br label %1044

1044:                                             ; preds = %1031, %1021
  %1045 = phi i1 [ false, %1021 ], [ %1043, %1031 ]
  br label %1046

1046:                                             ; preds = %1044, %1008
  %1047 = phi i1 [ true, %1008 ], [ %1045, %1044 ]
  %1048 = zext i1 %1047 to i32
  %1049 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1050 = load i32, i32* %7, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1049, i64 %1051
  %1053 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1052, i32 0, i32 0
  %1054 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1053, i32 0, i32 0
  %1055 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1054, i32 0, i32 11
  store i32 %1048, i32* %1055, align 4
  %1056 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1057 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1056, i32 0, i32 0
  %1058 = load i64, i64* %1057, align 8
  %1059 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %1060 = icmp eq i64 %1058, %1059
  br i1 %1060, label %1067, label %1061

1061:                                             ; preds = %1046
  %1062 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1063 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1062, i32 0, i32 0
  %1064 = load i64, i64* %1063, align 8
  %1065 = load i64, i64* @ROTATION_ANGLE_270, align 8
  %1066 = icmp eq i64 %1064, %1065
  br i1 %1066, label %1067, label %1069

1067:                                             ; preds = %1061, %1046
  %1068 = load i8*, i8** @dm_vert, align 8
  br label %1071

1069:                                             ; preds = %1061
  %1070 = load i8*, i8** @dm_horz, align 8
  br label %1071

1071:                                             ; preds = %1069, %1067
  %1072 = phi i8* [ %1068, %1067 ], [ %1070, %1069 ]
  %1073 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1074 = load i32, i32* %7, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1073, i64 %1075
  %1077 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1076, i32 0, i32 0
  %1078 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1078, i32 0, i32 22
  store i8* %1072, i8** %1079, align 8
  %1080 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1081 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1080, i32 0, i32 4
  %1082 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1081, i32 0, i32 2
  %1083 = load i32, i32* %1082, align 4
  %1084 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1085 = load i32, i32* %7, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1084, i64 %1086
  %1088 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1087, i32 0, i32 0
  %1089 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1088, i32 0, i32 0
  %1090 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1089, i32 0, i32 21
  store i32 %1083, i32* %1090, align 8
  %1091 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1092 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1091, i32 0, i32 3
  %1093 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1092, i32 0, i32 2
  %1094 = load i32, i32* %1093, align 8
  %1095 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1096 = load i32, i32* %7, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1095, i64 %1097
  %1099 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1099, i32 0, i32 0
  %1101 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1100, i32 0, i32 20
  store i32 %1094, i32* %1101, align 4
  %1102 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1103 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1102, i32 0, i32 4
  %1104 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1103, i32 0, i32 0
  %1105 = load i32, i32* %1104, align 4
  %1106 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1107 = load i32, i32* %7, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1106, i64 %1108
  %1110 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1109, i32 0, i32 0
  %1111 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1110, i32 0, i32 0
  %1112 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1111, i32 0, i32 8
  store i32 %1105, i32* %1112, align 8
  %1113 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1114 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1113, i32 0, i32 3
  %1115 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1114, i32 0, i32 1
  %1116 = load i32, i32* %1115, align 4
  %1117 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1118 = load i32, i32* %7, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1117, i64 %1119
  %1121 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1121, i32 0, i32 0
  %1123 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1122, i32 0, i32 19
  store i32 %1116, i32* %1123, align 8
  %1124 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1125 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1124, i32 0, i32 4
  %1126 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1125, i32 0, i32 1
  %1127 = load i32, i32* %1126, align 4
  %1128 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1129 = load i32, i32* %7, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1128, i64 %1130
  %1132 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1131, i32 0, i32 0
  %1133 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1132, i32 0, i32 0
  %1134 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1133, i32 0, i32 9
  store i32 %1127, i32* %1134, align 4
  %1135 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1136 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1135, i32 0, i32 3
  %1137 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1136, i32 0, i32 0
  %1138 = load i32, i32* %1137, align 8
  %1139 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1140 = load i32, i32* %7, align 4
  %1141 = sext i32 %1140 to i64
  %1142 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1139, i64 %1141
  %1143 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1142, i32 0, i32 0
  %1144 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1143, i32 0, i32 0
  %1145 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1144, i32 0, i32 18
  store i32 %1138, i32* %1145, align 4
  %1146 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1147 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1146, i32 0, i32 1
  %1148 = load i32, i32* %1147, align 8
  %1149 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %1150 = icmp sge i32 %1148, %1149
  br i1 %1150, label %1151, label %1196

1151:                                             ; preds = %1071
  %1152 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1153 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1152, i32 0, i32 4
  %1154 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1153, i32 0, i32 0
  %1155 = load i32, i32* %1154, align 4
  %1156 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1157 = load i32, i32* %7, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1156, i64 %1158
  %1160 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1159, i32 0, i32 0
  %1161 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1160, i32 0, i32 0
  %1162 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1161, i32 0, i32 10
  store i32 %1155, i32* %1162, align 8
  %1163 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1164 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1163, i32 0, i32 4
  %1165 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1164, i32 0, i32 1
  %1166 = load i32, i32* %1165, align 4
  %1167 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1168 = load i32, i32* %7, align 4
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1167, i64 %1169
  %1171 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1171, i32 0, i32 0
  %1173 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1172, i32 0, i32 17
  store i32 %1166, i32* %1173, align 8
  %1174 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1175 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1174, i32 0, i32 3
  %1176 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1175, i32 0, i32 1
  %1177 = load i32, i32* %1176, align 4
  %1178 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1179 = load i32, i32* %7, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1178, i64 %1180
  %1182 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1181, i32 0, i32 0
  %1183 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1183, i32 0, i32 15
  store i32 %1177, i32* %1184, align 8
  %1185 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1186 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1185, i32 0, i32 3
  %1187 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1186, i32 0, i32 2
  %1188 = load i32, i32* %1187, align 8
  %1189 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1190 = load i32, i32* %7, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1189, i64 %1191
  %1193 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1192, i32 0, i32 0
  %1194 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1194, i32 0, i32 16
  store i32 %1188, i32* %1195, align 4
  br label %1219

1196:                                             ; preds = %1071
  %1197 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1198 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1197, i32 0, i32 4
  %1199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1198, i32 0, i32 0
  %1200 = load i32, i32* %1199, align 4
  %1201 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1202 = load i32, i32* %7, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1201, i64 %1203
  %1205 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1204, i32 0, i32 0
  %1206 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1206, i32 0, i32 10
  store i32 %1200, i32* %1207, align 8
  %1208 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1209 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1208, i32 0, i32 3
  %1210 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1209, i32 0, i32 1
  %1211 = load i32, i32* %1210, align 4
  %1212 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1213 = load i32, i32* %7, align 4
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1212, i64 %1214
  %1216 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1215, i32 0, i32 0
  %1217 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1216, i32 0, i32 0
  %1218 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1217, i32 0, i32 15
  store i32 %1211, i32* %1218, align 8
  br label %1219

1219:                                             ; preds = %1196, %1151
  %1220 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1221 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1220, i32 0, i32 3
  %1222 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1221, i32 0, i32 0
  %1223 = load i32, i32* %1222, align 8
  %1224 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1225 = load i32, i32* %7, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1224, i64 %1226
  %1228 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1227, i32 0, i32 0
  %1229 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1228, i32 0, i32 0
  %1230 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1229, i32 0, i32 3
  store i32 %1223, i32* %1230, align 4
  %1231 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1232 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1231, i32 0, i32 2
  %1233 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1232, i32 0, i32 0
  %1234 = load i32, i32* %1233, align 8
  %1235 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1236 = load i32, i32* %7, align 4
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1235, i64 %1237
  %1239 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1238, i32 0, i32 0
  %1240 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1239, i32 0, i32 3
  %1241 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1240, i32 0, i32 13
  store i32 %1234, i32* %1241, align 4
  %1242 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1243 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1242, i32 0, i32 2
  %1244 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1243, i32 0, i32 1
  %1245 = load i32, i32* %1244, align 4
  %1246 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1247 = load i32, i32* %7, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1246, i64 %1248
  %1250 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1250, i32 0, i32 3
  %1252 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1251, i32 0, i32 14
  store i32 %1245, i32* %1252, align 8
  %1253 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1254 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1253, i32 0, i32 2
  %1255 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1254, i32 0, i32 0
  %1256 = load i32, i32* %1255, align 8
  %1257 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1258 = load i32, i32* %7, align 4
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1257, i64 %1259
  %1261 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1260, i32 0, i32 0
  %1262 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1261, i32 0, i32 3
  %1263 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1262, i32 0, i32 15
  store i32 %1256, i32* %1263, align 4
  %1264 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1265 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1264, i32 0, i32 2
  %1266 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %1265, i32 0, i32 1
  %1267 = load i32, i32* %1266, align 4
  %1268 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1269 = load i32, i32* %7, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1268, i64 %1270
  %1272 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1271, i32 0, i32 0
  %1273 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1272, i32 0, i32 3
  %1274 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1273, i32 0, i32 16
  store i32 %1267, i32* %1274, align 8
  %1275 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1276 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1275, i32 0, i32 0
  %1277 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1276, align 8
  %1278 = load i32, i32* %8, align 4
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1277, i64 %1279
  %1281 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1280, i32 0, i32 1
  %1282 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1281, align 8
  %1283 = icmp ne %struct.TYPE_50__* %1282, null
  br i1 %1283, label %1284, label %1346

1284:                                             ; preds = %1219
  %1285 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1286 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1285, i32 0, i32 0
  %1287 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1286, align 8
  %1288 = load i32, i32* %8, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1287, i64 %1289
  %1291 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1290, i32 0, i32 1
  %1292 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1291, align 8
  %1293 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1292, i32 0, i32 1
  %1294 = load %struct.dc_plane_state*, %struct.dc_plane_state** %1293, align 8
  %1295 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1296 = icmp eq %struct.dc_plane_state* %1294, %1295
  br i1 %1296, label %1297, label %1346

1297:                                             ; preds = %1284
  %1298 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1299 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1298, i32 0, i32 0
  %1300 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1299, align 8
  %1301 = load i32, i32* %8, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1300, i64 %1302
  %1304 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1303, i32 0, i32 1
  %1305 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1304, align 8
  %1306 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1305, i32 0, i32 0
  %1307 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1306, i32 0, i32 0
  %1308 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1307, i32 0, i32 0
  %1309 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1308, i32 0, i32 1
  %1310 = load i64, i64* %1309, align 8
  %1311 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1312 = load i32, i32* %7, align 4
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1311, i64 %1313
  %1315 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1314, i32 0, i32 0
  %1316 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1315, i32 0, i32 3
  %1317 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1316, i32 0, i32 15
  %1318 = load i32, i32* %1317, align 4
  %1319 = sext i32 %1318 to i64
  %1320 = add nsw i64 %1319, %1310
  %1321 = trunc i64 %1320 to i32
  store i32 %1321, i32* %1317, align 4
  %1322 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1323 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1322, i32 0, i32 0
  %1324 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1323, align 8
  %1325 = load i32, i32* %8, align 4
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1324, i64 %1326
  %1328 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1327, i32 0, i32 1
  %1329 = load %struct.TYPE_50__*, %struct.TYPE_50__** %1328, align 8
  %1330 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1329, i32 0, i32 0
  %1331 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1330, i32 0, i32 0
  %1332 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1331, i32 0, i32 0
  %1333 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1332, i32 0, i32 0
  %1334 = load i64, i64* %1333, align 8
  %1335 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1336 = load i32, i32* %7, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1335, i64 %1337
  %1339 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1338, i32 0, i32 0
  %1340 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1339, i32 0, i32 3
  %1341 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1340, i32 0, i32 16
  %1342 = load i32, i32* %1341, align 8
  %1343 = sext i32 %1342 to i64
  %1344 = add nsw i64 %1343, %1334
  %1345 = trunc i64 %1344 to i32
  store i32 %1345, i32* %1341, align 8
  br label %1419

1346:                                             ; preds = %1284, %1219
  %1347 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1348 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1347, i32 0, i32 0
  %1349 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1348, align 8
  %1350 = load i32, i32* %8, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1349, i64 %1351
  %1353 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1352, i32 0, i32 0
  %1354 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1353, align 8
  %1355 = icmp ne %struct.TYPE_56__* %1354, null
  br i1 %1355, label %1356, label %1418

1356:                                             ; preds = %1346
  %1357 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1358 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1357, i32 0, i32 0
  %1359 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1358, align 8
  %1360 = load i32, i32* %8, align 4
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1359, i64 %1361
  %1363 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1362, i32 0, i32 0
  %1364 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1363, align 8
  %1365 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1364, i32 0, i32 1
  %1366 = load %struct.dc_plane_state*, %struct.dc_plane_state** %1365, align 8
  %1367 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1368 = icmp eq %struct.dc_plane_state* %1366, %1367
  br i1 %1368, label %1369, label %1418

1369:                                             ; preds = %1356
  %1370 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1371 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1370, i32 0, i32 0
  %1372 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1371, align 8
  %1373 = load i32, i32* %8, align 4
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1372, i64 %1374
  %1376 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1375, i32 0, i32 0
  %1377 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1376, align 8
  %1378 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1377, i32 0, i32 0
  %1379 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1378, i32 0, i32 0
  %1380 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1379, i32 0, i32 0
  %1381 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1380, i32 0, i32 1
  %1382 = load i64, i64* %1381, align 8
  %1383 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1384 = load i32, i32* %7, align 4
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1383, i64 %1385
  %1387 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1386, i32 0, i32 0
  %1388 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1387, i32 0, i32 3
  %1389 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1388, i32 0, i32 15
  %1390 = load i32, i32* %1389, align 4
  %1391 = sext i32 %1390 to i64
  %1392 = add nsw i64 %1391, %1382
  %1393 = trunc i64 %1392 to i32
  store i32 %1393, i32* %1389, align 4
  %1394 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1395 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %1394, i32 0, i32 0
  %1396 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1395, align 8
  %1397 = load i32, i32* %8, align 4
  %1398 = sext i32 %1397 to i64
  %1399 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1396, i64 %1398
  %1400 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1399, i32 0, i32 0
  %1401 = load %struct.TYPE_56__*, %struct.TYPE_56__** %1400, align 8
  %1402 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1401, i32 0, i32 0
  %1403 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1402, i32 0, i32 0
  %1404 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1403, i32 0, i32 0
  %1405 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1404, i32 0, i32 0
  %1406 = load i64, i64* %1405, align 8
  %1407 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1408 = load i32, i32* %7, align 4
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1407, i64 %1409
  %1411 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1410, i32 0, i32 0
  %1412 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1411, i32 0, i32 3
  %1413 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1412, i32 0, i32 16
  %1414 = load i32, i32* %1413, align 8
  %1415 = sext i32 %1414 to i64
  %1416 = add nsw i64 %1415, %1406
  %1417 = trunc i64 %1416 to i32
  store i32 %1417, i32* %1413, align 8
  br label %1418

1418:                                             ; preds = %1369, %1356, %1346
  br label %1419

1419:                                             ; preds = %1418, %1297
  %1420 = load i8*, i8** @dm_lb_16, align 8
  %1421 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1422 = load i32, i32* %7, align 4
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1421, i64 %1423
  %1425 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1424, i32 0, i32 0
  %1426 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1425, i32 0, i32 2
  %1427 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1426, i32 0, i32 5
  store i8* %1420, i8** %1427, align 8
  %1428 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1429 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1428, i32 0, i32 1
  %1430 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1429, i32 0, i32 2
  %1431 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1430, i32 0, i32 0
  %1432 = load i64, i64* %1431, align 8
  %1433 = sitofp i64 %1432 to double
  %1434 = fdiv double %1433, 0x41F0000000000000
  %1435 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1436 = load i32, i32* %7, align 4
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1435, i64 %1437
  %1439 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1438, i32 0, i32 0
  %1440 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1439, i32 0, i32 2
  %1441 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1440, i32 0, i32 0
  store double %1434, double* %1441, align 8
  %1442 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1443 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1442, i32 0, i32 1
  %1444 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1443, i32 0, i32 0
  %1445 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1444, i32 0, i32 0
  %1446 = load i64, i64* %1445, align 8
  %1447 = sitofp i64 %1446 to double
  %1448 = fdiv double %1447, 0x41F0000000000000
  %1449 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1450 = load i32, i32* %7, align 4
  %1451 = sext i32 %1450 to i64
  %1452 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1449, i64 %1451
  %1453 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1452, i32 0, i32 0
  %1454 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1453, i32 0, i32 2
  %1455 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1454, i32 0, i32 3
  store double %1448, double* %1455, align 8
  %1456 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1457 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1456, i32 0, i32 1
  %1458 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1457, i32 0, i32 3
  %1459 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1458, i32 0, i32 0
  %1460 = load i64, i64* %1459, align 8
  %1461 = sitofp i64 %1460 to double
  %1462 = fdiv double %1461, 0x41F0000000000000
  %1463 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1464 = load i32, i32* %7, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1463, i64 %1465
  %1467 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1466, i32 0, i32 0
  %1468 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1467, i32 0, i32 2
  %1469 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1468, i32 0, i32 1
  store double %1462, double* %1469, align 8
  %1470 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1471 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1471, i32 0, i32 1
  %1473 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1472, i32 0, i32 0
  %1474 = load i64, i64* %1473, align 8
  %1475 = sitofp i64 %1474 to double
  %1476 = fdiv double %1475, 0x41F0000000000000
  %1477 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1478 = load i32, i32* %7, align 4
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1477, i64 %1479
  %1481 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1481, i32 0, i32 2
  %1483 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1482, i32 0, i32 4
  store double %1476, double* %1483, align 8
  %1484 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1485 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1485, i32 0, i32 3
  %1487 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1486, i32 0, i32 0
  %1488 = load i64, i64* %1487, align 8
  %1489 = load i64, i64* getelementptr inbounds (%struct.TYPE_77__, %struct.TYPE_77__* @dc_fixpt_one, i32 0, i32 0), align 8
  %1490 = icmp ne i64 %1488, %1489
  br i1 %1490, label %1521, label %1491

1491:                                             ; preds = %1419
  %1492 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1493 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1492, i32 0, i32 1
  %1494 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1493, i32 0, i32 2
  %1495 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1494, i32 0, i32 0
  %1496 = load i64, i64* %1495, align 8
  %1497 = load i64, i64* getelementptr inbounds (%struct.TYPE_77__, %struct.TYPE_77__* @dc_fixpt_one, i32 0, i32 0), align 8
  %1498 = icmp ne i64 %1496, %1497
  br i1 %1498, label %1521, label %1499

1499:                                             ; preds = %1491
  %1500 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1501 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1500, i32 0, i32 1
  %1502 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1502, i32 0, i32 0
  %1504 = load i64, i64* %1503, align 8
  %1505 = load i64, i64* getelementptr inbounds (%struct.TYPE_77__, %struct.TYPE_77__* @dc_fixpt_one, i32 0, i32 0), align 8
  %1506 = icmp ne i64 %1504, %1505
  br i1 %1506, label %1521, label %1507

1507:                                             ; preds = %1499
  %1508 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1509 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1508, i32 0, i32 1
  %1510 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1509, i32 0, i32 0
  %1511 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1510, i32 0, i32 0
  %1512 = load i64, i64* %1511, align 8
  %1513 = load i64, i64* getelementptr inbounds (%struct.TYPE_77__, %struct.TYPE_77__* @dc_fixpt_one, i32 0, i32 0), align 8
  %1514 = icmp ne i64 %1512, %1513
  br i1 %1514, label %1521, label %1515

1515:                                             ; preds = %1507
  %1516 = load %struct.dc*, %struct.dc** %4, align 8
  %1517 = getelementptr inbounds %struct.dc, %struct.dc* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1517, i32 0, i32 0
  %1519 = load i64, i64* %1518, align 8
  %1520 = icmp ne i64 %1519, 0
  br label %1521

1521:                                             ; preds = %1515, %1507, %1499, %1491, %1419
  %1522 = phi i1 [ true, %1507 ], [ true, %1499 ], [ true, %1491 ], [ true, %1419 ], [ %1520, %1515 ]
  %1523 = zext i1 %1522 to i32
  %1524 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1525 = load i32, i32* %7, align 4
  %1526 = sext i32 %1525 to i64
  %1527 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1524, i64 %1526
  %1528 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1527, i32 0, i32 0
  %1529 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1528, i32 0, i32 2
  %1530 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %1529, i32 0, i32 2
  store i32 %1523, i32* %1530, align 8
  %1531 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1532 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1531, i32 0, i32 0
  %1533 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1532, i32 0, i32 0
  %1534 = load i32, i32* %1533, align 8
  %1535 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1536 = load i32, i32* %7, align 4
  %1537 = sext i32 %1536 to i64
  %1538 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1535, i64 %1537
  %1539 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1538, i32 0, i32 0
  %1540 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1539, i32 0, i32 1
  %1541 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1540, i32 0, i32 0
  store i32 %1534, i32* %1541, align 8
  %1542 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1543 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1542, i32 0, i32 0
  %1544 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1543, i32 0, i32 3
  %1545 = load i32, i32* %1544, align 4
  %1546 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1547 = load i32, i32* %7, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1546, i64 %1548
  %1550 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1549, i32 0, i32 0
  %1551 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1550, i32 0, i32 1
  %1552 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1551, i32 0, i32 3
  store i32 %1545, i32* %1552, align 4
  %1553 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1554 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1553, i32 0, i32 0
  %1555 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1554, i32 0, i32 1
  %1556 = load i32, i32* %1555, align 4
  %1557 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1558 = load i32, i32* %7, align 4
  %1559 = sext i32 %1558 to i64
  %1560 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1557, i64 %1559
  %1561 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1560, i32 0, i32 0
  %1562 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1562, i32 0, i32 1
  store i32 %1556, i32* %1563, align 4
  %1564 = load %struct.scaler_data*, %struct.scaler_data** %14, align 8
  %1565 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %1564, i32 0, i32 0
  %1566 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1565, i32 0, i32 2
  %1567 = load i32, i32* %1566, align 8
  %1568 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1569 = load i32, i32* %7, align 4
  %1570 = sext i32 %1569 to i64
  %1571 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1568, i64 %1570
  %1572 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1571, i32 0, i32 0
  %1573 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1572, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1573, i32 0, i32 2
  store i32 %1567, i32* %1574, align 8
  %1575 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1576 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1575, i32 0, i32 2
  %1577 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1576, i32 0, i32 0
  %1578 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1577, i32 0, i32 0
  %1579 = load i32, i32* %1578, align 4
  %1580 = call i32 @swizzle_mode_to_macro_tile_size(i32 %1579)
  %1581 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1582 = load i32, i32* %7, align 4
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1581, i64 %1583
  %1585 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1585, i32 0, i32 0
  %1587 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1586, i32 0, i32 14
  store i32 %1580, i32* %1587, align 4
  %1588 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1589 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1588, i32 0, i32 2
  %1590 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1589, i32 0, i32 0
  %1591 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1590, i32 0, i32 0
  %1592 = load i32, i32* %1591, align 4
  %1593 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1594 = load i32, i32* %7, align 4
  %1595 = sext i32 %1594 to i64
  %1596 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1593, i64 %1595
  %1597 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1596, i32 0, i32 0
  %1598 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1597, i32 0, i32 0
  %1599 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1598, i32 0, i32 13
  %1600 = call i32 @swizzle_to_dml_params(i32 %1592, i32* %1599)
  %1601 = load %struct.dc_plane_state*, %struct.dc_plane_state** %13, align 8
  %1602 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %1601, i32 0, i32 1
  %1603 = load i32, i32* %1602, align 8
  switch i32 %1603, label %1649 [
    i32 129, label %1604
    i32 128, label %1604
    i32 131, label %1613
    i32 130, label %1613
    i32 135, label %1622
    i32 134, label %1622
    i32 137, label %1622
    i32 136, label %1631
    i32 132, label %1631
    i32 133, label %1640
  ]

1604:                                             ; preds = %1521, %1521
  %1605 = load i8*, i8** @dm_420_8, align 8
  %1606 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1607 = load i32, i32* %7, align 4
  %1608 = sext i32 %1607 to i64
  %1609 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1606, i64 %1608
  %1610 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1609, i32 0, i32 0
  %1611 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1610, i32 0, i32 0
  %1612 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1611, i32 0, i32 12
  store i8* %1605, i8** %1612, align 8
  br label %1658

1613:                                             ; preds = %1521, %1521
  %1614 = load i8*, i8** @dm_420_10, align 8
  %1615 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1616 = load i32, i32* %7, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1615, i64 %1617
  %1619 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1618, i32 0, i32 0
  %1620 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1619, i32 0, i32 0
  %1621 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1620, i32 0, i32 12
  store i8* %1614, i8** %1621, align 8
  br label %1658

1622:                                             ; preds = %1521, %1521, %1521
  %1623 = load i8*, i8** @dm_444_64, align 8
  %1624 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1625 = load i32, i32* %7, align 4
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1624, i64 %1626
  %1628 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1627, i32 0, i32 0
  %1629 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1628, i32 0, i32 0
  %1630 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1629, i32 0, i32 12
  store i8* %1623, i8** %1630, align 8
  br label %1658

1631:                                             ; preds = %1521, %1521
  %1632 = load i8*, i8** @dm_444_16, align 8
  %1633 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1634 = load i32, i32* %7, align 4
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1633, i64 %1635
  %1637 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1636, i32 0, i32 0
  %1638 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1637, i32 0, i32 0
  %1639 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1638, i32 0, i32 12
  store i8* %1632, i8** %1639, align 8
  br label %1658

1640:                                             ; preds = %1521
  %1641 = load i8*, i8** @dm_444_8, align 8
  %1642 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1643 = load i32, i32* %7, align 4
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1642, i64 %1644
  %1646 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1645, i32 0, i32 0
  %1647 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1647, i32 0, i32 12
  store i8* %1641, i8** %1648, align 8
  br label %1658

1649:                                             ; preds = %1521
  %1650 = load i8*, i8** @dm_444_32, align 8
  %1651 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1652 = load i32, i32* %7, align 4
  %1653 = sext i32 %1652 to i64
  %1654 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1651, i64 %1653
  %1655 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1654, i32 0, i32 0
  %1656 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1655, i32 0, i32 0
  %1657 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1656, i32 0, i32 12
  store i8* %1650, i8** %1657, align 8
  br label %1658

1658:                                             ; preds = %1649, %1640, %1631, %1622, %1613, %1604
  br label %1659

1659:                                             ; preds = %1658, %808
  %1660 = load i32, i32* %7, align 4
  %1661 = add nsw i32 %1660, 1
  store i32 %1661, i32* %7, align 4
  br label %1662

1662:                                             ; preds = %1659, %91
  %1663 = load i32, i32* %8, align 4
  %1664 = add nsw i32 %1663, 1
  store i32 %1664, i32* %8, align 4
  br label %64

1665:                                             ; preds = %64
  %1666 = load %struct.dc*, %struct.dc** %4, align 8
  %1667 = getelementptr inbounds %struct.dc, %struct.dc* %1666, i32 0, i32 0
  %1668 = load %struct.TYPE_73__*, %struct.TYPE_73__** %1667, align 8
  %1669 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1668, i32 0, i32 1
  %1670 = load %struct.TYPE_72__*, %struct.TYPE_72__** %1669, align 8
  %1671 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1670, i32 0, i32 0
  %1672 = bitcast {}** %1671 to i32 (%struct.dc*, %struct.resource_context*, %struct.TYPE_74__*)**
  %1673 = load i32 (%struct.dc*, %struct.resource_context*, %struct.TYPE_74__*)*, i32 (%struct.dc*, %struct.resource_context*, %struct.TYPE_74__*)** %1672, align 8
  %1674 = load %struct.dc*, %struct.dc** %4, align 8
  %1675 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %1676 = load %struct.TYPE_74__*, %struct.TYPE_74__** %6, align 8
  %1677 = call i32 %1673(%struct.dc* %1674, %struct.resource_context* %1675, %struct.TYPE_74__* %1676)
  %1678 = load i32, i32* %7, align 4
  ret i32 %1678
}

declare dso_local i32 @resource_are_streams_timing_synchronizable(%struct.TYPE_76__*, %struct.TYPE_76__*) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

declare dso_local i32 @swizzle_mode_to_macro_tile_size(i32) #1

declare dso_local i32 @swizzle_to_dml_params(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
