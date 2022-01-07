; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_aead_alg_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_aead_alg_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_la_resp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qat_crypto_request = type { %struct.aead_request*, %struct.qat_alg_aead_ctx* }
%struct.aead_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.qat_alg_aead_ctx = type { %struct.qat_crypto_instance* }
%struct.qat_crypto_instance = type { i32 }

@ICP_QAT_FW_COMN_STATUS_FLAG_OK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_la_resp*, %struct.qat_crypto_request*)* @qat_aead_alg_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_aead_alg_callback(%struct.icp_qat_fw_la_resp* %0, %struct.qat_crypto_request* %1) #0 {
  %3 = alloca %struct.icp_qat_fw_la_resp*, align 8
  %4 = alloca %struct.qat_crypto_request*, align 8
  %5 = alloca %struct.qat_alg_aead_ctx*, align 8
  %6 = alloca %struct.qat_crypto_instance*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_la_resp* %0, %struct.icp_qat_fw_la_resp** %3, align 8
  store %struct.qat_crypto_request* %1, %struct.qat_crypto_request** %4, align 8
  %11 = load %struct.qat_crypto_request*, %struct.qat_crypto_request** %4, align 8
  %12 = getelementptr inbounds %struct.qat_crypto_request, %struct.qat_crypto_request* %11, i32 0, i32 1
  %13 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %12, align 8
  store %struct.qat_alg_aead_ctx* %13, %struct.qat_alg_aead_ctx** %5, align 8
  %14 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %14, i32 0, i32 0
  %16 = load %struct.qat_crypto_instance*, %struct.qat_crypto_instance** %15, align 8
  store %struct.qat_crypto_instance* %16, %struct.qat_crypto_instance** %6, align 8
  %17 = load %struct.qat_crypto_request*, %struct.qat_crypto_request** %4, align 8
  %18 = getelementptr inbounds %struct.qat_crypto_request, %struct.qat_crypto_request* %17, i32 0, i32 0
  %19 = load %struct.aead_request*, %struct.aead_request** %18, align 8
  store %struct.aead_request* %19, %struct.aead_request** %7, align 8
  %20 = load %struct.icp_qat_fw_la_resp*, %struct.icp_qat_fw_la_resp** %3, align 8
  %21 = getelementptr inbounds %struct.icp_qat_fw_la_resp, %struct.icp_qat_fw_la_resp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ICP_QAT_FW_COMN_RESP_CRYPTO_STAT_GET(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.qat_crypto_instance*, %struct.qat_crypto_instance** %6, align 8
  %27 = load %struct.qat_crypto_request*, %struct.qat_crypto_request** %4, align 8
  %28 = call i32 @qat_alg_free_bufl(%struct.qat_crypto_instance* %26, %struct.qat_crypto_request* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ICP_QAT_FW_COMN_STATUS_FLAG_OK, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EBADMSG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %41, align 8
  %43 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %42(%struct.TYPE_4__* %44, i32 %45)
  ret void
}

declare dso_local i32 @ICP_QAT_FW_COMN_RESP_CRYPTO_STAT_GET(i32) #1

declare dso_local i32 @qat_alg_free_bufl(%struct.qat_crypto_instance*, %struct.qat_crypto_request*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
