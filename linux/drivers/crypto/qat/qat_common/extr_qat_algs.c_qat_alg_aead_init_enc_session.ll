; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_enc_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init_enc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_keys = type { i32, i32, i32, i32 }
%struct.qat_alg_aead_ctx = type { i32, i32, i32, %struct.icp_qat_fw_la_bulk_req, %struct.TYPE_10__* }
%struct.icp_qat_fw_la_bulk_req = type { i32, %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr_cd_pars }
%struct.icp_qat_fw_comn_req_hdr = type { i32, i32 }
%struct.icp_qat_fw_comn_req_hdr_cd_pars = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.qat_enc }
%struct.qat_enc = type { %struct.icp_qat_hw_cipher_algo_blk }
%struct.icp_qat_hw_cipher_algo_blk = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.icp_qat_hw_auth_algo_blk = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.icp_qat_fw_cipher_cd_ctrl_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.icp_qat_fw_auth_cd_ctrl_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@ICP_QAT_HW_AUTH_MODE1 = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_CMD_CIPHER_HASH = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_DIGEST_IN_BUFFER = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_RET_AUTH_RES = common dso_local global i32 0, align 4
@ICP_QAT_FW_LA_NO_CMP_AUTH_RES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_CIPHER = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_AUTH = common dso_local global i32 0, align 4
@ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA1_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA1_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA256_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA256_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA512_STATE1_SZ = common dso_local global i32 0, align 4
@ICP_QAT_HW_SHA512_STATE2_SZ = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_DRAM_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32, %struct.crypto_authenc_keys*, i32)* @qat_alg_aead_init_enc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_aead_init_enc_session(%struct.crypto_aead* %0, i32 %1, %struct.crypto_authenc_keys* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_authenc_keys*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qat_alg_aead_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qat_enc*, align 8
  %13 = alloca %struct.icp_qat_hw_cipher_algo_blk*, align 8
  %14 = alloca %struct.icp_qat_hw_auth_algo_blk*, align 8
  %15 = alloca %struct.icp_qat_fw_la_bulk_req*, align 8
  %16 = alloca %struct.icp_qat_fw_comn_req_hdr_cd_pars*, align 8
  %17 = alloca %struct.icp_qat_fw_comn_req_hdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, align 8
  %20 = alloca %struct.icp_qat_fw_auth_cd_ctrl_hdr*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.crypto_authenc_keys* %2, %struct.crypto_authenc_keys** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %22 = call %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %21)
  store %struct.qat_alg_aead_ctx* %22, %struct.qat_alg_aead_ctx** %10, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %24 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store %struct.qat_enc* %28, %struct.qat_enc** %12, align 8
  %29 = load %struct.qat_enc*, %struct.qat_enc** %12, align 8
  %30 = getelementptr inbounds %struct.qat_enc, %struct.qat_enc* %29, i32 0, i32 0
  store %struct.icp_qat_hw_cipher_algo_blk* %30, %struct.icp_qat_hw_cipher_algo_blk** %13, align 8
  %31 = load %struct.qat_enc*, %struct.qat_enc** %12, align 8
  %32 = bitcast %struct.qat_enc* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %35 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = bitcast i8* %38 to %struct.icp_qat_hw_auth_algo_blk*
  store %struct.icp_qat_hw_auth_algo_blk* %39, %struct.icp_qat_hw_auth_algo_blk** %14, align 8
  %40 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %40, i32 0, i32 3
  store %struct.icp_qat_fw_la_bulk_req* %41, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %42 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %43 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %42, i32 0, i32 2
  store %struct.icp_qat_fw_comn_req_hdr_cd_pars* %43, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %44 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %45 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %44, i32 0, i32 1
  store %struct.icp_qat_fw_comn_req_hdr* %45, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %46 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %15, align 8
  %47 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to i8*
  store i8* %48, i8** %18, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = bitcast i8* %49 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  store %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %50, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = bitcast i8* %51 to %struct.icp_qat_fw_auth_cd_ctrl_hdr*
  store %struct.icp_qat_fw_auth_cd_ctrl_hdr* %52, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @QAT_AES_HW_CONFIG_ENC(i32 %53, i32 %54)
  %56 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %13, align 8
  %57 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %13, align 8
  %61 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %65 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %68 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %63, i32 %66, i32 %69)
  %71 = load i32, i32* @ICP_QAT_HW_AUTH_MODE1, align 4
  %72 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %73 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ICP_QAT_HW_AUTH_CONFIG_BUILD(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %14, align 8
  %78 = getelementptr inbounds %struct.icp_qat_hw_auth_algo_blk, %struct.icp_qat_hw_auth_algo_blk* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %83 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @crypto_shash_blocksize(i32 %84)
  %86 = call i32 @cpu_to_be32(i32 %85)
  %87 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %14, align 8
  %88 = getelementptr inbounds %struct.icp_qat_hw_auth_algo_blk, %struct.icp_qat_hw_auth_algo_blk* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %14, align 8
  %93 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %94 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %95 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %98 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @qat_alg_do_precomputes(%struct.icp_qat_hw_auth_algo_blk* %92, %struct.qat_alg_aead_ctx* %93, i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %4
  %103 = load i32, i32* @EFAULT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %226

105:                                              ; preds = %4
  %106 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %107 = call i32 @qat_alg_init_common_hdr(%struct.icp_qat_fw_comn_req_hdr* %106, i32 1)
  %108 = load i32, i32* @ICP_QAT_FW_LA_CMD_CIPHER_HASH, align 4
  %109 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %110 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %112 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ICP_QAT_FW_LA_DIGEST_IN_BUFFER, align 4
  %115 = call i32 @ICP_QAT_FW_LA_DIGEST_IN_BUFFER_SET(i32 %113, i32 %114)
  %116 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %117 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ICP_QAT_FW_LA_RET_AUTH_RES, align 4
  %120 = call i32 @ICP_QAT_FW_LA_RET_AUTH_SET(i32 %118, i32 %119)
  %121 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %17, align 8
  %122 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ICP_QAT_FW_LA_NO_CMP_AUTH_RES, align 4
  %125 = call i32 @ICP_QAT_FW_LA_CMP_AUTH_SET(i32 %123, i32 %124)
  %126 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %127 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %130 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  %133 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %16, align 8
  %134 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  %137 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %8, align 8
  %138 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 3
  %141 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %142 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %144 = ashr i32 %143, 3
  %145 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %146 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %148 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %147, i32 0, i32 9
  store i64 0, i64* %148, align 8
  %149 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %150 = load i32, i32* @ICP_QAT_FW_SLICE_CIPHER, align 4
  %151 = call i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %149, i32 %150)
  %152 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %19, align 8
  %153 = load i32, i32* @ICP_QAT_FW_SLICE_AUTH, align 4
  %154 = call i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %152, i32 %153)
  %155 = load %struct.icp_qat_hw_auth_algo_blk*, %struct.icp_qat_hw_auth_algo_blk** %14, align 8
  %156 = bitcast %struct.icp_qat_hw_auth_algo_blk* %155 to i8*
  %157 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %13, align 8
  %158 = bitcast %struct.icp_qat_hw_cipher_algo_blk* %157 to i8*
  %159 = ptrtoint i8* %156 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = ashr i64 %161, 3
  %163 = trunc i64 %162 to i32
  %164 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %165 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @ICP_QAT_FW_AUTH_HDR_FLAG_NO_NESTED, align 4
  %167 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %168 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %171 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %174 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %10, align 8
  %176 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %201 [
    i32 130, label %178
    i32 129, label %187
    i32 128, label %194
  ]

