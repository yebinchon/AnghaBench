; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c___virtio_crypto_ablkcipher_do_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c___virtio_crypto_ablkcipher_do_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto_sym_request = type { i32, %struct.virtio_crypto_op_data_req*, i64, %struct.virtio_crypto_request, %struct.virtio_crypto_ablkcipher_ctx* }
%struct.virtio_crypto_op_data_req = type { %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.virtio_crypto_request = type { %struct.scatterlist**, %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* }
%struct.scatterlist = type { i32 }
%struct.virtio_crypto_ablkcipher_ctx = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.virtio_crypto* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.virtio_crypto = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.ablkcipher_request = type { i32, %struct.scatterlist*, %struct.scatterlist*, i32 }
%struct.data_queue = type { i32, i32 }
%struct.crypto_ablkcipher = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"virtio_crypto: Number of sgs (src_nents: %d, dst_nents: %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_SYM_OP_CIPHER = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_CIPHER_ENCRYPT = common dso_local global i32 0, align 4
@VIRTIO_CRYPTO_CIPHER_DECRYPT = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"virtio_crypto: The dst_len is beyond U32_MAX\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"virtio_crypto: src_len: %u, dst_len: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"virtio_crypto: The length is too big\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto_sym_request*, %struct.ablkcipher_request*, %struct.data_queue*)* @__virtio_crypto_ablkcipher_do_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__virtio_crypto_ablkcipher_do_req(%struct.virtio_crypto_sym_request* %0, %struct.ablkcipher_request* %1, %struct.data_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_crypto_sym_request*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca %struct.data_queue*, align 8
  %8 = alloca %struct.crypto_ablkcipher*, align 8
  %9 = alloca %struct.virtio_crypto_ablkcipher_ctx*, align 8
  %10 = alloca %struct.virtio_crypto_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_crypto*, align 8
  %13 = alloca %struct.virtio_crypto_op_data_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.scatterlist, align 4
  %19 = alloca %struct.scatterlist, align 4
  %20 = alloca %struct.scatterlist, align 4
  %21 = alloca %struct.scatterlist**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.virtio_crypto_op_data_req*, align 8
  store %struct.virtio_crypto_sym_request* %0, %struct.virtio_crypto_sym_request** %5, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %6, align 8
  store %struct.data_queue* %2, %struct.data_queue** %7, align 8
  %28 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %29 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %28)
  store %struct.crypto_ablkcipher* %29, %struct.crypto_ablkcipher** %8, align 8
  %30 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %31 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %30, i32 0, i32 4
  %32 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %31, align 8
  store %struct.virtio_crypto_ablkcipher_ctx* %32, %struct.virtio_crypto_ablkcipher_ctx** %9, align 8
  %33 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %34 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %33, i32 0, i32 3
  store %struct.virtio_crypto_request* %34, %struct.virtio_crypto_request** %10, align 8
  %35 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %36 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %37, i32 0, i32 2
  %39 = load %struct.virtio_crypto*, %struct.virtio_crypto** %38, align 8
  store %struct.virtio_crypto* %39, %struct.virtio_crypto** %12, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %40 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %41 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %40, i32 0, i32 2
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sg_nents_for_len(%struct.scatterlist* %42, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %48 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %47, i32 0, i32 1
  %49 = load %struct.scatterlist*, %struct.scatterlist** %48, align 8
  %50 = call i32 @sg_nents(%struct.scatterlist* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %54, %55
  %57 = add nsw i32 %56, 3
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %61 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %60, i32 0, i32 1
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = call i32 @dev_to_node(i32* %63)
  %65 = call %struct.scatterlist** @kcalloc_node(i32 %58, i32 8, i32 %59, i32 %64)
  store %struct.scatterlist** %65, %struct.scatterlist*** %21, align 8
  %66 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %67 = icmp ne %struct.scatterlist** %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %3
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %332

71:                                               ; preds = %3
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %74 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = call i32 @dev_to_node(i32* %76)
  %78 = call %struct.virtio_crypto_op_data_req* @kzalloc_node(i32 48, i32 %72, i32 %77)
  store %struct.virtio_crypto_op_data_req* %78, %struct.virtio_crypto_op_data_req** %13, align 8
  %79 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %80 = icmp ne %struct.virtio_crypto_op_data_req* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %83 = call i32 @kfree(%struct.scatterlist** %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %332

86:                                               ; preds = %71
  %87 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %88 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %10, align 8
  %89 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %88, i32 0, i32 2
  store %struct.virtio_crypto_op_data_req* %87, %struct.virtio_crypto_op_data_req** %89, align 8
  %90 = load i32, i32* @VIRTIO_CRYPTO_SYM_OP_CIPHER, align 4
  %91 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %92 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %94 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %86
  %98 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %9, align 8
  %99 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le64(i32 %101)
  %103 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %104 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load i32, i32* @VIRTIO_CRYPTO_CIPHER_ENCRYPT, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %109 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  br label %125

111:                                              ; preds = %86
  %112 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %9, align 8
  %113 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @cpu_to_le64(i32 %115)
  %117 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %118 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* @VIRTIO_CRYPTO_CIPHER_DECRYPT, align 4
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %123 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  br label %125

125:                                              ; preds = %111, %97
  %126 = load i32, i32* @VIRTIO_CRYPTO_SYM_OP_CIPHER, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %129 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i8* %127, i8** %131, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %135 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  store i8* %133, i8** %140, align 8
  %141 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %142 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %146 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  store i8* %144, i8** %151, align 8
  %152 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %153 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %152, i32 0, i32 1
  %154 = load %struct.scatterlist*, %struct.scatterlist** %153, align 8
  %155 = call i32 @virtio_crypto_alg_sg_nents_length(%struct.scatterlist* %154)
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @U32_MAX, align 4
  %158 = icmp sgt i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %125
  %163 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %16, align 4
  br label %326

166:                                              ; preds = %125
  %167 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %168 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %23, align 4
  %171 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %173 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %23, align 4
  %176 = add i32 %174, %175
  %177 = load i32, i32* %11, align 4
  %178 = add i32 %176, %177
  %179 = zext i32 %178 to i64
  %180 = add i64 %179, 48
  %181 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %182 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ugt i64 %180, %183
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %166
  %189 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %16, align 4
  br label %326

192:                                              ; preds = %166
  %193 = load i32, i32* %23, align 4
  %194 = call i8* @cpu_to_le32(i32 %193)
  %195 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %196 = getelementptr inbounds %struct.virtio_crypto_op_data_req, %struct.virtio_crypto_op_data_req* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  store i8* %194, i8** %201, align 8
  %202 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %203 = call i32 @sg_init_one(%struct.scatterlist* %18, %struct.virtio_crypto_op_data_req* %202, i32 48)
  %204 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %205 = load i32, i32* %24, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %24, align 4
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %204, i64 %207
  store %struct.scatterlist* %18, %struct.scatterlist** %208, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @GFP_ATOMIC, align 4
  %211 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %212 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %211, i32 0, i32 1
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = call i32 @dev_to_node(i32* %214)
  %216 = call %struct.virtio_crypto_op_data_req* @kzalloc_node(i32 %209, i32 %210, i32 %215)
  store %struct.virtio_crypto_op_data_req* %216, %struct.virtio_crypto_op_data_req** %27, align 8
  %217 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %27, align 8
  %218 = icmp ne %struct.virtio_crypto_op_data_req* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %192
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %16, align 4
  br label %326

222:                                              ; preds = %192
  %223 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %27, align 8
  %224 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %225 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @memcpy(%struct.virtio_crypto_op_data_req* %223, i32 %226, i32 %227)
  %229 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %27, align 8
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @sg_init_one(%struct.scatterlist* %19, %struct.virtio_crypto_op_data_req* %229, i32 %230)
  %232 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %233 = load i32, i32* %24, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %24, align 4
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %232, i64 %235
  store %struct.scatterlist* %19, %struct.scatterlist** %236, align 8
  %237 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %27, align 8
  %238 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %239 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %238, i32 0, i32 1
  store %struct.virtio_crypto_op_data_req* %237, %struct.virtio_crypto_op_data_req** %239, align 8
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %256, %222
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %240
  %245 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %246 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %245, i32 0, i32 2
  %247 = load %struct.scatterlist*, %struct.scatterlist** %246, align 8
  %248 = load i32, i32* %22, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %247, i64 %249
  %251 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %252 = load i32, i32* %24, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %24, align 4
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %251, i64 %254
  store %struct.scatterlist* %250, %struct.scatterlist** %255, align 8
  br label %256

256:                                              ; preds = %244
  %257 = load i32, i32* %22, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %22, align 4
  br label %240

259:                                              ; preds = %240
  store i32 0, i32* %22, align 4
  br label %260

260:                                              ; preds = %278, %259
  %261 = load i32, i32* %22, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %281

264:                                              ; preds = %260
  %265 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %266 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %265, i32 0, i32 1
  %267 = load %struct.scatterlist*, %struct.scatterlist** %266, align 8
  %268 = load i32, i32* %22, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %267, i64 %269
  %271 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %272 = load i32, i32* %24, align 4
  %273 = load i32, i32* %25, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %25, align 4
  %275 = add i32 %272, %273
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %271, i64 %276
  store %struct.scatterlist* %270, %struct.scatterlist** %277, align 8
  br label %278

278:                                              ; preds = %264
  %279 = load i32, i32* %22, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %22, align 4
  br label %260

281:                                              ; preds = %260
  %282 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %10, align 8
  %283 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %282, i32 0, i32 1
  %284 = call i32 @sg_init_one(%struct.scatterlist* %20, %struct.virtio_crypto_op_data_req* %283, i32 48)
  %285 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %286 = load i32, i32* %24, align 4
  %287 = load i32, i32* %25, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %25, align 4
  %289 = add i32 %286, %287
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %285, i64 %290
  store %struct.scatterlist* %20, %struct.scatterlist** %291, align 8
  %292 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %293 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %10, align 8
  %294 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %293, i32 0, i32 0
  store %struct.scatterlist** %292, %struct.scatterlist*** %294, align 8
  %295 = load %struct.data_queue*, %struct.data_queue** %7, align 8
  %296 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %295, i32 0, i32 0
  %297 = load i64, i64* %17, align 8
  %298 = call i32 @spin_lock_irqsave(i32* %296, i64 %297)
  %299 = load %struct.data_queue*, %struct.data_queue** %7, align 8
  %300 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %303 = load i32, i32* %24, align 4
  %304 = load i32, i32* %25, align 4
  %305 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %10, align 8
  %306 = load i32, i32* @GFP_ATOMIC, align 4
  %307 = call i32 @virtqueue_add_sgs(i32 %301, %struct.scatterlist** %302, i32 %303, i32 %304, %struct.virtio_crypto_request* %305, i32 %306)
  store i32 %307, i32* %16, align 4
  %308 = load %struct.data_queue*, %struct.data_queue** %7, align 8
  %309 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @virtqueue_kick(i32 %310)
  %312 = load %struct.data_queue*, %struct.data_queue** %7, align 8
  %313 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %312, i32 0, i32 0
  %314 = load i64, i64* %17, align 8
  %315 = call i32 @spin_unlock_irqrestore(i32* %313, i64 %314)
  %316 = load i32, i32* %16, align 4
  %317 = icmp slt i32 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i64 @unlikely(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %281
  br label %323

322:                                              ; preds = %281
  store i32 0, i32* %4, align 4
  br label %332

323:                                              ; preds = %321
  %324 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %27, align 8
  %325 = call i32 @kzfree(%struct.virtio_crypto_op_data_req* %324)
  br label %326

326:                                              ; preds = %323, %219, %188, %162
  %327 = load %struct.virtio_crypto_op_data_req*, %struct.virtio_crypto_op_data_req** %13, align 8
  %328 = call i32 @kzfree(%struct.virtio_crypto_op_data_req* %327)
  %329 = load %struct.scatterlist**, %struct.scatterlist*** %21, align 8
  %330 = call i32 @kfree(%struct.scatterlist** %329)
  %331 = load i32, i32* %16, align 4
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %326, %322, %81, %68
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.scatterlist** @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local %struct.virtio_crypto_op_data_req* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist**) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @virtio_crypto_alg_sg_nents_length(%struct.scatterlist*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.virtio_crypto_op_data_req*, i32) #1

declare dso_local i32 @memcpy(%struct.virtio_crypto_op_data_req*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_add_sgs(i32, %struct.scatterlist**, i32, i32, %struct.virtio_crypto_request*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kzfree(%struct.virtio_crypto_op_data_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
