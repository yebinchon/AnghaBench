; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_prepare_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_prepare_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32 }
%struct.omap_sham_reqctx = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FLAGS_FINUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @omap_sham_prepare_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_prepare_request(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_sham_reqctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %16 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %15)
  store %struct.omap_sham_reqctx* %16, %struct.omap_sham_reqctx** %6, align 8
  %17 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %18 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAGS_FINUP, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %24 = call i32 @get_block_size(%struct.omap_sham_reqctx* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %29 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %35 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %39 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %41 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %303

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %50 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @IS_ALIGNED(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %58 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 %56, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %70 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %73 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  %77 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %78 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @scatterwalk_map_and_copy(i64 %76, i32 %79, i32 0, i32 %80, i32 0)
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %84 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %92 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %68, %48, %45
  %94 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %95 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %100 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %99, i32 0, i32 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %105 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %108 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy(i64 %103, i64 %106, i32 %109)
  br label %111

111:                                              ; preds = %98, %93
  %112 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %113 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %119 = call i32 @omap_sham_align_sgs(i32 %114, i32 %115, i32 %116, i32 %117, %struct.omap_sham_reqctx* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %303

124:                                              ; preds = %111
  %125 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %126 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @IS_ALIGNED(i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @DIV_ROUND_UP(i32 %136, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 %138, %139
  store i32 %140, i32* %11, align 4
  br label %147

141:                                              ; preds = %132
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sdiv i32 %142, %143
  %145 = load i32, i32* %7, align 4
  %146 = mul nsw i32 %144, %145
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %141, %135
  br label %156

148:                                              ; preds = %124
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %151, %148
  br label %156

156:                                              ; preds = %155, %147
  %157 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %158 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %164, %156
  %166 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %167 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %206

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %206

173:                                              ; preds = %170
  %174 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %175 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @sg_init_table(i32 %176, i32 2)
  %178 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %179 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %182 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %181, i32 0, i32 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %187 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @sg_set_buf(i32 %180, i64 %185, i32 %188)
  %190 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %191 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %194 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @sg_chain(i32 %192, i32 2, i32 %195)
  %197 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %198 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %201 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 4
  %202 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %203 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  br label %234

206:                                              ; preds = %170, %165
  %207 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %208 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %233

211:                                              ; preds = %206
  %212 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %213 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @sg_init_table(i32 %214, i32 1)
  %216 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %217 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %220 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %219, i32 0, i32 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @sg_set_buf(i32 %218, i64 %223, i32 %224)
  %226 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %227 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %230 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  %231 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %232 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %231, i32 0, i32 4
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %211, %206
  br label %234

234:                                              ; preds = %233, %173
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %292

237:                                              ; preds = %234
  store i32 0, i32* %14, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %240 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %238, %241
  br i1 %242, label %243, label %264

243:                                              ; preds = %237
  %244 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %245 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %244, i32 0, i32 5
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %248 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %249, %251
  %253 = load i32, i32* %12, align 4
  %254 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %255 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %253, %256
  %258 = call i32 @memcpy(i64 %246, i64 %252, i32 %257)
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %261 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %259, %262
  store i32 %263, i32* %14, align 4
  br label %264

264:                                              ; preds = %243, %237
  %265 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %266 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %288

269:                                              ; preds = %264
  %270 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %271 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %277 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %14, align 4
  %280 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %281 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %279, %282
  %284 = load i32, i32* %12, align 4
  %285 = sub nsw i32 %283, %284
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @scatterwalk_map_and_copy(i64 %275, i32 %278, i32 %285, i32 %286, i32 0)
  br label %288

288:                                              ; preds = %269, %264
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %291 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  br label %295

292:                                              ; preds = %234
  %293 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %294 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %293, i32 0, i32 2
  store i32 0, i32* %294, align 8
  br label %295

295:                                              ; preds = %292, %288
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %11, align 4
  %300 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %301 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %298, %295
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %302, %122, %44
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @omap_sham_align_sgs(i32, i32, i32, i32, %struct.omap_sham_reqctx*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_buf(i32, i64, i32) #1

declare dso_local i32 @sg_chain(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