178:                                              ; preds = %105
  %179 = load i32, i32* @ICP_QAT_HW_SHA1_STATE1_SZ, align 4
  %180 = call i32 @round_up(i32 %179, i32 8)
  %181 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %182 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @ICP_QAT_HW_SHA1_STATE2_SZ, align 4
  %184 = call i32 @round_up(i32 %183, i32 8)
  %185 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %186 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  br label %202

187:                                              ; preds = %105
  %188 = load i32, i32* @ICP_QAT_HW_SHA256_STATE1_SZ, align 4
  %189 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %190 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @ICP_QAT_HW_SHA256_STATE2_SZ, align 4
  %192 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %193 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 8
  br label %202

194:                                              ; preds = %105
  %195 = load i32, i32* @ICP_QAT_HW_SHA512_STATE1_SZ, align 4
  %196 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %197 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @ICP_QAT_HW_SHA512_STATE2_SZ, align 4
  %199 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %200 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %199, i32 0, i32 6
  store i32 %198, i32* %200, align 8
  br label %202

201:                                              ; preds = %105
  br label %202

202:                                              ; preds = %201, %194, %187, %178
  %203 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %204 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %208 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @round_up(i32 %209, i32 8)
  %211 = sext i32 %210 to i64
  %212 = add i64 4, %211
  %213 = lshr i64 %212, 3
  %214 = add i64 %206, %213
  %215 = trunc i64 %214 to i32
  %216 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %217 = getelementptr inbounds %struct.icp_qat_fw_auth_cd_ctrl_hdr, %struct.icp_qat_fw_auth_cd_ctrl_hdr* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 4
  %218 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %219 = bitcast %struct.icp_qat_fw_auth_cd_ctrl_hdr* %218 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  %220 = load i32, i32* @ICP_QAT_FW_SLICE_AUTH, align 4
  %221 = call i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %219, i32 %220)
  %222 = load %struct.icp_qat_fw_auth_cd_ctrl_hdr*, %struct.icp_qat_fw_auth_cd_ctrl_hdr** %20, align 8
  %223 = bitcast %struct.icp_qat_fw_auth_cd_ctrl_hdr* %222 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  %224 = load i32, i32* @ICP_QAT_FW_SLICE_DRAM_WR, align 4
  %225 = call i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %223, i32 %224)
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %202, %102
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @QAT_AES_HW_CONFIG_ENC(i32, i32) #1

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
