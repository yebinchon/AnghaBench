; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32, i32, i32, i64, i32 }
%struct.alps_fields = type { %struct.input_mt_pos*, %struct.input_mt_pos, i32, i32 }
%struct.input_mt_pos = type { i32, i32 }
%struct.alps_bitmap_point = type { i32, i32, i32 }

@ALPS_PROTO_V5 = common dso_local global i64 0, align 8
@ALPS_PROTO_V3 = common dso_local global i64 0, align 8
@ALPS_PROTO_V4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_data*, %struct.alps_fields*)* @alps_process_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_process_bitmap(%struct.alps_data* %0, %struct.alps_fields* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca %struct.alps_fields*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.alps_bitmap_point, align 4
  %12 = alloca %struct.alps_bitmap_point, align 4
  %13 = alloca %struct.alps_bitmap_point, align 4
  %14 = alloca %struct.alps_bitmap_point, align 4
  %15 = alloca [4 x %struct.input_mt_pos], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.alps_data* %0, %struct.alps_data** %4, align 8
  store %struct.alps_fields* %1, %struct.alps_fields** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = bitcast %struct.alps_bitmap_point* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 12, i1 false)
  %20 = bitcast %struct.alps_bitmap_point* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = bitcast %struct.alps_bitmap_point* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  %22 = bitcast %struct.alps_bitmap_point* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  %23 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %24 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %29 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %381

