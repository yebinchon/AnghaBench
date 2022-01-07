; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx842_crypto_ctx = type { i32*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32*, i32*, i32)* }
%struct.nx842_crypto_param = type { i32, i64, i32*, i32* }
%struct.nx842_crypto_header_group = type { i32, i32, i32 }
%struct.nx842_constraints = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using decomp sbounce buffer, len %x\0A\00", align 1
@BOUNCE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"using decomp dbounce buffer, len %x\0A\00", align 1
@DECOMP_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"using software 842 decompression\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ignoring last %x bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"decompress slen %x padding %x dlen %x ignore %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx842_crypto_ctx*, %struct.nx842_crypto_param*, %struct.nx842_crypto_header_group*, %struct.nx842_constraints*, i64)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress(%struct.nx842_crypto_ctx* %0, %struct.nx842_crypto_param* %1, %struct.nx842_crypto_header_group* %2, %struct.nx842_constraints* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nx842_crypto_ctx*, align 8
  %8 = alloca %struct.nx842_crypto_param*, align 8
  %9 = alloca %struct.nx842_crypto_header_group*, align 8
  %10 = alloca %struct.nx842_constraints*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nx842_crypto_ctx* %0, %struct.nx842_crypto_ctx** %7, align 8
  store %struct.nx842_crypto_param* %1, %struct.nx842_crypto_param** %8, align 8
  store %struct.nx842_crypto_header_group* %2, %struct.nx842_crypto_header_group** %9, align 8
  store %struct.nx842_constraints* %3, %struct.nx842_constraints** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %9, align 8
  %24 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %9, align 8
  %28 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %32 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %36 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %17, align 8
  %38 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %39 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %18, align 8
  %41 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %9, align 8
  %42 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be16_to_cpu(i32 %43)
  store i64 %44, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %5
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %5
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %326

53:                                               ; preds = %47
  %54 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %55 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %19, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %64 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %53
  %68 = load i32, i32* @EOVERFLOW, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %326

70:                                               ; preds = %58
  %71 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %72 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ule i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %81 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  %84 = icmp sgt i64 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75, %70
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %326

88:                                               ; preds = %75
  %89 = load i64, i64* %19, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %17, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %94 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = urem i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %101 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @round_up(i32 %99, i32 %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %98, %88
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %107 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %112 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %117 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %250

121:                                              ; preds = %114
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load i32*, i32** %17, align 8
  %127 = ptrtoint i32* %126 to i32
  %128 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %129 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = srem i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %125, %121
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %139 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub i32 %144, %145
  %147 = call i32 @memset(i32* %143, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %137, %133
  %149 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %150 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @memcpy(i32* %151, i32* %152, i32 %153)
  %155 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %156 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %17, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub i32 %158, %159
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %148, %125
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %167 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = urem i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %174 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @round_down(i32 %172, i32 %175)
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %171, %164
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = load i32*, i32** %18, align 8
  %183 = ptrtoint i32* %182 to i32
  %184 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %185 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = srem i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %181, %177
  %190 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %191 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %18, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @BOUNCE_BUFFER_SIZE, align 4
  %195 = call i32 @min(i32 %193, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %189, %181
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %201 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ult i32 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %250

205:                                              ; preds = %198
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %208 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp ugt i32 %206, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.nx842_constraints*, %struct.nx842_constraints** %10, align 8
  %213 = getelementptr inbounds %struct.nx842_constraints, %struct.nx842_constraints* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %211, %205
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %15, align 4
  %217 = call i32 (...) @ktime_get()
  %218 = load i32, i32* @DECOMP_BUSY_TIMEOUT, align 4
  %219 = call i32 @ktime_add_ms(i32 %217, i32 %218)
  store i32 %219, i32* %22, align 4
  br label %220

220:                                              ; preds = %244, %215
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %14, align 4
  %222 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %223 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %222, i32 0, i32 2
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32 (i32*, i32, i32*, i32*, i32)*, i32 (i32*, i32, i32*, i32*, i32)** %225, align 8
  %227 = load i32*, i32** %17, align 8
  %228 = load i32, i32* %12, align 4
  %229 = load i32*, i32** %18, align 8
  %230 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %231 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 %226(i32* %227, i32 %228, i32* %229, i32* %14, i32 %232)
  store i32 %233, i32* %20, align 4
  br label %234

234:                                              ; preds = %220
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* @EBUSY, align 4
  %237 = sub nsw i32 0, %236
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = call i32 (...) @ktime_get()
  %241 = load i32, i32* %22, align 4
  %242 = call i64 @ktime_before(i32 %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br label %244

244:                                              ; preds = %239, %234
  %245 = phi i1 [ false, %234 ], [ %243, %239 ]
  br i1 %245, label %220, label %246

246:                                              ; preds = %244
  %247 = load i32, i32* %20, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %280

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %249, %204, %120
  %251 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %252 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %19, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %17, align 8
  %256 = load %struct.nx842_crypto_header_group*, %struct.nx842_crypto_header_group** %9, align 8
  %257 = getelementptr inbounds %struct.nx842_crypto_header_group, %struct.nx842_crypto_header_group* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @be32_to_cpu(i32 %258)
  store i32 %259, i32* %12, align 4
  store i32 0, i32* %21, align 4
  %260 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %261 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  store i32* %262, i32** %18, align 8
  %263 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %264 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %250
  %270 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %271 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  store i32* %272, i32** %18, align 8
  %273 = load i32, i32* @BOUNCE_BUFFER_SIZE, align 4
  store i32 %273, i32* %14, align 4
  br label %274

274:                                              ; preds = %269, %250
  %275 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %276 = load i32*, i32** %17, align 8
  %277 = load i32, i32* %12, align 4
  %278 = load i32*, i32** %18, align 8
  %279 = call i32 @sw842_decompress(i32* %276, i32 %277, i32* %278, i32* %14)
  store i32 %279, i32* %20, align 4
  br label %280

280:                                              ; preds = %274, %246
  %281 = load i32, i32* %20, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = load i32, i32* %20, align 4
  store i32 %284, i32* %6, align 4
  br label %326

285:                                              ; preds = %280
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %12, align 4
  %288 = sub i32 %287, %286
  store i32 %288, i32* %12, align 4
  %289 = load i64, i64* %11, align 8
  %290 = load i32, i32* %14, align 4
  %291 = zext i32 %290 to i64
  %292 = sub nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %14, align 4
  %294 = load i64, i64* %11, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %285
  %297 = load i64, i64* %11, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %296, %285
  %301 = load i32*, i32** %18, align 8
  %302 = load %struct.nx842_crypto_ctx*, %struct.nx842_crypto_ctx** %7, align 8
  %303 = getelementptr inbounds %struct.nx842_crypto_ctx, %struct.nx842_crypto_ctx* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = icmp eq i32* %301, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %300
  %307 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %308 = getelementptr inbounds %struct.nx842_crypto_param, %struct.nx842_crypto_param* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = load i32*, i32** %18, align 8
  %311 = load i32, i32* %14, align 4
  %312 = call i32 @memcpy(i32* %309, i32* %310, i32 %311)
  br label %313

313:                                              ; preds = %306, %300
  %314 = load i32, i32* %12, align 4
  %315 = load i64, i64* %19, align 8
  %316 = load i32, i32* %14, align 4
  %317 = load i64, i64* %11, align 8
  %318 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %314, i64 %315, i32 %316, i64 %317)
  %319 = load %struct.nx842_crypto_param*, %struct.nx842_crypto_param** %8, align 8
  %320 = load i32, i32* %12, align 4
  %321 = zext i32 %320 to i64
  %322 = load i64, i64* %19, align 8
  %323 = add nsw i64 %321, %322
  %324 = load i32, i32* %14, align 4
  %325 = call i32 @update_param(%struct.nx842_crypto_param* %319, i64 %323, i32 %324)
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %313, %283, %85, %67, %50
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @pr_info_ratelimited(i8*) #1

declare dso_local i32 @sw842_decompress(i32*, i32, i32*, i32*) #1

declare dso_local i32 @update_param(%struct.nx842_crypto_param*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
