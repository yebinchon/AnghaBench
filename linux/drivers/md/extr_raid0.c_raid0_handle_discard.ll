; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_handle_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_handle_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, %struct.r0conf* }
%struct.r0conf = type { %struct.strip_zone*, %struct.md_rdev** }
%struct.strip_zone = type { i64, i32, i64 }
%struct.md_rdev = type { i32, i64 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.bio*)* @raid0_handle_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid0_handle_discard(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.r0conf*, align 8
  %6 = alloca %struct.strip_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bio*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bio*, align 8
  %21 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %22 = load %struct.mddev*, %struct.mddev** %3, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 3
  %24 = load %struct.r0conf*, %struct.r0conf** %23, align 8
  store %struct.r0conf* %24, %struct.r0conf** %5, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %30 = call %struct.strip_zone* @find_zone(%struct.r0conf* %29, i32* %7)
  store %struct.strip_zone* %30, %struct.strip_zone** %6, align 8
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = call i64 @bio_end_sector(%struct.bio* %31)
  %33 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %34 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %2
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %40 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %41, %46
  %48 = load i32, i32* @GFP_NOIO, align 4
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 2
  %51 = call %struct.bio* @bio_split(%struct.bio* %38, i64 %47, i32 %48, i32* %50)
  store %struct.bio* %51, %struct.bio** %17, align 8
  %52 = load %struct.bio*, %struct.bio** %17, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = call i32 @bio_chain(%struct.bio* %52, %struct.bio* %53)
  %55 = load %struct.bio*, %struct.bio** %4, align 8
  %56 = call i32 @generic_make_request(%struct.bio* %55)
  %57 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %57, %struct.bio** %4, align 8
  %58 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %59 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = call i64 @bio_end_sector(%struct.bio* %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %37
  %67 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %68 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %69 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %68, i32 0, i32 0
  %70 = load %struct.strip_zone*, %struct.strip_zone** %69, align 8
  %71 = icmp ne %struct.strip_zone* %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %76 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %75, i64 -1
  %77 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %72, %66
  %82 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %83 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mddev*, %struct.mddev** %3, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %84, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @sector_div(i32 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @sector_div(i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul i32 %98, %99
  %101 = sub i32 %97, %100
  %102 = load %struct.mddev*, %struct.mddev** %3, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = udiv i32 %101, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = mul i32 %107, %108
  %110 = sub i32 %106, %109
  %111 = load %struct.mddev*, %struct.mddev** %3, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = urem i32 %110, %113
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.mddev*, %struct.mddev** %3, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul i32 %115, %118
  %120 = add i32 %114, %119
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = mul i32 %122, %123
  %125 = sub i32 %121, %124
  %126 = load %struct.mddev*, %struct.mddev** %3, align 8
  %127 = getelementptr inbounds %struct.mddev, %struct.mddev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = udiv i32 %125, %128
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul i32 %131, %132
  %134 = sub i32 %130, %133
  %135 = load %struct.mddev*, %struct.mddev** %3, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = urem i32 %134, %137
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.mddev*, %struct.mddev** %3, align 8
  %141 = getelementptr inbounds %struct.mddev, %struct.mddev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul i32 %139, %142
  %144 = add i32 %138, %143
  store i32 %144, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %282, %81
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %148 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ult i32 %146, %149
  br i1 %150, label %151, label %285

151:                                              ; preds = %145
  store %struct.bio* null, %struct.bio** %20, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = add i32 %156, 1
  %158 = load %struct.mddev*, %struct.mddev** %3, align 8
  %159 = getelementptr inbounds %struct.mddev, %struct.mddev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul i32 %157, %160
  store i32 %161, i32* %18, align 4
  br label %175

162:                                              ; preds = %151
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.mddev*, %struct.mddev** %3, align 8
  %169 = getelementptr inbounds %struct.mddev, %struct.mddev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul i32 %167, %170
  store i32 %171, i32* %18, align 4
  br label %174

172:                                              ; preds = %162
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %172, %166
  br label %175

175:                                              ; preds = %174, %155
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* %11, align 4
  %181 = add i32 %180, 1
  %182 = load %struct.mddev*, %struct.mddev** %3, align 8
  %183 = getelementptr inbounds %struct.mddev, %struct.mddev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul i32 %181, %184
  store i32 %185, i32* %19, align 4
  br label %199

186:                                              ; preds = %175
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp ugt i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.mddev*, %struct.mddev** %3, align 8
  %193 = getelementptr inbounds %struct.mddev, %struct.mddev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul i32 %191, %194
  store i32 %195, i32* %19, align 4
  br label %198

196:                                              ; preds = %186
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %196, %190
  br label %199

199:                                              ; preds = %198, %179
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %18, align 4
  %202 = icmp ule i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %282

204:                                              ; preds = %199
  %205 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %206 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %205, i32 0, i32 1
  %207 = load %struct.md_rdev**, %struct.md_rdev*** %206, align 8
  %208 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %209 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %210 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %209, i32 0, i32 0
  %211 = load %struct.strip_zone*, %struct.strip_zone** %210, align 8
  %212 = ptrtoint %struct.strip_zone* %208 to i64
  %213 = ptrtoint %struct.strip_zone* %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 24
  %216 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %217 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %216, i32 0, i32 0
  %218 = load %struct.strip_zone*, %struct.strip_zone** %217, align 8
  %219 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %218, i64 0
  %220 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = zext i32 %221 to i64
  %223 = mul nsw i64 %215, %222
  %224 = load i32, i32* %16, align 4
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = getelementptr inbounds %struct.md_rdev*, %struct.md_rdev** %207, i64 %226
  %228 = load %struct.md_rdev*, %struct.md_rdev** %227, align 8
  store %struct.md_rdev* %228, %struct.md_rdev** %21, align 8
  %229 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  %230 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %18, align 4
  %233 = zext i32 %232 to i64
  %234 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %235 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %233, %236
  %238 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  %239 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %18, align 4
  %244 = sub i32 %242, %243
  %245 = load i32, i32* @GFP_NOIO, align 4
  %246 = call i64 @__blkdev_issue_discard(i32 %231, i64 %241, i32 %244, i32 %245, i32 0, %struct.bio** %20)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %204
  %249 = load %struct.bio*, %struct.bio** %20, align 8
  %250 = icmp ne %struct.bio* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %248, %204
  br label %282

252:                                              ; preds = %248
  %253 = load %struct.bio*, %struct.bio** %20, align 8
  %254 = load %struct.bio*, %struct.bio** %4, align 8
  %255 = call i32 @bio_chain(%struct.bio* %253, %struct.bio* %254)
  %256 = load %struct.bio*, %struct.bio** %20, align 8
  %257 = load %struct.bio*, %struct.bio** %4, align 8
  %258 = call i32 @bio_clone_blkg_association(%struct.bio* %256, %struct.bio* %257)
  %259 = load %struct.mddev*, %struct.mddev** %3, align 8
  %260 = getelementptr inbounds %struct.mddev, %struct.mddev* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %252
  %264 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  %265 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @bdev_get_queue(i32 %266)
  %268 = load %struct.bio*, %struct.bio** %20, align 8
  %269 = load %struct.mddev*, %struct.mddev** %3, align 8
  %270 = getelementptr inbounds %struct.mddev, %struct.mddev* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @disk_devt(i64 %271)
  %273 = load %struct.bio*, %struct.bio** %4, align 8
  %274 = getelementptr inbounds %struct.bio, %struct.bio* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = zext i32 %276 to i64
  %278 = call i32 @trace_block_bio_remap(i32 %267, %struct.bio* %268, i32 %272, i64 %277)
  br label %279

279:                                              ; preds = %263, %252
  %280 = load %struct.bio*, %struct.bio** %20, align 8
  %281 = call i32 @generic_make_request(%struct.bio* %280)
  br label %282

282:                                              ; preds = %279, %251, %203
  %283 = load i32, i32* %16, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %16, align 4
  br label %145

285:                                              ; preds = %145
  %286 = load %struct.bio*, %struct.bio** %4, align 8
  %287 = call i32 @bio_endio(%struct.bio* %286)
  ret void
}

declare dso_local %struct.strip_zone* @find_zone(%struct.r0conf*, i32*) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i64, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i64 @__blkdev_issue_discard(i32, i64, i32, i32, i32, %struct.bio**) #1

declare dso_local i32 @bio_clone_blkg_association(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i64) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @disk_devt(i64) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
