; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_crypto_ctx = type { i32*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32*, i32*, i32)* }
%struct.nx842_crypto_param = type { i32, i32, i32*, i32* }
%struct.nx842_crypto_header_group = type { i8*, i8*, i32 }
%struct.nx842_constraints = type { i32, i32, i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BOUNCE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"using comp sbounce buffer, len %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"using comp dbounce buffer, len %x\0A\00", align 1
@COMP_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"compress slen %x ignore %x dlen %x padding %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_crypto_ctx*, %struct.nx842_crypto_param*, %struct.nx842_crypto_header_group*, %struct.nx842_constraints*, i32*, i32)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress(%struct.nx842_crypto_ctx* %0, %struct.nx842_crypto_param* %1, %struct.nx842_crypto_header_group* %2, %struct.nx842_constraints* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx842_crypto_ctx*, align 8
  %9 = alloca %struct.nx842_crypto_param*, align 8
  %10 = alloca %struct.nx842_crypto_header_group*, align 8
  %11 = alloca %struct.nx842_constraints*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nx842_crypto_ctx* %0, %struct.nx842_crypto_ctx** %8, align 8
  store %struct.nx842_crypto_param* %1, %struct.nx842_crypto_param** %9, align 8
  store %struct.nx842_crypto_header_group* %2, %struct.nx842_crypto_header_group** %10, align 8
  store %struct.nx842_constraints* %3, %struct.nx842_constraints** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %24 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %27 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %31 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %18, align 8
  %33 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %34 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %36 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %37 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i32, i32* @EOVERFLOW, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %326

43:                                               ; preds = %6
  %44 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %45 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %51 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %49, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %43
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %326

59:                                               ; preds = %48
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %62 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = urem i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %69 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @round_up(i32 %67, i32 %70)
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %75 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %80 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %85 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ugt i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %90 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %88, %82
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %18, align 8
  %98 = ptrtoint i32* %97 to i32
  %99 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %100 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = srem i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %96, %92
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @BOUNCE_BUFFER_SIZE, align 4
  %107 = call i32 @min(i32 %105, i32 %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @BOUNCE_BUFFER_SIZE, align 4
  %110 = call i32 @min(i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %104
  %115 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %116 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub i32 %121, %122
  %124 = call i32 @memset(i32* %120, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %114, %104
  %126 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %127 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @memcpy(i32* %128, i32* %129, i32 %130)
  %132 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %133 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %18, align 8
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %125, %96
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %19, align 8
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %19, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %15, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load i32*, i32** %19, align 8
  %147 = ptrtoint i32* %146 to i32
  %148 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %149 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = srem i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %138
  %154 = load i32*, i32** %19, align 8
  %155 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %156 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32* @PTR_ALIGN(i32* %154, i32 %157)
  %159 = load i32*, i32** %19, align 8
  %160 = ptrtoint i32* %158 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32*, i32** %19, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %19, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %153, %138
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %175 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = urem i32 %173, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %182 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @round_down(i32 %180, i32 %183)
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %179, %172
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %188 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %247, %191
  %193 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %194 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  store i32* %195, i32** %19, align 8
  %196 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %197 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @BOUNCE_BUFFER_SIZE, align 4
  %200 = call i32 @min(i32 %198, i32 %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %203 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @round_down(i32 %201, i32 %204)
  store i32 %205, i32* %15, align 4
  store i32 0, i32* %21, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %192, %185
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %211 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp ugt i32 %209, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load %struct.nx842_constraints*, %struct.nx842_constraints** %11, align 8
  %216 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %214, %208
  %219 = load i32, i32* %15, align 4
  store i32 %219, i32* %16, align 4
  %220 = call i32 (...) @ktime_get()
  %221 = load i32, i32* @COMP_BUSY_TIMEOUT, align 4
  %222 = call i32 @ktime_add_ms(i32 %220, i32 %221)
  store i32 %222, i32* %22, align 4
  br label %223

223:                                              ; preds = %259, %218
  %224 = load i32, i32* %16, align 4
  store i32 %224, i32* %15, align 4
  %225 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %226 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %225, i32 0, i32 2
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32 (i32*, i32, i32*, i32*, i32)*, i32 (i32*, i32, i32*, i32*, i32)** %228, align 8
  %230 = load i32*, i32** %18, align 8
  %231 = load i32, i32* %14, align 4
  %232 = load i32*, i32** %19, align 8
  %233 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %234 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 %229(i32* %230, i32 %231, i32* %232, i32* %15, i32 %235)
  store i32 %236, i32* %20, align 4
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* @ENOSPC, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %223
  %242 = load i32*, i32** %19, align 8
  %243 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %244 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = icmp ne i32* %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %192

248:                                              ; preds = %241, %223
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* @EBUSY, align 4
  %252 = sub nsw i32 0, %251
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = call i32 (...) @ktime_get()
  %256 = load i32, i32* %22, align 4
  %257 = call i64 @ktime_before(i32 %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br label %259

259:                                              ; preds = %254, %249
  %260 = phi i1 [ false, %249 ], [ %258, %254 ]
  br i1 %260, label %223, label %261

261:                                              ; preds = %259
  %262 = load i32, i32* %20, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i32, i32* %20, align 4
  store i32 %265, i32* %7, align 4
  br label %326

266:                                              ; preds = %261
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %21, align 4
  %269 = add i32 %268, %267
  store i32 %269, i32* %21, align 4
  %270 = load i32*, i32** %19, align 8
  %271 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %8, align 8
  %272 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = icmp eq i32* %270, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %266
  %276 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %277 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32*, i32** %19, align 8
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @memcpy(i32* %281, i32* %282, i32 %283)
  br label %285

285:                                              ; preds = %275, %266
  %286 = load i32, i32* %21, align 4
  %287 = call i32 @cpu_to_be16(i32 %286)
  %288 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %10, align 8
  %289 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* %15, align 4
  %291 = call i8* @cpu_to_be32(i32 %290)
  %292 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %10, align 8
  %293 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %292, i32 0, i32 1
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* %14, align 4
  %295 = call i8* @cpu_to_be32(i32 %294)
  %296 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %10, align 8
  %297 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  %298 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %299 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = icmp ult i32 %300, %301
  br i1 %302, label %303, label %313

303:                                              ; preds = %285
  %304 = load i32, i32* %14, align 4
  %305 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %306 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sub i32 %304, %307
  %309 = load i32*, i32** %12, align 8
  store i32 %308, i32* %309, align 4
  %310 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %311 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  store i32 %312, i32* %14, align 4
  br label %313

313:                                              ; preds = %303, %285
  %314 = load i32, i32* %14, align 4
  %315 = load i32*, i32** %12, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %21, align 4
  %319 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %314, i32 %316, i32 %317, i32 %318)
  %320 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %9, align 8
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %21, align 4
  %323 = load i32, i32* %15, align 4
  %324 = add i32 %322, %323
  %325 = call i32 @update_param(%struct.nx842_crypto_param* %320, i32 %321, i32 %324)
  store i32 %325, i32* %7, align 4
  br label %326

326:                                              ; preds = %313, %264, %56, %40
  %327 = load i32, i32* %7, align 4
  ret i32 %327
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32* @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @update_param(%struct.nx842_crypto_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
