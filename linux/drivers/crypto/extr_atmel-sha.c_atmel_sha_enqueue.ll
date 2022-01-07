; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atmel_sha_reqctx = type { i32 }
%struct.atmel_sha_ctx = type { %struct.atmel_sha_dev* }
%struct.atmel_sha_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @atmel_sha_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_enqueue(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_sha_reqctx*, align 8
  %6 = alloca %struct.atmel_sha_ctx*, align 8
  %7 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.atmel_sha_reqctx* %9, %struct.atmel_sha_reqctx** %5, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.atmel_sha_ctx* @crypto_tfm_ctx(i32 %13)
  store %struct.atmel_sha_ctx* %14, %struct.atmel_sha_ctx** %6, align 8
  %15 = load %struct.atmel_sha_ctx*, %struct.atmel_sha_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_ctx, %struct.atmel_sha_ctx* %15, i32 0, i32 0
  %17 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %16, align 8
  store %struct.atmel_sha_dev* %17, %struct.atmel_sha_dev** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = call i32 @atmel_sha_handle_queue(%struct.atmel_sha_dev* %21, %struct.ahash_request* %22)
  ret i32 %23
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @atmel_sha_handle_queue(%struct.atmel_sha_dev*, %struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
