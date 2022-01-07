; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_ablkcipher_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_ablkcipher_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.virtio_crypto_ablkcipher_ctx = type { %struct.virtio_crypto* }
%struct.virtio_crypto = type { %struct.data_queue* }
%struct.data_queue = type { i32 }
%struct.virtio_crypto_sym_request = type { i32, %struct.ablkcipher_request*, %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_request }
%struct.virtio_crypto_request = type { i32, %struct.data_queue* }

@virtio_crypto_dataq_sym_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @virtio_crypto_ablkcipher_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_crypto_ablkcipher_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.virtio_crypto_ablkcipher_ctx*, align 8
  %5 = alloca %struct.virtio_crypto_sym_request*, align 8
  %6 = alloca %struct.virtio_crypto_request*, align 8
  %7 = alloca %struct.virtio_crypto*, align 8
  %8 = alloca %struct.data_queue*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %10 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %9)
  store %struct.crypto_ablkcipher* %10, %struct.crypto_ablkcipher** %3, align 8
  %11 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %12 = call %struct.virtio_crypto_ablkcipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %11)
  store %struct.virtio_crypto_ablkcipher_ctx* %12, %struct.virtio_crypto_ablkcipher_ctx** %4, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %14 = call %struct.virtio_crypto_sym_request* @ablkcipher_request_ctx(%struct.ablkcipher_request* %13)
  store %struct.virtio_crypto_sym_request* %14, %struct.virtio_crypto_sym_request** %5, align 8
  %15 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %16 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %15, i32 0, i32 3
  store %struct.virtio_crypto_request* %16, %struct.virtio_crypto_request** %6, align 8
  %17 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %17, i32 0, i32 0
  %19 = load %struct.virtio_crypto*, %struct.virtio_crypto** %18, align 8
  store %struct.virtio_crypto* %19, %struct.virtio_crypto** %7, align 8
  %20 = load %struct.virtio_crypto*, %struct.virtio_crypto** %7, align 8
  %21 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %20, i32 0, i32 0
  %22 = load %struct.data_queue*, %struct.data_queue** %21, align 8
  %23 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %22, i64 0
  store %struct.data_queue* %23, %struct.data_queue** %8, align 8
  %24 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  %25 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %6, align 8
  %26 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %25, i32 0, i32 1
  store %struct.data_queue* %24, %struct.data_queue** %26, align 8
  %27 = load i32, i32* @virtio_crypto_dataq_sym_callback, align 4
  %28 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %6, align 8
  %29 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %4, align 8
  %31 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %32 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %31, i32 0, i32 2
  store %struct.virtio_crypto_ablkcipher_ctx* %30, %struct.virtio_crypto_ablkcipher_ctx** %32, align 8
  %33 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %34 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %35 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %34, i32 0, i32 1
  store %struct.ablkcipher_request* %33, %struct.ablkcipher_request** %35, align 8
  %36 = load %struct.virtio_crypto_sym_request*, %struct.virtio_crypto_sym_request** %5, align 8
  %37 = getelementptr inbounds %struct.virtio_crypto_sym_request, %struct.virtio_crypto_sym_request* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  %39 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %42 = call i32 @crypto_transfer_ablkcipher_request_to_engine(i32 %40, %struct.ablkcipher_request* %41)
  ret i32 %42
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.virtio_crypto_ablkcipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.virtio_crypto_sym_request* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @crypto_transfer_ablkcipher_request_to_engine(i32, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
