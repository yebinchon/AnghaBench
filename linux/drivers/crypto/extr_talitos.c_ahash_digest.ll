; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.talitos_ahash_req_ctx = type { i32 }
%struct.crypto_ahash = type { i32 (%struct.ahash_request.0*)* }
%struct.ahash_request.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.talitos_ahash_req_ctx* %6, %struct.talitos_ahash_req_ctx** %3, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %7)
  store %struct.crypto_ahash* %8, %struct.crypto_ahash** %4, align 8
  %9 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %10 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %9, i32 0, i32 0
  %11 = load i32 (%struct.ahash_request.0*)*, i32 (%struct.ahash_request.0*)** %10, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %13 = bitcast %struct.ahash_request* %12 to %struct.ahash_request.0*
  %14 = call i32 %11(%struct.ahash_request.0* %13)
  %15 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ahash_process_req(%struct.ahash_request* %17, i32 %20)
  ret i32 %21
}

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @ahash_process_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
