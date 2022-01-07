; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_8__*, %struct.bitmap_counts, %struct.bitmap_storage, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64 }
%struct.bitmap_counts = type { i64, i32, i64, i64, i32, %struct.bitmap_page* }
%struct.bitmap_page = type { i32, %struct.bitmap_page*, i32 }
%struct.bitmap_storage = type { i32, i64, i32* }

@.str = private unnamed_addr constant [37 x i8] c"md: cannot resize file-based bitmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITMAP_BLOCK_SHIFT = common dso_local global i32 0, align 4
@PAGE_COUNTER_RATIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Could not pre-allocate in-memory bitmap for cluster raid\0A\00", align 1
@NEEDED_MASK = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_bitmap_resize(%struct.bitmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_storage, align 8
  %11 = alloca %struct.bitmap_counts, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.bitmap_page*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %32 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %33 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %570

44:                                               ; preds = %37, %4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %44
  %48 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %49 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %21, align 8
  %54 = load i64, i64* %21, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %47
  %57 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @DIV_ROUND_UP(i64 %60, i32 8)
  store i64 %61, i64* %20, align 8
  %62 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %63 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %56
  %70 = load i64, i64* %20, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %20, align 8
  br label %72

72:                                               ; preds = %69, %56
  %73 = load i64, i64* %20, align 8
  %74 = call i64 @DIV_ROUND_UP(i64 %73, i32 512)
  store i64 %74, i64* %21, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %77 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 %75, i64* %80, align 8
  br label %81

81:                                               ; preds = %72, %47
  %82 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %83 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %108, %81
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %16, align 4
  %93 = shl i32 1, %92
  %94 = call i64 @DIV_ROUND_UP_SECTOR_T(i32 %91, i32 %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @DIV_ROUND_UP(i64 %95, i32 8)
  store i64 %96, i64* %20, align 8
  %97 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %98 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %88
  %105 = load i64, i64* %20, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %20, align 8
  br label %107

107:                                              ; preds = %104, %88
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* %21, align 8
  %111 = shl i64 %110, 9
  %112 = icmp sgt i64 %109, %111
  br i1 %112, label %88, label %113

113:                                              ; preds = %108
  br label %120

114:                                              ; preds = %44
  %115 = load i32, i32* %8, align 4
  %116 = xor i32 %115, -1
  %117 = call i32 @ffz(i32 %116)
  %118 = load i32, i32* @BITMAP_BLOCK_SHIFT, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %114, %113
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %16, align 4
  %123 = shl i32 1, %122
  %124 = call i64 @DIV_ROUND_UP_SECTOR_T(i32 %121, i32 %123)
  store i64 %124, i64* %12, align 8
  %125 = call i32 @memset(%struct.bitmap_storage* %10, i32 0, i32 24)
  %126 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %127 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %120
  %134 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %135 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %133, %120
  %142 = load i64, i64* %12, align 8
  %143 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %144 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %153 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = call i64 @mddev_is_clustered(%struct.TYPE_8__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %141
  %158 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %159 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  br label %162

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %160, %157 ], [ 0, %161 ]
  %164 = call i32 @md_bitmap_storage_alloc(%struct.bitmap_storage* %10, i64 %142, i32 %151, i32 %163)
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %162, %133
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @md_bitmap_file_unmap(%struct.bitmap_storage* %10)
  br label %568

170:                                              ; preds = %165
  %171 = load i64, i64* %12, align 8
  %172 = load i32, i32* @PAGE_COUNTER_RATIO, align 4
  %173 = call i64 @DIV_ROUND_UP(i64 %171, i32 %172)
  store i64 %173, i64* %18, align 8
  %174 = load i64, i64* %18, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call %struct.bitmap_page* @kcalloc(i64 %174, i32 24, i32 %175)
  store %struct.bitmap_page* %176, %struct.bitmap_page** %19, align 8
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %17, align 4
  %179 = load %struct.bitmap_page*, %struct.bitmap_page** %19, align 8
  %180 = icmp ne %struct.bitmap_page* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %170
  %182 = call i32 @md_bitmap_file_unmap(%struct.bitmap_storage* %10)
  br label %568

183:                                              ; preds = %170
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %188 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %192, align 8
  %194 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %195 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = call i32 %193(%struct.TYPE_8__* %196, i32 1)
  br label %198

198:                                              ; preds = %186, %183
  %199 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %200 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %10, i32 0, i32 2
  store i32* %202, i32** %203, align 8
  %204 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %205 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %205, i32 0, i32 2
  store i32* null, i32** %206, align 8
  %207 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %10, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %198
  %211 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %212 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %10, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @page_address(i64 %218)
  %220 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %221 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @page_address(i64 %223)
  %225 = call i32 @memcpy(i32 %219, i32 %224, i32 4)
  br label %226

226:                                              ; preds = %216, %210, %198
  %227 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %228 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %227, i32 0, i32 2
  %229 = call i32 @md_bitmap_file_unmap(%struct.bitmap_storage* %228)
  %230 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %231 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %230, i32 0, i32 2
  %232 = bitcast %struct.bitmap_storage* %231 to i8*
  %233 = bitcast %struct.bitmap_storage* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %232, i8* align 8 %233, i64 24, i1 false)
  %234 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %235 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %234, i32 0, i32 1
  %236 = bitcast %struct.bitmap_counts* %11 to i8*
  %237 = bitcast %struct.bitmap_counts* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 8 %237, i64 48, i1 false)
  %238 = load %struct.bitmap_page*, %struct.bitmap_page** %19, align 8
  %239 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %240 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %240, i32 0, i32 5
  store %struct.bitmap_page* %238, %struct.bitmap_page** %241, align 8
  %242 = load i64, i64* %18, align 8
  %243 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %244 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %244, i32 0, i32 2
  store i64 %242, i64* %245, align 8
  %246 = load i64, i64* %18, align 8
  %247 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %248 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %248, i32 0, i32 3
  store i64 %246, i64* %249, align 8
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %252 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %256 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %256, i32 0, i32 0
  store i64 %254, i64* %257, align 8
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @BITMAP_BLOCK_SHIFT, align 4
  %260 = add nsw i32 %258, %259
  %261 = shl i32 1, %260
  %262 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %263 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %262, i32 0, i32 0
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  store i32 %261, i32* %266, align 8
  %267 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = zext i32 %270 to i64
  %272 = shl i64 %268, %271
  %273 = trunc i64 %272 to i32
  %274 = load i64, i64* %12, align 8
  %275 = load i32, i32* %16, align 4
  %276 = zext i32 %275 to i64
  %277 = shl i64 %274, %276
  %278 = call i32 @min(i32 %273, i64 %277)
  store i32 %278, i32* %7, align 4
  %279 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %280 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %280, i32 0, i32 4
  %282 = call i32 @spin_lock_irq(i32* %281)
  %283 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %284 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %283, i32 0, i32 0
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = call i64 @mddev_is_clustered(%struct.TYPE_8__* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %376

288:                                              ; preds = %226
  store i64 0, i64* %22, align 8
  br label %289

289:                                              ; preds = %372, %288
  %290 = load i64, i64* %22, align 8
  %291 = load i64, i64* %18, align 8
  %292 = icmp ult i64 %290, %291
  br i1 %292, label %293, label %375

293:                                              ; preds = %289
  %294 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %295 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %294, i32 0, i32 1
  %296 = load i64, i64* %22, align 8
  %297 = call i32 @md_bitmap_checkpage(%struct.bitmap_counts* %295, i64 %296, i32 1, i32 1)
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %361

300:                                              ; preds = %293
  store i64 0, i64* %23, align 8
  br label %301

301:                                              ; preds = %312, %300
  %302 = load i64, i64* %23, align 8
  %303 = load i64, i64* %22, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load %struct.bitmap_page*, %struct.bitmap_page** %19, align 8
  %307 = load i64, i64* %23, align 8
  %308 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %306, i64 %307
  %309 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %308, i32 0, i32 1
  %310 = load %struct.bitmap_page*, %struct.bitmap_page** %309, align 8
  %311 = call i32 @kfree(%struct.bitmap_page* %310)
  br label %312

312:                                              ; preds = %305
  %313 = load i64, i64* %23, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %23, align 8
  br label %301

315:                                              ; preds = %301
  %316 = load %struct.bitmap_page*, %struct.bitmap_page** %19, align 8
  %317 = call i32 @kfree(%struct.bitmap_page* %316)
  %318 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 5
  %319 = load %struct.bitmap_page*, %struct.bitmap_page** %318, align 8
  %320 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %321 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %321, i32 0, i32 5
  store %struct.bitmap_page* %319, %struct.bitmap_page** %322, align 8
  %323 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %326 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %326, i32 0, i32 2
  store i64 %324, i64* %327, align 8
  %328 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %331 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %331, i32 0, i32 3
  store i64 %329, i64* %332, align 8
  %333 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %336 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %336, i32 0, i32 1
  store i32 %334, i32* %337, align 8
  %338 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %341 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %341, i32 0, i32 0
  store i64 %339, i64* %342, align 8
  %343 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @BITMAP_BLOCK_SHIFT, align 4
  %346 = add nsw i32 %344, %345
  %347 = shl i32 1, %346
  %348 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %349 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %348, i32 0, i32 0
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  store i32 %347, i32* %352, align 8
  %353 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = zext i32 %356 to i64
  %358 = shl i64 %354, %357
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %7, align 4
  %360 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %375

361:                                              ; preds = %293
  %362 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %363 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %363, i32 0, i32 5
  %365 = load %struct.bitmap_page*, %struct.bitmap_page** %364, align 8
  %366 = load i64, i64* %22, align 8
  %367 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %365, i64 %366
  %368 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %361
  br label %372

372:                                              ; preds = %371
  %373 = load i64, i64* %22, align 8
  %374 = add i64 %373, 1
  store i64 %374, i64* %22, align 8
  br label %289

375:                                              ; preds = %315, %289
  br label %376

376:                                              ; preds = %375, %226
  store i32 0, i32* %13, align 4
  br label %377

377:                                              ; preds = %447, %376
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* %7, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %451

381:                                              ; preds = %377
  %382 = load i32, i32* %13, align 4
  %383 = call i32* @md_bitmap_get_counter(%struct.bitmap_counts* %11, i32 %382, i32* %14, i32 0)
  store i32* %383, i32** %24, align 8
  %384 = load i32*, i32** %24, align 8
  %385 = icmp ne i32* %384, null
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load i32*, i32** %24, align 8
  %388 = load i32, i32* %387, align 4
  %389 = call i64 @NEEDED(i32 %388)
  %390 = icmp ne i64 %389, 0
  br label %391

391:                                              ; preds = %386, %381
  %392 = phi i1 [ false, %381 ], [ %390, %386 ]
  %393 = zext i1 %392 to i32
  store i32 %393, i32* %26, align 4
  %394 = load i32, i32* %26, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %447

396:                                              ; preds = %391
  %397 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %398 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %397, i32 0, i32 1
  %399 = load i32, i32* %13, align 4
  %400 = call i32* @md_bitmap_get_counter(%struct.bitmap_counts* %398, i32 %399, i32* %15, i32 1)
  store i32* %400, i32** %25, align 8
  %401 = load i32*, i32** %25, align 8
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %436

404:                                              ; preds = %396
  %405 = load i32, i32* %13, align 4
  %406 = load i32, i32* %15, align 4
  %407 = add nsw i32 %405, %406
  store i32 %407, i32* %27, align 4
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %16, align 4
  %410 = ashr i32 %408, %409
  store i32 %410, i32* %28, align 4
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %28, align 4
  %413 = shl i32 %412, %411
  store i32 %413, i32* %28, align 4
  br label %414

414:                                              ; preds = %418, %404
  %415 = load i32, i32* %28, align 4
  %416 = load i32, i32* %27, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %426

418:                                              ; preds = %414
  %419 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %420 = load i32, i32* %13, align 4
  %421 = call i32 @md_bitmap_file_set_bit(%struct.bitmap* %419, i32 %420)
  %422 = load i32, i32* %16, align 4
  %423 = shl i32 1, %422
  %424 = load i32, i32* %28, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %28, align 4
  br label %414

426:                                              ; preds = %414
  %427 = load i32*, i32** %25, align 8
  store i32 2, i32* %427, align 4
  %428 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %429 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %428, i32 0, i32 1
  %430 = load i32, i32* %13, align 4
  %431 = call i32 @md_bitmap_count_page(%struct.bitmap_counts* %429, i32 %430, i32 1)
  %432 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %433 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %432, i32 0, i32 1
  %434 = load i32, i32* %13, align 4
  %435 = call i32 @md_bitmap_set_pending(%struct.bitmap_counts* %433, i32 %434)
  br label %436

436:                                              ; preds = %426, %396
  %437 = load i32, i32* @NEEDED_MASK, align 4
  %438 = load i32*, i32** %25, align 8
  %439 = load i32, i32* %438, align 4
  %440 = or i32 %439, %437
  store i32 %440, i32* %438, align 4
  %441 = load i32, i32* %15, align 4
  %442 = load i32, i32* %14, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %436
  %445 = load i32, i32* %15, align 4
  store i32 %445, i32* %14, align 4
  br label %446

446:                                              ; preds = %444, %436
  br label %447

447:                                              ; preds = %446, %391
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* %13, align 4
  %450 = add nsw i32 %449, %448
  store i32 %450, i32* %13, align 4
  br label %377

451:                                              ; preds = %377
  %452 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %453 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %453, i32 0, i32 5
  %455 = load %struct.bitmap_page*, %struct.bitmap_page** %454, align 8
  %456 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 5
  %457 = load %struct.bitmap_page*, %struct.bitmap_page** %456, align 8
  %458 = icmp ne %struct.bitmap_page* %455, %457
  br i1 %458, label %459, label %489

459:                                              ; preds = %451
  store i64 0, i64* %29, align 8
  br label %460

460:                                              ; preds = %482, %459
  %461 = load i64, i64* %29, align 8
  %462 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 2
  %463 = load i64, i64* %462, align 8
  %464 = icmp ult i64 %461, %463
  br i1 %464, label %465, label %485

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 5
  %467 = load %struct.bitmap_page*, %struct.bitmap_page** %466, align 8
  %468 = load i64, i64* %29, align 8
  %469 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %467, i64 %468
  %470 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %481, label %473

473:                                              ; preds = %465
  %474 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 5
  %475 = load %struct.bitmap_page*, %struct.bitmap_page** %474, align 8
  %476 = load i64, i64* %29, align 8
  %477 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %475, i64 %476
  %478 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %477, i32 0, i32 1
  %479 = load %struct.bitmap_page*, %struct.bitmap_page** %478, align 8
  %480 = call i32 @kfree(%struct.bitmap_page* %479)
  br label %481

481:                                              ; preds = %473, %465
  br label %482

482:                                              ; preds = %481
  %483 = load i64, i64* %29, align 8
  %484 = add i64 %483, 1
  store i64 %484, i64* %29, align 8
  br label %460

485:                                              ; preds = %460
  %486 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %11, i32 0, i32 5
  %487 = load %struct.bitmap_page*, %struct.bitmap_page** %486, align 8
  %488 = call i32 @kfree(%struct.bitmap_page* %487)
  br label %489

489:                                              ; preds = %485, %451
  %490 = load i32, i32* %9, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %546, label %492

492:                                              ; preds = %489
  br label %493

493:                                              ; preds = %525, %492
  %494 = load i32, i32* %13, align 4
  %495 = sext i32 %494 to i64
  %496 = load i64, i64* %12, align 8
  %497 = load i32, i32* %16, align 4
  %498 = zext i32 %497 to i64
  %499 = shl i64 %496, %498
  %500 = icmp ult i64 %495, %499
  br i1 %500, label %501, label %529

501:                                              ; preds = %493
  %502 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %503 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %502, i32 0, i32 1
  %504 = load i32, i32* %13, align 4
  %505 = call i32* @md_bitmap_get_counter(%struct.bitmap_counts* %503, i32 %504, i32* %15, i32 1)
  store i32* %505, i32** %31, align 8
  %506 = load i32*, i32** %31, align 8
  %507 = icmp ne i32* %506, null
  br i1 %507, label %508, label %525

508:                                              ; preds = %501
  %509 = load i32*, i32** %31, align 8
  %510 = load i32, i32* %509, align 4
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %524

512:                                              ; preds = %508
  %513 = load i32, i32* @NEEDED_MASK, align 4
  %514 = or i32 %513, 2
  %515 = load i32*, i32** %31, align 8
  store i32 %514, i32* %515, align 4
  %516 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %517 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %516, i32 0, i32 1
  %518 = load i32, i32* %13, align 4
  %519 = call i32 @md_bitmap_count_page(%struct.bitmap_counts* %517, i32 %518, i32 1)
  %520 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %521 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %520, i32 0, i32 1
  %522 = load i32, i32* %13, align 4
  %523 = call i32 @md_bitmap_set_pending(%struct.bitmap_counts* %521, i32 %522)
  br label %524

524:                                              ; preds = %512, %508
  br label %525

525:                                              ; preds = %524, %501
  %526 = load i32, i32* %15, align 4
  %527 = load i32, i32* %13, align 4
  %528 = add nsw i32 %527, %526
  store i32 %528, i32* %13, align 4
  br label %493

529:                                              ; preds = %493
  store i32 0, i32* %30, align 4
  br label %530

530:                                              ; preds = %542, %529
  %531 = load i32, i32* %30, align 4
  %532 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %533 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = icmp slt i32 %531, %535
  br i1 %536, label %537, label %545

537:                                              ; preds = %530
  %538 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %539 = load i32, i32* %30, align 4
  %540 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %541 = call i32 @set_page_attr(%struct.bitmap* %538, i32 %539, i32 %540)
  br label %542

542:                                              ; preds = %537
  %543 = load i32, i32* %30, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %30, align 4
  br label %530

545:                                              ; preds = %530
  br label %546

546:                                              ; preds = %545, %489
  %547 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %548 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %548, i32 0, i32 4
  %550 = call i32 @spin_unlock_irq(i32* %549)
  %551 = load i32, i32* %9, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %567, label %553

553:                                              ; preds = %546
  %554 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %555 = call i32 @md_bitmap_unplug(%struct.bitmap* %554)
  %556 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %557 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %556, i32 0, i32 0
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_7__*, %struct.TYPE_7__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 0
  %562 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %561, align 8
  %563 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %564 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %563, i32 0, i32 0
  %565 = load %struct.TYPE_8__*, %struct.TYPE_8__** %564, align 8
  %566 = call i32 %562(%struct.TYPE_8__* %565, i32 0)
  br label %567

567:                                              ; preds = %553, %546
  store i32 0, i32* %17, align 4
  br label %568

568:                                              ; preds = %567, %181, %168
  %569 = load i32, i32* %17, align 4
  store i32 %569, i32* %5, align 4
  br label %570

570:                                              ; preds = %568, %40
  %571 = load i32, i32* %5, align 4
  ret i32 %571
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP_SECTOR_T(i32, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @memset(%struct.bitmap_storage*, i32, i32) #1

declare dso_local i32 @md_bitmap_storage_alloc(%struct.bitmap_storage*, i64, i32, i32) #1

declare dso_local i64 @mddev_is_clustered(%struct.TYPE_8__*) #1

declare dso_local i32 @md_bitmap_file_unmap(%struct.bitmap_storage*) #1

declare dso_local %struct.bitmap_page* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @md_bitmap_checkpage(%struct.bitmap_counts*, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.bitmap_page*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.bitmap_counts*, i32, i32*, i32) #1

declare dso_local i64 @NEEDED(i32) #1

declare dso_local i32 @md_bitmap_file_set_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @md_bitmap_count_page(%struct.bitmap_counts*, i32, i32) #1

declare dso_local i32 @md_bitmap_set_pending(%struct.bitmap_counts*, i32) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @md_bitmap_unplug(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
