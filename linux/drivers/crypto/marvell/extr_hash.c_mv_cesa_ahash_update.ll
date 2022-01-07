; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.mv_cesa_ahash_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.mv_cesa_ahash_req*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %4 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %5 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %4)
  store %struct.mv_cesa_ahash_req* %5, %struct.mv_cesa_ahash_req** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %3, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %16 = call i32 @mv_cesa_ahash_queue_req(%struct.ahash_request* %15)
  ret i32 %16
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_queue_req(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