33:                                               ; preds = %27
  %34 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %35 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @alps_get_bitmap_points(i32 %36, %struct.alps_bitmap_point* %11, %struct.alps_bitmap_point* %12, i32* %7)
  %38 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %39 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @alps_get_bitmap_points(i32 %40, %struct.alps_bitmap_point* %13, %struct.alps_bitmap_point* %14, i32* %8)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @max(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %67

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %6, align 4
  %53 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @max(i32 %63, i32 1)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %48, %33
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %6, align 4
  %75 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %76, %77
  %79 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  %84 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i8* @max(i32 %85, i32 1)
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %70, %67
  %90 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %91 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 2, %94
  %96 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %95, %97
  %99 = sub nsw i32 %98, 1
  %100 = mul nsw i32 %92, %99
  %101 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %102 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = mul nsw i32 2, %104
  %106 = sdiv i32 %100, %105
  %107 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 0
  %108 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 16
  %109 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %110 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 2, %113
  %115 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %114, %116
  %118 = sub nsw i32 %117, 1
  %119 = mul nsw i32 %111, %118
  %120 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %121 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = mul nsw i32 2, %123
  %125 = sdiv i32 %119, %124
  %126 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 0
  %127 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %129 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 2, %132
  %134 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %133, %135
  %137 = sub nsw i32 %136, 1
  %138 = mul nsw i32 %130, %137
  %139 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %140 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = mul nsw i32 2, %142
  %144 = sdiv i32 %138, %143
  %145 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 1
  %146 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %148 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 2, %151
  %153 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %13, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %152, %154
  %156 = sub nsw i32 %155, 1
  %157 = mul nsw i32 %149, %156
  %158 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %159 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = mul nsw i32 2, %161
  %163 = sdiv i32 %157, %162
  %164 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 1
  %165 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %167 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 2, %170
  %172 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %12, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %171, %173
  %175 = sub nsw i32 %174, 1
  %176 = mul nsw i32 %168, %175
  %177 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %178 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = mul nsw i32 2, %180
  %182 = sdiv i32 %176, %181
  %183 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 2
  %184 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 16
  %185 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %186 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 2, %189
  %191 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %190, %192
  %194 = sub nsw i32 %193, 1
  %195 = mul nsw i32 %187, %194
  %196 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %197 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 1
  %200 = mul nsw i32 2, %199
  %201 = sdiv i32 %195, %200
  %202 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 2
  %203 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %205 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 2, %208
  %210 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %11, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %209, %211
  %213 = sub nsw i32 %212, 1
  %214 = mul nsw i32 %206, %213
  %215 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %216 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 1
  %219 = mul nsw i32 2, %218
  %220 = sdiv i32 %214, %219
  %221 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 3
  %222 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %224 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 2, %227
  %229 = getelementptr inbounds %struct.alps_bitmap_point, %struct.alps_bitmap_point* %14, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %228, %230
  %232 = sub nsw i32 %231, 1
  %233 = mul nsw i32 %225, %232
  %234 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %235 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = mul nsw i32 2, %237
  %239 = sdiv i32 %233, %238
  %240 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 3
  %241 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %243 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @ALPS_PROTO_V5, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %248

248:                                              ; preds = %265, %247
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %249, 4
  br i1 %250, label %251, label %268

251:                                              ; preds = %248
  %252 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %253 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %256
  %258 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %254, %259
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %262
  %264 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 8
  br label %265

265:                                              ; preds = %251
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %6, align 4
  br label %248

268:                                              ; preds = %248
  br label %269

269:                                              ; preds = %268, %89
  %270 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %271 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @ALPS_PROTO_V3, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %269
  %276 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %277 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @ALPS_PROTO_V4, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %303

281:                                              ; preds = %275, %269
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %299, %281
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %287 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %288, %293
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %297, i32 0, i32 1
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %285
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %6, align 4
  br label %282

302:                                              ; preds = %282
  br label %303

303:                                              ; preds = %302, %275
  %304 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %305 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %360

308:                                              ; preds = %303
  store i32 2147483647, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %309

309:                                              ; preds = %349, %308
  %310 = load i32, i32* %6, align 4
  %311 = icmp slt i32 %310, 4
  br i1 %311, label %312, label %352

312:                                              ; preds = %309
  %313 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %314 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %318
  %320 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %316, %321
  store i32 %322, i32* %16, align 4
  %323 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %324 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %6, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %328
  %330 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %326, %331
  store i32 %332, i32* %17, align 4
  %333 = load i32, i32* %16, align 4
  %334 = load i32, i32* %16, align 4
  %335 = mul nsw i32 %333, %334
  %336 = load i32, i32* %17, align 4
  %337 = load i32, i32* %17, align 4
  %338 = mul nsw i32 %336, %337
  %339 = add nsw i32 %335, %338
  store i32 %339, i32* %18, align 4
  %340 = load i32, i32* %18, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %312
  %344 = load i32, i32* %6, align 4
  %345 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %346 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* %18, align 4
  store i32 %347, i32* %10, align 4
  br label %348

348:                                              ; preds = %343, %312
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %6, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %6, align 4
  br label %309

352:                                              ; preds = %309
  %353 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %354 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 2
  %357 = srem i32 %356, 4
  %358 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %359 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %358, i32 0, i32 5
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %352, %303
  %361 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %362 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %361, i32 0, i32 0
  %363 = load %struct.input_mt_pos*, %struct.input_mt_pos** %362, align 8
  %364 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %363, i64 0
  %365 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %366 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %365, i32 0, i32 1
  %367 = bitcast %struct.input_mt_pos* %364 to i8*
  %368 = bitcast %struct.input_mt_pos* %366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %367, i8* align 8 %368, i64 8, i1 false)
  %369 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %370 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %369, i32 0, i32 0
  %371 = load %struct.input_mt_pos*, %struct.input_mt_pos** %370, align 8
  %372 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %371, i64 1
  %373 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %374 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [4 x %struct.input_mt_pos], [4 x %struct.input_mt_pos]* %15, i64 0, i64 %376
  %378 = bitcast %struct.input_mt_pos* %372 to i8*
  %379 = bitcast %struct.input_mt_pos* %377 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %378, i8* align 8 %379, i64 8, i1 false)
  %380 = load i32, i32* %9, align 4
  store i32 %380, i32* %3, align 4
  br label %381

381:                                              ; preds = %360, %32
  %382 = load i32, i32* %3, align 4
  ret i32 %382
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alps_get_bitmap_points(i32, %struct.alps_bitmap_point*, %struct.alps_bitmap_point*, i32*) #2

declare dso_local i8* @max(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
