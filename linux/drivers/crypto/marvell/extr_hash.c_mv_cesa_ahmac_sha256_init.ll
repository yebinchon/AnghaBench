; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_sha256_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahmac_sha256_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mv_cesa_hmac_ctx = type { i32 }
%struct.mv_cesa_op_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CESA_SA_DESC_CFG_MACM_HMAC_SHA256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_ahmac_sha256_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahmac_sha256_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.mv_cesa_hmac_ctx*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mv_cesa_hmac_ctx* @crypto_tfm_ctx(i32 %8)
  store %struct.mv_cesa_hmac_ctx* %9, %struct.mv_cesa_hmac_ctx** %3, align 8
  %10 = bitcast %struct.mv_cesa_op_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i32, i32* @CESA_SA_DESC_CFG_MACM_HMAC_SHA256, align 4
  %12 = call i32 @mv_cesa_set_op_cfg(%struct.mv_cesa_op_ctx* %4, i32 %11)
  %13 = getelementptr inbounds %struct.mv_cesa_op_ctx, %struct.mv_cesa_op_ctx* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mv_cesa_hmac_ctx*, %struct.mv_cesa_hmac_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mv_cesa_hmac_ctx, %struct.mv_cesa_hmac_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %22 = call i32 @mv_cesa_ahash_init(%struct.ahash_request* %21, %struct.mv_cesa_op_ctx* %4, i32 0)
  ret i32 0
}

declare dso_local %struct.mv_cesa_hmac_ctx* @crypto_tfm_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mv_cesa_set_op_cfg(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mv_cesa_ahash_init(%struct.ahash_request*, %struct.mv_cesa_op_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
