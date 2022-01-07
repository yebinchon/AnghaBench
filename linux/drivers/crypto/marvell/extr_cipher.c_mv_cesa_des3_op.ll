; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_des3_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_des3_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mv_cesa_op_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mv_cesa_des3_ctx = type { i32 }

@CESA_SA_DESC_CFG_CRYPTM_3DES = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_CRYPTM_MSK = common dso_local global i32 0, align 4
@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_des3_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_des3_op(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx*, align 8
  %5 = alloca %struct.mv_cesa_des3_ctx*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %4, align 8
  %6 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %7 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mv_cesa_des3_ctx* @crypto_tfm_ctx(i32 %9)
  store %struct.mv_cesa_des3_ctx* %10, %struct.mv_cesa_des3_ctx** %5, align 8
  %11 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %12 = load i32, i32* @CESA_SA_DESC_CFG_CRYPTM_3DES, align 4
  %13 = load i32, i32* @CESA_SA_DESC_CFG_CRYPTM_MSK, align 4
  %14 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %11, i32 %12, i32 %13)
  %15 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mv_cesa_des3_ctx*, %struct.mv_cesa_des3_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.mv_cesa_des3_ctx, %struct.mv_cesa_des3_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %24 = call i32 @memcpy(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %26 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %27 = call i32 @mv_cesa_skcipher_queue_req(%struct.skcipher_request* %25, %struct.mv_cesa_op_ctx* %26)
  ret i32 %27
}

declare dso_local %struct.mv_cesa_des3_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mv_cesa_skcipher_queue_req(%struct.skcipher_request*, %struct.mv_cesa_op_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
