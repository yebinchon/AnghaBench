; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_dec_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_dec_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_keys = type { i32, i32, i32, i32 }
%struct.qat_alg_aead_ctx = type { i32, i32, i32, %struct.icp_qat_fw_la_bulk_req, %struct.TYPE_10__* }
%struct.icp_qat_fw_la_bulk_req = type { i32, i32, %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr_cd_pars }
%struct.icp_qat_fw_comn_req_hdr = type { i32, i32 }
%struct.icp_qat_fw_comn_req_hdr_cd_pars = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.qat_dec }
%struct.qat_dec = type { %struct.icp_qat_hw_auth_algo_blk }
%struct.icp_qat_hw_auth_algo_blk = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.icp_qat_hw_cipher_algo_blk = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.icp_qat_fw_cipher_cd_ctrl_hdr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.icp_qat_fw_auth_cd_ctrl_hdr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.icp_qat_fw_la_auth_req_params = type { i32 }

@ICP_QAT_HW_AUTH_MODE1 = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_CMD_HASH_CIPHER = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_DIGEST_IN_BUFFER = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_NO_RET_AUTH_RES = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_CMP_AUTH_RES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_CIPHER = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_DRAM_WR = common dso_local global i32 0, align 4
@ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA1_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA1_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA256_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA256_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA512_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA512_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32, %struct.crypto_authenc_keys*, i32)* @qat_alg_aead_init_dec_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_aead_init_dec_session(%struct.crypto_aead* %0, i32 %1, %struct.crypto_authenc_keys* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_authenc_keys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qat_alg_aead_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qat_dec*, align 8
  %13 = alloca %struct.icp_qat_hw_auth_algo_blk*, align 8
  %14 = alloca %struct.icp_qat_hw_cipher_algo_blk*, align 8
  %15 = alloca %struct.icp_qat_fw_la_bulk_req*, align 8
  %16 = alloca %struct.icp_qat_fw_comn_req_hdr_cd_pars*, align 8
  %17 = alloca %struct.icp_qat_fw_comn_req_hdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, align 8
  %20 = alloca %struct.icp_qat_fw_auth_cd_ctrl_hdr*, align 8
  %21 = alloca %struct.icp_qat_fw_la_auth_req_params*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.crypto_authenc_keys* %2, %struct.crypto_authenc_keys** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %23 = call %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %22)
  store %struct.qat_alg_aead_ctx* %23, %struct.qat_alg_aead_ctx** %10, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %25 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %27 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.qat_dec* %29, %struct.qat_dec** %12, align 8
  %30 = load %struct.qat_dec*, %struct.qat_dec** %12, align 8
  %31 = getelementptr inbounds %struct.qat_dec, %struct.qat_dec* %30, i32 0, i32 0
  store %struct.icp_qat_hw_auth_algo_blk* %31, %struct.icp_qat_hw_auth_algo_blk** %13, align 8
  %32 = load %struct.qat_dec*, %struct.qat_dec** %12, align 8
  %33 = bitcast %struct.qat_dec* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crypto_shash_digestsize(i32 %37)
  %39 = call i32 @roundup(i32 %38, i32 8)
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  %43 = bitcast i8* %42 to %struct.icp_qat_hw_cipher_algo_blk*
  store %struct.icp_qat_hw_cipher_algo_blk* %43, %struct.icp_qat_hw_cipher_algo_blk** %14, align 8
  %44 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %44, i32 0, i32 3
  store %struct.icp_qat_fw_la_bulk_req* %45, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %46 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %47 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %46, i32 0, i32 3
  store %struct.icp_qat_fw_comn_req_hdr_cd_pars* %47, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %48 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %49 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %48, i32 0, i32 2
  store %struct.icp_qat_fw_comn_req_hdr* %49, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %50 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %51 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %50, i32 0, i32 1
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %18, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = bitcast i8* %53 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  store %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %54, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = bitcast i8* %55 to %struct.icp_qat_fw_auth_cd_ctrl_hdr*
  store %struct.icp_qat_fw_auth_cd_ctrl_hdr* %56, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %57 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %58 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = bitcast i8* %60 to %struct.icp_qat_fw_la_auth_req_params*
  store %struct.icp_qat_fw_la_auth_req_params* %61, %struct.icp_qat_fw_la_auth_req_params** %21, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @QAT_AES_HW_CONFIG_DEC(i32 %62, i32 %63)
  %65 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %14, align 8
  %66 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %14, align 8
  %70 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %74 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %77 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %72, i32 %75, i32 %78)
  %80 = load i32, i32* @ICP_QAT_HW_AUTH_MODE1, align 4
  %81 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %82 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ICP_QAT_HW_AUTH_CONFIG_BUILD(i32 %80, i32 %83, i32 %84)
  %86 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %13, align 8
  %87 = getelementptr inbounds %struct.icp_qat_hw_auth_algo_blk, %struct.icp_qat_hw_auth_algo_blk* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 4
  %91 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @crypto_shash_blocksize(i32 %93)
  %95 = call i32 @cpu_to_be32(i32 %94)
  %96 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %13, align 8
  %97 = getelementptr inbounds %struct.icp_qat_hw_auth_algo_blk, %struct.icp_qat_hw_auth_algo_blk* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %13, align 8
  %102 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %103 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %104 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %107 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @qat_alg_do_precomputes(%struct.icp_qat_hw_auth_algo_blk* %101, %struct.qat_alg_aead_ctx* %102, i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %4
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %237

114:                                              ; preds = %4
  %115 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %116 = call i32 @qat_alg_init_common_hdr(%struct.icp_qat_fw_comn_req_hdr* %115, i32 1)
  %117 = load i32, i32* @ICP_QAT_FW_LA_CMD_HASH_CIPHER, align 4
  %118 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %119 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %121 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ICP_QAT_FW_LA_DIGEST_IN_BUFFER, align 4
  %124 = call i32 @ICP_QAT_FW_LA_DIGEST_IN_BUFFER_SET(i32 %122, i32 %123)
  %125 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %126 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ICP_QAT_FW_LA_NO_RET_AUTH_RES, align 4
  %129 = call i32 @ICP_QAT_FW_LA_RET_AUTH_SET(i32 %127, i32 %128)
  %130 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %131 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ICP_QAT_FW_LA_CMP_AUTH_RES, align 4
  %134 = call i32 @ICP_QAT_FW_LA_CMP_AUTH_SET(i32 %132, i32 %133)
  %135 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %136 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %139 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %143 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %147 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = ashr i32 %148, 3
  %150 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %151 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %153 = ashr i32 %152, 3
  %154 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %155 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %157 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @crypto_shash_digestsize(i32 %158)
  %160 = call i32 @roundup(i32 %159, i32 8)
  %161 = mul nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = add i64 4, %162
  %164 = lshr i64 %163, 3
  %165 = trunc i64 %164 to i32
  %166 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %167 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %169 = load i32, i32* @ICP_QAT_FW_SLICE_CIPHER, align 4
  %170 = call i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %168, i32 %169)
  %171 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %172 = load i32, i32* @ICP_QAT_FW_SLICE_DRAM_WR, align 4
  %173 = call i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %171, i32 %172)
  %174 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %175 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %174, i32 0, i32 7
  store i64 0, i64* %175, align 8
  %176 = load i32, i32* @ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED, align 4
  %177 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %178 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %177, i32 0, i32 9
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %181 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %184 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %186 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  switch i32 %187, label %211 [
    i32 130, label %188
    i32 129, label %197
    i32 128, label %204
  ]

