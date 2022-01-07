; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_set_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_25__, %struct.TYPE_22__*, %struct.TYPE_33__* }
%struct.TYPE_25__ = type { %struct.TYPE_23__, %struct.dpp*, %struct.hubp* }
%struct.TYPE_23__ = type { %struct.TYPE_24__, %struct.TYPE_34__ }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.dpp = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.dpp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*, i64, i32)* }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i32 }
%struct.dc_cursor_mi_param = type { i32, i64, i32, i32, i32, %struct.TYPE_24__, i32 }
%struct.hubp = type { %struct.TYPE_20__, %struct.TYPE_26__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32 (%struct.hubp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_28__, %struct.dc_cursor_position }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }

@PLN_ADDR_TYPE_VIDEO_PROGRESSIVE = common dso_local global i64 0, align 8
@ROTATION_ANGLE_90 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_270 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_180 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn10_set_cursor_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_set_cursor_position(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_cursor_position, align 4
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.dc_cursor_mi_param, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 2
  %18 = bitcast %struct.dc_cursor_position* %3 to i8*
  %19 = bitcast %struct.dc_cursor_position* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 20, i1 false)
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load %struct.hubp*, %struct.hubp** %22, align 8
  store %struct.hubp* %23, %struct.hubp** %4, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.dpp*, %struct.dpp** %26, align 8
  store %struct.dpp* %27, %struct.dpp** %5, align 8
  %28 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 0
  %29 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %29, i32 0, i32 2
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* %28, align 8
  %36 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 1
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %37, i32 0, i32 1
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %36, align 8
  %42 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 2
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 1
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %42, align 8
  %48 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 3
  %49 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %48, align 4
  %55 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 4
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %55, align 8
  %62 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 5
  %63 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = bitcast %struct.TYPE_24__* %62 to i8*
  %68 = bitcast %struct.TYPE_24__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 8 %68, i64 12, i1 false)
  %69 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 6
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %69, align 8
  %82 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %82, i32 0, i32 1
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %7, align 4
  %88 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %88, i32 0, i32 1
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @min(i32 %94, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @min(i32 %98, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %110, %111
  %113 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PLN_ADDR_TYPE_VIDEO_PROGRESSIVE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %1
  %131 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 2
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %1
  %133 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %11, align 4
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %149 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %147, %153
  %155 = sub nsw i32 %145, %154
  %156 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %155, %161
  %163 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %11, align 4
  %165 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  br label %331

166:                                              ; preds = %132
  %167 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ROTATION_ANGLE_270, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %219

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %12, align 4
  %174 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %177 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %175, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %171
  %184 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %187 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %185, %191
  %193 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %192, i32* %193, align 4
  %194 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %195 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %199, %201
  %203 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  store i32 %202, i32* %203, align 4
  br label %216

204:                                              ; preds = %171
  %205 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %206 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 2, %210
  %212 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %211, %213
  %215 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  store i32 %214, i32* %215, align 4
  br label %216

216:                                              ; preds = %204, %183
  %217 = load i32, i32* %12, align 4
  %218 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %217, i32* %218, align 4
  br label %330

219:                                              ; preds = %166
  %220 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %6, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ROTATION_ANGLE_180, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %329

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %228 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %234 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %232, %238
  %240 = icmp sge i32 %226, %239
  br i1 %240, label %241, label %261

241:                                              ; preds = %224
  %242 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %243 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 2, %247
  %249 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %248, %250
  %252 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %253 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 2, %257
  %259 = add nsw i32 %251, %258
  %260 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %259, i32* %260, align 4
  br label %318

261:                                              ; preds = %224
  %262 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %13, align 4
  %264 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %265 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 2, %269
  %271 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %270, %272
  %274 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %277 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.hubp*, %struct.hubp** %4, align 8
  %283 = getelementptr inbounds %struct.hubp, %struct.hubp* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = add nsw i32 %281, %286
  %288 = icmp sge i32 %275, %287
  br i1 %288, label %307, label %289

289:                                              ; preds = %261
  %290 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.hubp*, %struct.hubp** %4, align 8
  %294 = getelementptr inbounds %struct.hubp, %struct.hubp* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = sext i32 %297 to i64
  %299 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %300 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %299, i32 0, i32 1
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %298, %304
  %306 = icmp sle i64 %292, %305
  br i1 %306, label %307, label %317

307:                                              ; preds = %289, %261
  %308 = load i32, i32* %13, align 4
  %309 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %310 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %308, %314
  %316 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 0
  store i32 %315, i32* %316, align 4
  br label %317

317:                                              ; preds = %307, %289
  br label %318

318:                                              ; preds = %317, %241
  %319 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %320 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %324, %326
  %328 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %3, i32 0, i32 1
  store i32 %327, i32* %328, align 4
  br label %329

329:                                              ; preds = %318, %219
  br label %330

330:                                              ; preds = %329, %216
  br label %331

331:                                              ; preds = %330, %137
  %332 = load %struct.hubp*, %struct.hubp** %4, align 8
  %333 = getelementptr inbounds %struct.hubp, %struct.hubp* %332, i32 0, i32 1
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 0
  %336 = load i32 (%struct.hubp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)*, i32 (%struct.hubp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*)** %335, align 8
  %337 = load %struct.hubp*, %struct.hubp** %4, align 8
  %338 = call i32 %336(%struct.hubp* %337, %struct.dc_cursor_position* %3, %struct.dc_cursor_mi_param* %6)
  %339 = load %struct.dpp*, %struct.dpp** %5, align 8
  %340 = getelementptr inbounds %struct.dpp, %struct.dpp* %339, i32 0, i32 0
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 0
  %343 = load i32 (%struct.dpp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*, i64, i32)*, i32 (%struct.dpp*, %struct.dc_cursor_position*, %struct.dc_cursor_mi_param*, i64, i32)** %342, align 8
  %344 = load %struct.dpp*, %struct.dpp** %5, align 8
  %345 = load %struct.hubp*, %struct.hubp** %4, align 8
  %346 = getelementptr inbounds %struct.hubp, %struct.hubp* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.hubp*, %struct.hubp** %4, align 8
  %350 = getelementptr inbounds %struct.hubp, %struct.hubp* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 %343(%struct.dpp* %344, %struct.dc_cursor_position* %3, %struct.dc_cursor_mi_param* %6, i64 %348, i32 %352)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @min(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
