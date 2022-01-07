; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_crypto_free_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_crypto_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ctx_hdr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_free_context(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crypto_ctx_hdr*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.crypto_ctx_hdr*
  store %struct.crypto_ctx_hdr* %9, %struct.crypto_ctx_hdr** %3, align 8
  %10 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_ctx_hdr, %struct.crypto_ctx_hdr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_ctx_hdr, %struct.crypto_ctx_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %3, align 8
  %17 = getelementptr inbounds %struct.crypto_ctx_hdr, %struct.crypto_ctx_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dma_pool_free(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %3, align 8
  %21 = call i32 @kfree(%struct.crypto_ctx_hdr* %20)
  br label %22

22:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.crypto_ctx_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
