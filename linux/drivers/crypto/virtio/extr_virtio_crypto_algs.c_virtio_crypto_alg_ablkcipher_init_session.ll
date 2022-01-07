; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_alg_ablkcipher_init_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_alg_ablkcipher_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto_ablkcipher_ctx = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.virtio_crypto* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i8* }
%struct.virtio_crypto = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i8*, %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i64, i8* }
%struct.scatterlist = type { i32 }

@VIRTIO_CRYPTO_OP_ENCRYPT = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_OP_DECRYPT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_CIPHER_CREATE_SESSION = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_ERR = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_SYM_OP_CIPHER = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"virtio_crypto: Create session failed status: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto_ablkcipher_ctx*, i32, %struct.TYPE_23__*, i32, i32)* @virtio_crypto_alg_ablkcipher_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_crypto_alg_ablkcipher_init_session(%struct.virtio_crypto_ablkcipher_ctx* %0, i32 %1, %struct.TYPE_23__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_crypto_ablkcipher_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca %struct.scatterlist, align 4
  %14 = alloca %struct.scatterlist, align 4
  %15 = alloca [3 x %struct.scatterlist*], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.virtio_crypto*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_23__*, align 8
  store %struct.virtio_crypto_ablkcipher_ctx* %0, %struct.virtio_crypto_ablkcipher_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %23, i32 0, i32 2
  %25 = load %struct.virtio_crypto*, %struct.virtio_crypto** %24, align 8
  store %struct.virtio_crypto* %25, %struct.virtio_crypto** %17, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @VIRTIO_CRYPTO_OP_ENCRYPT, align 4
  br label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @VIRTIO_CRYPTO_OP_DECRYPT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.TYPE_23__* @kmemdup(%struct.TYPE_23__* %34, i32 %35, i32 %36)
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %22, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %39 = icmp ne %struct.TYPE_23__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %220

43:                                               ; preds = %32
  %44 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %45 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load i32, i32* @VIRTIO_CRYPTO_CIPHER_CREATE_SESSION, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %50 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %56 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  %59 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %60 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @VIRTIO_CRYPTO_ERR, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %66 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @VIRTIO_CRYPTO_SYM_OP_CIPHER, align 4
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %71 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  store i8* %69, i8** %74, align 8
  %75 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %76 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %81 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i8* %79, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %91 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  store i8* %89, i8** %97, align 8
  %98 = load i32, i32* %18, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %101 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i8* %99, i8** %107, align 8
  %108 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %109 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %108, i32 0, i32 3
  %110 = call i32 @sg_init_one(%struct.scatterlist* %12, %struct.TYPE_23__* %109, i32 72)
  %111 = load i32, i32* %20, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %20, align 4
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %15, i64 0, i64 %113
  store %struct.scatterlist* %12, %struct.scatterlist** %114, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @sg_init_one(%struct.scatterlist* %13, %struct.TYPE_23__* %115, i32 %116)
  %118 = load i32, i32* %20, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %20, align 4
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %15, i64 0, i64 %120
  store %struct.scatterlist* %13, %struct.scatterlist** %121, align 8
  %122 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %123 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %122, i32 0, i32 1
  %124 = call i32 @sg_init_one(%struct.scatterlist* %14, %struct.TYPE_23__* %123, i32 72)
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %21, align 4
  %128 = add i32 %125, %126
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %15, i64 0, i64 %129
  store %struct.scatterlist* %14, %struct.scatterlist** %130, align 8
  %131 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %132 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds [3 x %struct.scatterlist*], [3 x %struct.scatterlist*]* %15, i64 0, i64 0
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = call i32 @virtqueue_add_sgs(i32 %133, %struct.scatterlist** %134, i32 %135, i32 %136, %struct.virtio_crypto* %137, i32 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %43
  %143 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %144 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %147 = call i32 @kzfree(%struct.TYPE_23__* %146)
  %148 = load i32, i32* %19, align 4
  store i32 %148, i32* %6, align 4
  br label %220

149:                                              ; preds = %43
  %150 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %151 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @virtqueue_kick(i32 %152)
  br label %154

154:                                              ; preds = %169, %149
  %155 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %156 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @virtqueue_get_buf(i32 %157, i32* %16)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %162 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @virtqueue_is_broken(i32 %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %160, %154
  %168 = phi i1 [ false, %154 ], [ %166, %160 ]
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  %170 = call i32 (...) @cpu_relax()
  br label %154

171:                                              ; preds = %167
  %172 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %173 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @le32_to_cpu(i8* %175)
  %177 = load i64, i64* @VIRTIO_CRYPTO_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %171
  %180 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %181 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %180, i32 0, i32 0
  %182 = call i32 @spin_unlock(i32* %181)
  %183 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %184 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @le32_to_cpu(i8* %186)
  %188 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %190 = call i32 @kzfree(%struct.TYPE_23__* %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %220

193:                                              ; preds = %171
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %198 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @le64_to_cpu(i32 %200)
  %202 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %7, align 8
  %203 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  br label %214

205:                                              ; preds = %193
  %206 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %207 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i8* @le64_to_cpu(i32 %209)
  %211 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %7, align 8
  %212 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  store i8* %210, i8** %213, align 8
  br label %214

214:                                              ; preds = %205, %196
  %215 = load %struct.virtio_crypto*, %struct.virtio_crypto** %17, align 8
  %216 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %215, i32 0, i32 0
  %217 = call i32 @spin_unlock(i32* %216)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %219 = call i32 @kzfree(%struct.TYPE_23__* %218)
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %214, %179, %142, %40
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local %struct.TYPE_23__* @kmemdup(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @virtqueue_add_sgs(i32, %struct.scatterlist**, i32, i32, %struct.virtio_crypto*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kzfree(%struct.TYPE_23__*) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @virtqueue_is_broken(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
