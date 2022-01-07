; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_std_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_std_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_skcipher_req = type { %struct.mv_cesa_req, %struct.mv_cesa_skcipher_std_req }
%struct.mv_cesa_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.mv_cesa_skcipher_std_req = type { i32, %struct.mv_cesa_op_ctx }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_skcipher_std_req_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_std_req_init(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.mv_cesa_op_ctx*, align 8
  %5 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %6 = alloca %struct.mv_cesa_skcipher_std_req*, align 8
  %7 = alloca %struct.mv_cesa_req*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %4, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %9 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %8)
  store %struct.mv_cesa_skcipher_req* %9, %struct.mv_cesa_skcipher_req** %5, align 8
  %10 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %5, align 8
  %11 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %10, i32 0, i32 1
  store %struct.mv_cesa_skcipher_std_req* %11, %struct.mv_cesa_skcipher_std_req** %6, align 8
  %12 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %5, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %12, i32 0, i32 0
  store %struct.mv_cesa_req* %13, %struct.mv_cesa_req** %7, align 8
  %14 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %6, align 8
  %15 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %14, i32 0, i32 1
  %16 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %4, align 8
  %17 = bitcast %struct.mv_cesa_op_ctx* %15 to i8*
  %18 = bitcast %struct.mv_cesa_op_ctx* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.mv_cesa_skcipher_std_req*, %struct.mv_cesa_skcipher_std_req** %6, align 8
  %20 = getelementptr inbounds %struct.mv_cesa_skcipher_std_req, %struct.mv_cesa_skcipher_std_req* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %7, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %7, align 8
  %25 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  ret i32 0
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
