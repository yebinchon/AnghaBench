; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_com.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_com.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qat_alg_ablkcipher_ctx = type { i32 }
%struct.icp_qat_fw_la_bulk_req = type { i32, %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr_cd_pars }
%struct.icp_qat_fw_comn_req_hdr = type { i32 }
%struct.icp_qat_fw_comn_req_hdr_cd_pars = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.icp_qat_hw_cipher_algo_blk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.icp_qat_fw_cipher_cd_ctrl_hdr = type { i32, i32, i64 }

@ICP_QAT_FW_LA_CMD_CIPHER = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_CIPHER = common dso_local global i32 0, align 4
@ICP_QAT_FW_SLICE_DRAM_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qat_alg_ablkcipher_ctx*, %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_hw_cipher_algo_blk*, i32*, i32)* @qat_alg_ablkcipher_init_com to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_alg_ablkcipher_init_com(%struct.qat_alg_ablkcipher_ctx* %0, %struct.icp_qat_fw_la_bulk_req* %1, %struct.icp_qat_hw_cipher_algo_blk* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.qat_alg_ablkcipher_ctx*, align 8
  %7 = alloca %struct.icp_qat_fw_la_bulk_req*, align 8
  %8 = alloca %struct.icp_qat_hw_cipher_algo_blk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.icp_qat_fw_comn_req_hdr_cd_pars*, align 8
  %12 = alloca %struct.icp_qat_fw_comn_req_hdr*, align 8
  %13 = alloca %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, align 8
  store %struct.qat_alg_ablkcipher_ctx* %0, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  store %struct.icp_qat_fw_la_bulk_req* %1, %struct.icp_qat_fw_la_bulk_req** %7, align 8
  store %struct.icp_qat_hw_cipher_algo_blk* %2, %struct.icp_qat_hw_cipher_algo_blk** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %7, align 8
  %15 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %14, i32 0, i32 2
  store %struct.icp_qat_fw_comn_req_hdr_cd_pars* %15, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %11, align 8
  %16 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %7, align 8
  %17 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %16, i32 0, i32 1
  store %struct.icp_qat_fw_comn_req_hdr* %17, %struct.icp_qat_fw_comn_req_hdr** %12, align 8
  %18 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %7, align 8
  %19 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.icp_qat_fw_cipher_cd_ctrl_hdr*
  store %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %21, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %22 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %8, align 8
  %23 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %12, align 8
  %30 = call i32 @qat_alg_init_common_hdr(%struct.icp_qat_fw_comn_req_hdr* %29, i32 0)
  %31 = load i32, i32* @ICP_QAT_FW_LA_CMD_CIPHER, align 4
  %32 = load %struct.icp_qat_fw_comn_req_hdr*, %struct.icp_qat_fw_comn_req_hdr** %12, align 8
  %33 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr, %struct.icp_qat_fw_comn_req_hdr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %11, align 8
  %35 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 3
  %40 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %41 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %43 = ashr i32 %42, 3
  %44 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %45 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %47 = getelementptr inbounds %struct.icp_qat_fw_cipher_cd_ctrl_hdr, %struct.icp_qat_fw_cipher_cd_ctrl_hdr* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %49 = load i32, i32* @ICP_QAT_FW_SLICE_CIPHER, align 4
  %50 = call i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %48, i32 %49)
  %51 = load %struct.icp_qat_fw_cipher_cd_ctrl_hdr*, %struct.icp_qat_fw_cipher_cd_ctrl_hdr** %13, align 8
  %52 = load i32, i32* @ICP_QAT_FW_SLICE_DRAM_WR, align 4
  %53 = call i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr* %51, i32 %52)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qat_alg_init_common_hdr(%struct.icp_qat_fw_comn_req_hdr*, i32) #1

declare dso_local i32 @ICP_QAT_FW_COMN_CURR_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr*, i32) #1

declare dso_local i32 @ICP_QAT_FW_COMN_NEXT_ID_SET(%struct.icp_qat_fw_cipher_cd_ctrl_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
