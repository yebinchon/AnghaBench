; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_plane_info_update_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_plane_info_update_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_surface_update = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_18__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_13__, %struct.TYPE_11__, %union.surface_update_flags }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%union.surface_update_flags = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@UPDATE_TYPE_MED = common dso_local global i32 0, align 4
@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@DC_SW_LINEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_surface_update*)* @get_plane_info_update_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_plane_info_update_type(%struct.dc_surface_update* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_surface_update*, align 8
  %4 = alloca %union.surface_update_flags*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_surface_update* %0, %struct.dc_surface_update** %3, align 8
  %6 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %7 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %6, i32 0, i32 1
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 11
  store %union.surface_update_flags* %9, %union.surface_update_flags** %4, align 8
  %10 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %12 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %16, i32* %2, align 4
  br label %312

17:                                               ; preds = %1
  %18 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %19 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %24 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %22, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %31 = bitcast %union.surface_update_flags* %30 to %struct.TYPE_17__*
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %34 = call i32 @elevate_update_type(i32* %5, i32 %33)
  br label %35

35:                                               ; preds = %29, %17
  %36 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %37 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %42 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %49 = bitcast %union.surface_update_flags* %48 to %struct.TYPE_17__*
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %52 = call i32 @elevate_update_type(i32* %5, i32 %51)
  br label %53

53:                                               ; preds = %47, %35
  %54 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %55 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %60 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %67 = bitcast %union.surface_update_flags* %66 to %struct.TYPE_17__*
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %70 = call i32 @elevate_update_type(i32* %5, i32 %69)
  br label %71

71:                                               ; preds = %65, %53
  %72 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %73 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %78 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %85 = bitcast %union.surface_update_flags* %84 to %struct.TYPE_17__*
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %88 = call i32 @elevate_update_type(i32* %5, i32 %87)
  br label %89

89:                                               ; preds = %83, %71
  %90 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %91 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %96 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %103 = bitcast %union.surface_update_flags* %102 to %struct.TYPE_17__*
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %106 = call i32 @elevate_update_type(i32* %5, i32 %105)
  br label %107

107:                                              ; preds = %101, %89
  %108 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %109 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %114 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %112, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %107
  %120 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %121 = bitcast %union.surface_update_flags* %120 to %struct.TYPE_17__*
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 5
  store i32 1, i32* %122, align 4
  %123 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %124 = call i32 @elevate_update_type(i32* %5, i32 %123)
  br label %125

125:                                              ; preds = %119, %107
  %126 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %127 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %132 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %130, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %139 = bitcast %union.surface_update_flags* %138 to %struct.TYPE_17__*
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 6
  store i32 1, i32* %140, align 4
  %141 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %142 = call i32 @elevate_update_type(i32* %5, i32 %141)
  br label %143

143:                                              ; preds = %137, %125
  %144 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %145 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %144, i32 0, i32 0
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %150 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %148, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %143
  %156 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %157 = bitcast %union.surface_update_flags* %156 to %struct.TYPE_17__*
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 7
  store i32 1, i32* %158, align 4
  %159 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %160 = call i32 @elevate_update_type(i32* %5, i32 %159)
  br label %161

161:                                              ; preds = %155, %143
  %162 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %163 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %162, i32 0, i32 0
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 10
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %169 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %168, i32 0, i32 1
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %167, %173
  br i1 %174, label %203, label %175

175:                                              ; preds = %161
  %176 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %177 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %176, i32 0, i32 0
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 10
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %183 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 10
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %181, %187
  br i1 %188, label %203, label %189

189:                                              ; preds = %175
  %190 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %191 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %190, i32 0, i32 0
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %197 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %196, i32 0, i32 1
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %195, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %189, %175, %161
  %204 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %205 = bitcast %union.surface_update_flags* %204 to %struct.TYPE_17__*
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 8
  store i32 1, i32* %206, align 4
  %207 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %208 = call i32 @elevate_update_type(i32* %5, i32 %207)
  br label %209

209:                                              ; preds = %203, %189
  %210 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %211 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %210, i32 0, i32 0
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @resource_pixel_format_to_bpp(i64 %214)
  %216 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %217 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %216, i32 0, i32 1
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @resource_pixel_format_to_bpp(i64 %220)
  %222 = icmp ne i64 %215, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %209
  %224 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %225 = bitcast %union.surface_update_flags* %224 to %struct.TYPE_17__*
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 9
  store i32 1, i32* %226, align 4
  %227 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %228 = call i32 @elevate_update_type(i32* %5, i32 %227)
  br label %229

229:                                              ; preds = %223, %209
  %230 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %231 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %230, i32 0, i32 0
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 9
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %237 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %236, i32 0, i32 1
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 9
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %235, %241
  br i1 %242, label %271, label %243

243:                                              ; preds = %229
  %244 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %245 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %244, i32 0, i32 0
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 9
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %251 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %250, i32 0, i32 1
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %249, %255
  br i1 %256, label %271, label %257

257:                                              ; preds = %243
  %258 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %259 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %258, i32 0, i32 0
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %265 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %264, i32 0, i32 1
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 9
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %263, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %257, %243, %229
  %272 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %273 = bitcast %union.surface_update_flags* %272 to %struct.TYPE_17__*
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 10
  store i32 1, i32* %274, align 4
  %275 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %276 = call i32 @elevate_update_type(i32* %5, i32 %275)
  br label %277

277:                                              ; preds = %271, %257
  %278 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %279 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %278, i32 0, i32 0
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 8
  %282 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %283 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %282, i32 0, i32 1
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 8
  %286 = call i64 @memcmp(%struct.TYPE_18__* %281, i32* %285, i32 4)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %310

288:                                              ; preds = %277
  %289 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %290 = bitcast %union.surface_update_flags* %289 to %struct.TYPE_17__*
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 11
  store i32 1, i32* %291, align 4
  %292 = load i32, i32* @UPDATE_TYPE_MED, align 4
  %293 = call i32 @elevate_update_type(i32* %5, i32 %292)
  %294 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %295 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %294, i32 0, i32 0
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @DC_SW_LINEAR, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %288
  %304 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %305 = bitcast %union.surface_update_flags* %304 to %struct.TYPE_17__*
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 12
  store i32 1, i32* %306, align 4
  %307 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %308 = call i32 @elevate_update_type(i32* %5, i32 %307)
  br label %309

309:                                              ; preds = %303, %288
  br label %310

310:                                              ; preds = %309, %277
  %311 = load i32, i32* %5, align 4
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %310, %15
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @elevate_update_type(i32*, i32) #1

declare dso_local i64 @resource_pixel_format_to_bpp(i64) #1

declare dso_local i64 @memcmp(%struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