188:                                              ; preds = %114
  %189 = load i32, i32* @ICP_QAT_HW_SHA1_STATE1_SZ, align 4
  %190 = call i32 @round_up(i32 %189, i32 8)
  %191 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %192 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @ICP_QAT_HW_SHA1_STATE2_SZ, align 4
  %194 = call i32 @round_up(i32 %193, i32 8)
  %195 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %196 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  br label %212

197:                                              ; preds = %114
  %198 = load i32, i32* @ICP_QAT_HW_SHA256_STATE1_SZ, align 4
  %199 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %200 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @ICP_QAT_HW_SHA256_STATE2_SZ, align 4
  %202 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %203 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %202, i32 0, i32 6
  store i32 %201, i32* %203, align 8
  br label %212

204:                                              ; preds = %114
  %205 = load i32, i32* @ICP_QAT_HW_SHA512_STATE1_SZ, align 4
  %206 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %207 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @ICP_QAT_HW_SHA512_STATE2_SZ, align 4
  %209 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %210 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  br label %212

211:                                              ; preds = %114
  br label %212

212:                                              ; preds = %211, %204, %197, %188
  %213 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %214 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %217 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @round_up(i32 %218, i32 8)
  %220 = sext i32 %219 to i64
  %221 = add i64 4, %220
  %222 = lshr i64 %221, 3
  %223 = add i64 %215, %222
  %224 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %225 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %224, i32 0, i32 8
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.icp_qat_fw_la_auth_req_params*, %struct.icp_qat_fw_la_auth_req_params** %21, align 8
  %228 = getelementptr inbounds %struct.icp_qat_fw_la_auth_req_params, %struct.icp_qat_fw_la_auth_req_params* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  %229 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %230 = bitcast %struct.icp_qat_fw_auth_cd_ctrl_hdr* %229 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  %231 = load i32, i32* @ICP_QAT_FW_SLICE_AUTH, align 4
  %232 = call i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %230, i32 %231)
  %233 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %234 = bitcast %struct.icp_qat_fw_auth_cd_ctrl_hdr* %233 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  %235 = load i32, i32* @ICP_QAT_FW_SLICE_CIPHER, align 4
  %236 = call i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %234, i32 %235)
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %212, %111
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @QAT_AES_HW_CONFIG_DEC(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ICP_QAT_HW_AUTH_CONFIG_BUILD(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i64 @qat_alg_do_precomputes(%struct.icp_qat_hw_auth_algo_blk*, %struct.qat_alg_aead_ctx*, i32, i32) #1

declare dso_local i32 @qat_alg_init_common_hdr(%struct.icp_qat_fw_comn_req_hdr*, i32) #1

declare dso_local i32 @ICP_QAT_FW_LA_DIGEST_IN_BUFFER_SET(i32, i32) #1

declare dso_local i32 @ICP_QAT_FW_LA_RET_AUTH_SET(i32, i32) #1

declare dso_local i32 @ICP_QAT_FW_LA_CMP_AUTH_SET(i32, i32) #1

declare dso_local i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr*, i32) #1

declare dso_local i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr*, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
