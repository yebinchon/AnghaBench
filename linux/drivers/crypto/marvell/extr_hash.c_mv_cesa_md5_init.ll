; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_md5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.mv_cesa_ahash_req = type { i32* }
%struct.mv_cesa_op_ctx = type { i32 }

@CESA_SA_DESC_CFG_MACM_MD5 = common dso_local global i32 0, align 4
@MD5_H0 = common dso_local global i32 0, align 4
@MD5_H1 = common dso_local global i32 0, align 4
@MD5_H2 = common dso_local global i32 0, align 4
@MD5_H3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_md5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_md5_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.mv_cesa_ahash_req*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.mv_cesa_ahash_req* %6, %struct.mv_cesa_ahash_req** %3, align 8
  %7 = bitcast %struct.mv_cesa_op_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load i32, i32* @CESA_SA_DESC_CFG_MACM_MD5, align 4
  %9 = call i32 @mv_cesa_set_op_cfg(%struct.mv_cesa_op_ctx* %4, i32 %8)
  %10 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %11 = call i32 @mv_cesa_ahash_init(%struct.ahash_request* %10, %struct.mv_cesa_op_ctx* %4, i32 1)
  %12 = load i32, i32* @MD5_H0, align 4
  %13 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %14 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @MD5_H1, align 4
  %18 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @MD5_H2, align 4
  %23 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %24 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @MD5_H3, align 4
  %28 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %27, i32* %31, align 4
  ret i32 0
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mv_cesa_set_op_cfg(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @mv_cesa_ahash_init(%struct.ahash_request*, %struct.mv_cesa_op_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
