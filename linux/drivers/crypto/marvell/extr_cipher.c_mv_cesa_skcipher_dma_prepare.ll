; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.mv_cesa_skcipher_req = type { %struct.mv_cesa_req }
%struct.mv_cesa_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_request*)* @mv_cesa_skcipher_dma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_skcipher_dma_prepare(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %4 = alloca %struct.mv_cesa_req*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %5 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %6 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %5)
  store %struct.mv_cesa_skcipher_req* %6, %struct.mv_cesa_skcipher_req** %3, align 8
  %7 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %3, align 8
  %8 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %7, i32 0, i32 0
  store %struct.mv_cesa_req* %8, %struct.mv_cesa_req** %4, align 8
  %9 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %10 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %4, align 8
  %11 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mv_cesa_dma_prepare(%struct.mv_cesa_req* %9, i32 %12)
  ret void
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @mv_cesa_dma_prepare(%struct.mv_cesa_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
