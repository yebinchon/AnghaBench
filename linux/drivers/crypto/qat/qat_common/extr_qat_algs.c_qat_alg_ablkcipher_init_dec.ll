; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_ablkcipher_init_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qat_alg_ablkcipher_ctx = type { i32, %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_hw_cipher_algo_blk* }
%struct.icp_qat_fw_la_bulk_req = type { %struct.icp_qat_fw_comn_req_hdr_cd_pars }
%struct.icp_qat_fw_comn_req_hdr_cd_pars = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.icp_qat_hw_cipher_algo_blk = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ICP_QAT_HW_CIPHER_CTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qat_alg_ablkcipher_ctx*, i32, i32*, i32, i32)* @qat_alg_ablkcipher_init_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_alg_ablkcipher_init_dec(%struct.qat_alg_ablkcipher_ctx* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qat_alg_ablkcipher_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.icp_qat_hw_cipher_algo_blk*, align 8
  %12 = alloca %struct.icp_qat_fw_la_bulk_req*, align 8
  %13 = alloca %struct.icp_qat_fw_comn_req_hdr_cd_pars*, align 8
  store %struct.qat_alg_ablkcipher_ctx* %0, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.qat_alg_ablkcipher_ctx, %struct.qat_alg_ablkcipher_ctx* %14, i32 0, i32 2
  %16 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %15, align 8
  store %struct.icp_qat_hw_cipher_algo_blk* %16, %struct.icp_qat_hw_cipher_algo_blk** %11, align 8
  %17 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.qat_alg_ablkcipher_ctx, %struct.qat_alg_ablkcipher_ctx* %17, i32 0, i32 1
  store %struct.icp_qat_fw_la_bulk_req* %18, %struct.icp_qat_fw_la_bulk_req** %12, align 8
  %19 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %12, align 8
  %20 = getelementptr inbounds %struct.icp_qat_fw_la_bulk_req, %struct.icp_qat_fw_la_bulk_req* %19, i32 0, i32 0
  store %struct.icp_qat_fw_comn_req_hdr_cd_pars* %20, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %13, align 8
  %21 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %22 = load %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_fw_la_bulk_req** %12, align 8
  %23 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %11, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @qat_alg_ablkcipher_init_com(%struct.qat_alg_ablkcipher_ctx* %21, %struct.icp_qat_fw_la_bulk_req* %22, %struct.icp_qat_hw_cipher_algo_blk* %23, i32* %24, i32 %25)
  %27 = load %struct.qat_alg_ablkcipher_ctx*, %struct.qat_alg_ablkcipher_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.qat_alg_ablkcipher_ctx, %struct.qat_alg_ablkcipher_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.icp_qat_fw_comn_req_hdr_cd_pars*, %struct.icp_qat_fw_comn_req_hdr_cd_pars** %13, align 8
  %31 = getelementptr inbounds %struct.icp_qat_fw_comn_req_hdr_cd_pars, %struct.icp_qat_fw_comn_req_hdr_cd_pars* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ICP_QAT_HW_CIPHER_CTR_MODE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @QAT_AES_HW_CONFIG_DEC(i32 %38, i32 %39)
  %41 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %11, align 8
  %42 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %53

45:                                               ; preds = %5
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @QAT_AES_HW_CONFIG_ENC(i32 %46, i32 %47)
  %49 = load %struct.icp_qat_hw_cipher_algo_blk*, %struct.icp_qat_hw_cipher_algo_blk** %11, align 8
  %50 = getelementptr inbounds %struct.icp_qat_hw_cipher_algo_blk, %struct.icp_qat_hw_cipher_algo_blk* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %37
  ret void
}

declare dso_local i32 @qat_alg_ablkcipher_init_com(%struct.qat_alg_ablkcipher_ctx*, %struct.icp_qat_fw_la_bulk_req*, %struct.icp_qat_hw_cipher_algo_blk*, i32*, i32) #1

declare dso_local i32 @QAT_AES_HW_CONFIG_DEC(i32, i32) #1

declare dso_local i32 @QAT_AES_HW_CONFIG_ENC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
