; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_scaling_info_update_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_get_scaling_info_update_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_surface_update = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_11__, %union.surface_update_flags }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%union.surface_update_flags = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@UPDATE_TYPE_FAST = common dso_local global i32 0, align 4
@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@UPDATE_TYPE_MED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_surface_update*)* @get_scaling_info_update_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scaling_info_update_type(%struct.dc_surface_update* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_surface_update*, align 8
  %4 = alloca %union.surface_update_flags*, align 8
  store %struct.dc_surface_update* %0, %struct.dc_surface_update** %3, align 8
  %5 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %6 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %5, i32 0, i32 0
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store %union.surface_update_flags* %8, %union.surface_update_flags** %4, align 8
  %9 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %10 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %14, i32* %2, align 4
  br label %317

15:                                               ; preds = %1
  %16 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %17 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %23 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %71, label %29

29:                                               ; preds = %15
  %30 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %31 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %37 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %71, label %43

43:                                               ; preds = %29
  %44 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %45 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %51 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %49, %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %43
  %58 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %59 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %58, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %65 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %63, %69
  br i1 %70, label %71, label %135

71:                                               ; preds = %57, %43, %29, %15
  %72 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %73 = bitcast %union.surface_update_flags* %72 to %struct.TYPE_18__*
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %76 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %82 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %80, %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %71
  %89 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %90 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %96 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %95, i32 0, i32 0
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %94, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %88, %71
  %103 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %104 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %103, i32 0, i32 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %110 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %108, %114
  br i1 %115, label %130, label %116

116:                                              ; preds = %102
  %117 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %118 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %124 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %122, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %116, %102
  %131 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %132 = bitcast %union.surface_update_flags* %131 to %struct.TYPE_18__*
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %116, %88
  br label %135

135:                                              ; preds = %134, %57
  %136 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %137 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %143 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %142, i32 0, i32 0
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %141, %147
  br i1 %148, label %163, label %149

149:                                              ; preds = %135
  %150 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %151 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %150, i32 0, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %157 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %155, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %149, %135
  %164 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %165 = bitcast %union.surface_update_flags* %164 to %struct.TYPE_18__*
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 4
  %167 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %168 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %167, i32 0, i32 1
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %174 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %173, i32 0, i32 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %172, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %163
  %181 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %182 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %188 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %187, i32 0, i32 0
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %186, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %180
  %195 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %196 = bitcast %union.surface_update_flags* %195 to %struct.TYPE_18__*
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %180, %163
  br label %199

199:                                              ; preds = %198, %149
  %200 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %201 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %207 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %206, i32 0, i32 0
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %205, %211
  br i1 %212, label %283, label %213

213:                                              ; preds = %199
  %214 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %215 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %214, i32 0, i32 1
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %221 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %220, i32 0, i32 0
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %219, %225
  br i1 %226, label %283, label %227

227:                                              ; preds = %213
  %228 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %229 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %228, i32 0, i32 1
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %235 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %234, i32 0, i32 0
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %233, %239
  br i1 %240, label %283, label %241

241:                                              ; preds = %227
  %242 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %243 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %242, i32 0, i32 1
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %249 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %248, i32 0, i32 0
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %247, %253
  br i1 %254, label %283, label %255

255:                                              ; preds = %241
  %256 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %257 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %256, i32 0, i32 1
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %263 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %262, i32 0, i32 0
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %261, %267
  br i1 %268, label %283, label %269

269:                                              ; preds = %255
  %270 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %271 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %270, i32 0, i32 1
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.dc_surface_update*, %struct.dc_surface_update** %3, align 8
  %277 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %276, i32 0, i32 0
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %275, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %269, %255, %241, %227, %213, %199
  %284 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %285 = bitcast %union.surface_update_flags* %284 to %struct.TYPE_18__*
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 3
  store i32 1, i32* %286, align 4
  br label %287

287:                                              ; preds = %283, %269
  %288 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %289 = bitcast %union.surface_update_flags* %288 to %struct.TYPE_18__*
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %295 = bitcast %union.surface_update_flags* %294 to %struct.TYPE_18__*
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %293, %287
  %300 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  store i32 %300, i32* %2, align 4
  br label %317

301:                                              ; preds = %293
  %302 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %303 = bitcast %union.surface_update_flags* %302 to %struct.TYPE_18__*
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %301
  %308 = load %union.surface_update_flags*, %union.surface_update_flags** %4, align 8
  %309 = bitcast %union.surface_update_flags* %308 to %struct.TYPE_18__*
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307, %301
  %314 = load i32, i32* @UPDATE_TYPE_MED, align 4
  store i32 %314, i32* %2, align 4
  br label %317

315:                                              ; preds = %307
  %316 = load i32, i32* @UPDATE_TYPE_FAST, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %315, %313, %299, %13
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
