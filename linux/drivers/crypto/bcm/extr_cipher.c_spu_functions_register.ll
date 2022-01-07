; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_functions_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_functions_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.spu_hw }
%struct.spu_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@iproc_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SPU_TYPE_SPUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Registering SPUM functions\00", align 1
@spum_dump_msg_hdr = common dso_local global i32 0, align 4
@spum_payload_length = common dso_local global i32 0, align 4
@spum_response_hdr_len = common dso_local global i32 0, align 4
@spum_hash_pad_len = common dso_local global i32 0, align 4
@spum_gcm_ccm_pad_len = common dso_local global i32 0, align 4
@spum_assoc_resp_len = common dso_local global i32 0, align 4
@spum_aead_ivlen = common dso_local global i32 0, align 4
@spum_hash_type = common dso_local global i32 0, align 4
@spum_digest_size = common dso_local global i32 0, align 4
@spum_create_request = common dso_local global i32 0, align 4
@spum_cipher_req_init = common dso_local global i32 0, align 4
@spum_cipher_req_finish = common dso_local global i32 0, align 4
@spum_request_pad = common dso_local global i32 0, align 4
@spum_tx_status_len = common dso_local global i32 0, align 4
@spum_rx_status_len = common dso_local global i32 0, align 4
@spum_status_process = common dso_local global i32 0, align 4
@spum_xts_tweak_in_payload = common dso_local global i32 0, align 4
@spum_ccm_update_iv = common dso_local global i32 0, align 4
@spum_wordalign_padlen = common dso_local global i32 0, align 4
@SPU_SUBTYPE_SPUM_NS2 = common dso_local global i32 0, align 4
@spum_ns2_ctx_max_payload = common dso_local global i32 0, align 4
@spum_nsp_ctx_max_payload = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Registering SPU2 functions\00", align 1
@spu2_dump_msg_hdr = common dso_local global i32 0, align 4
@spu2_ctx_max_payload = common dso_local global i32 0, align 4
@spu2_payload_length = common dso_local global i32 0, align 4
@spu2_response_hdr_len = common dso_local global i32 0, align 4
@spu2_hash_pad_len = common dso_local global i32 0, align 4
@spu2_gcm_ccm_pad_len = common dso_local global i32 0, align 4
@spu2_assoc_resp_len = common dso_local global i32 0, align 4
@spu2_aead_ivlen = common dso_local global i32 0, align 4
@spu2_hash_type = common dso_local global i32 0, align 4
@spu2_digest_size = common dso_local global i32 0, align 4
@spu2_create_request = common dso_local global i32 0, align 4
@spu2_cipher_req_init = common dso_local global i32 0, align 4
@spu2_cipher_req_finish = common dso_local global i32 0, align 4
@spu2_request_pad = common dso_local global i32 0, align 4
@spu2_tx_status_len = common dso_local global i32 0, align 4
@spu2_rx_status_len = common dso_local global i32 0, align 4
@spu2_status_process = common dso_local global i32 0, align 4
@spu2_xts_tweak_in_payload = common dso_local global i32 0, align 4
@spu2_ccm_update_iv = common dso_local global i32 0, align 4
@spu2_wordalign_padlen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32)* @spu_functions_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_functions_register(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spu_hw*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SPU_TYPE_SPUM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %3
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @spum_dump_msg_hdr, align 4
  %15 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %16 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %15, i32 0, i32 19
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @spum_payload_length, align 4
  %18 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %19 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %18, i32 0, i32 17
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @spum_response_hdr_len, align 4
  %21 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %22 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @spum_hash_pad_len, align 4
  %24 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %25 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @spum_gcm_ccm_pad_len, align 4
  %27 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %28 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @spum_assoc_resp_len, align 4
  %30 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %31 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @spum_aead_ivlen, align 4
  %33 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %34 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @spum_hash_type, align 4
  %36 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %37 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @spum_digest_size, align 4
  %39 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %40 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @spum_create_request, align 4
  %42 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %43 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @spum_cipher_req_init, align 4
  %45 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %46 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @spum_cipher_req_finish, align 4
  %48 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %49 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @spum_request_pad, align 4
  %51 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %52 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @spum_tx_status_len, align 4
  %54 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %55 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @spum_rx_status_len, align 4
  %57 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %58 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @spum_status_process, align 4
  %60 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %61 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @spum_xts_tweak_in_payload, align 4
  %63 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %64 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @spum_ccm_update_iv, align 4
  %66 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %67 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @spum_wordalign_padlen, align 4
  %69 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %70 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SPU_SUBTYPE_SPUM_NS2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %11
  %75 = load i32, i32* @spum_ns2_ctx_max_payload, align 4
  %76 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %77 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %11
  %79 = load i32, i32* @spum_nsp_ctx_max_payload, align 4
  %80 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %81 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %80, i32 0, i32 18
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %146

83:                                               ; preds = %3
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @spu2_dump_msg_hdr, align 4
  %87 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %88 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %87, i32 0, i32 19
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @spu2_ctx_max_payload, align 4
  %90 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %91 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %90, i32 0, i32 18
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @spu2_payload_length, align 4
  %93 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %94 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %93, i32 0, i32 17
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @spu2_response_hdr_len, align 4
  %96 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %97 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %96, i32 0, i32 16
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @spu2_hash_pad_len, align 4
  %99 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %100 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %99, i32 0, i32 15
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @spu2_gcm_ccm_pad_len, align 4
  %102 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %103 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %102, i32 0, i32 14
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @spu2_assoc_resp_len, align 4
  %105 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %106 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @spu2_aead_ivlen, align 4
  %108 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %109 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @spu2_hash_type, align 4
  %111 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %112 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @spu2_digest_size, align 4
  %114 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %115 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @spu2_create_request, align 4
  %117 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %118 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @spu2_cipher_req_init, align 4
  %120 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %121 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @spu2_cipher_req_finish, align 4
  %123 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %124 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @spu2_request_pad, align 4
  %126 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %127 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @spu2_tx_status_len, align 4
  %129 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %130 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @spu2_rx_status_len, align 4
  %132 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %133 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @spu2_status_process, align 4
  %135 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %136 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @spu2_xts_tweak_in_payload, align 4
  %138 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %139 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @spu2_ccm_update_iv, align 4
  %141 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %142 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @spu2_wordalign_padlen, align 4
  %144 = load %struct.spu_hw*, %struct.spu_hw** %7, align 8
  %145 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %83, %82
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
