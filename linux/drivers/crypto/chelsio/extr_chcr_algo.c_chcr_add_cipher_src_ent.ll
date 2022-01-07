; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_cipher_src_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_add_cipher_src_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.cipher_wr_param = type { i32 }
%struct.ulptx_walk = type { i32, i32 }
%struct.chcr_blkcipher_req_ctx = type { i32, i32, i32, i64, i32 }
%struct.ulptx_sgl = type { i32 }

@IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_cipher_src_ent(%struct.ablkcipher_request* %0, i8* %1, %struct.cipher_wr_param* %2) #0 {
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cipher_wr_param*, align 8
  %7 = alloca %struct.ulptx_walk, align 4
  %8 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %9 = alloca i32*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cipher_wr_param* %2, %struct.cipher_wr_param** %6, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %10)
  store %struct.chcr_blkcipher_req_ctx* %11, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IV, align 4
  %19 = call i32 @memcpy(i32* %14, i32 %17, i32 %18)
  %20 = load i32, i32* @IV, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %9, align 8
  %24 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sg_nents(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %6, align 8
  %38 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sg_pcopy_to_buffer(i32 %31, i32 %35, i32* %36, i32 %39, i32 %42)
  br label %67

44:                                               ; preds = %3
  %45 = load i32*, i32** %9, align 8
  %46 = bitcast i32* %45 to %struct.ulptx_sgl*
  %47 = call i32 @ulptx_walk_init(%struct.ulptx_walk* %7, %struct.ulptx_sgl* %46)
  %48 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cipher_wr_param*, %struct.cipher_wr_param** %6, align 8
  %52 = getelementptr inbounds %struct.cipher_wr_param, %struct.cipher_wr_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ulptx_walk_add_sg(%struct.ulptx_walk* %7, i32 %50, i32 %53, i32 %56)
  %58 = getelementptr inbounds %struct.ulptx_walk, %struct.ulptx_walk* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ulptx_walk, %struct.ulptx_walk* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = call i32 @ulptx_walk_end(%struct.ulptx_walk* %7)
  br label %67

67:                                               ; preds = %44, %28
  ret void
}

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @ulptx_walk_init(%struct.ulptx_walk*, %struct.ulptx_sgl*) #1

declare dso_local i32 @ulptx_walk_add_sg(%struct.ulptx_walk*, i32, i32, i32) #1

declare dso_local i32 @ulptx_walk_end(%struct.ulptx_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
