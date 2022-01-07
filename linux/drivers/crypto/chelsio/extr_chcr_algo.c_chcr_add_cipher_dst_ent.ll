; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_cipher_dst_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_cipher_dst_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.cpl_rx_phys_dsgl = type { i32 }
%struct.cipher_wr_param = type { i32, i32 }
%struct.chcr_blkcipher_req_ctx = type { i32, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.chcr_context = type { i32 }
%struct.dsgl_walk = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_cipher_dst_ent(%struct.ablkcipher_request* %0, %struct.cpl_rx_phys_dsgl* %1, %struct.cipher_wr_param* %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.cpl_rx_phys_dsgl*, align 8
  %7 = alloca %struct.cipher_wr_param*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %10 = alloca %struct.crypto_ablkcipher*, align 8
  %11 = alloca %struct.chcr_context*, align 8
  %12 = alloca %struct.dsgl_walk, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %5, align 8
  store %struct.cpl_rx_phys_dsgl* %1, %struct.cpl_rx_phys_dsgl** %6, align 8
  store %struct.cipher_wr_param* %2, %struct.cipher_wr_param** %7, align 8
  store i16 %3, i16* %8, align 2
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %14 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %13)
  store %struct.chcr_blkcipher_req_ctx* %14, %struct.chcr_blkcipher_req_ctx** %9, align 8
  %15 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %7, align 8
  %16 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(i32 %17)
  store %struct.crypto_ablkcipher* %18, %struct.crypto_ablkcipher** %10, align 8
  %19 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %10, align 8
  %20 = call %struct.chcr_context* @c_ctx(%struct.crypto_ablkcipher* %19)
  store %struct.chcr_context* %20, %struct.chcr_context** %11, align 8
  %21 = load %struct.cpl_rx_phys_dsgl*, %struct.cpl_rx_phys_dsgl** %6, align 8
  %22 = call i32 @dsgl_walk_init(%struct.dsgl_walk* %12, %struct.cpl_rx_phys_dsgl* %21)
  %23 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %7, align 8
  %27 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dsgl_walk_add_sg(%struct.dsgl_walk* %12, i32 %25, i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i16, i16* %8, align 2
  %42 = load %struct.chcr_context*, %struct.chcr_context** %11, align 8
  %43 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dsgl_walk_end(%struct.dsgl_walk* %12, i16 zeroext %41, i32 %44)
  ret void
}

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(i32) #1

declare dso_local %struct.chcr_context* @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @dsgl_walk_init(%struct.dsgl_walk*, %struct.cpl_rx_phys_dsgl*) #1

declare dso_local i32 @dsgl_walk_add_sg(%struct.dsgl_walk*, i32, i32, i32) #1

declare dso_local i32 @dsgl_walk_end(%struct.dsgl_walk*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
