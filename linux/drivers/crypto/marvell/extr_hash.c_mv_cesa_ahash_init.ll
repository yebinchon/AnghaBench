; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_ahash_req = type { i32, i64, %struct.mv_cesa_op_ctx }

@CESA_SA_DESC_CFG_OP_MAC_ONLY = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_FIRST_FRAG = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_OP_MSK = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_FRAG_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, %struct.mv_cesa_op_ctx*, i32)* @mv_cesa_ahash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_ahash_init(%struct.ahash_request* %0, %struct.mv_cesa_op_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.mv_cesa_op_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %9 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.mv_cesa_ahash_req* %9, %struct.mv_cesa_ahash_req** %7, align 8
  %10 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %11 = call i32 @memset(%struct.mv_cesa_ahash_req* %10, i32 0, i32 24)
  %12 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %13 = load i32, i32* @CESA_SA_DESC_CFG_OP_MAC_ONLY, align 4
  %14 = load i32, i32* @CESA_SA_DESC_CFG_FIRST_FRAG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CESA_SA_DESC_CFG_OP_MSK, align 4
  %17 = load i32, i32* @CESA_SA_DESC_CFG_FRAG_MSK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %12, i32 %15, i32 %18)
  %20 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %21 = call i32 @mv_cesa_set_mac_op_total_len(%struct.mv_cesa_op_ctx* %20, i32 0)
  %22 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %23 = call i32 @mv_cesa_set_mac_op_frag_len(%struct.mv_cesa_op_ctx* %22, i32 0)
  %24 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %25 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %24, i32 0, i32 2
  %26 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %27 = bitcast %struct.mv_cesa_op_ctx* %25 to i8*
  %28 = bitcast %struct.mv_cesa_op_ctx* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %7, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memset(%struct.mv_cesa_ahash_req*, i32, i32) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i32 @mv_cesa_set_mac_op_total_len(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @mv_cesa_set_mac_op_frag_len(%struct.mv_cesa_op_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
