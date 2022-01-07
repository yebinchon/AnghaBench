; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_algs.c_qat_alg_aead_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.qat_alg_aead_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32, i8*)* @qat_alg_aead_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_alg_aead_init(%struct.crypto_aead* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qat_alg_aead_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.qat_alg_aead_ctx* %10, %struct.qat_alg_aead_ctx** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @crypto_alloc_shash(i8* %11, i32 0, i32 0)
  %13 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.qat_alg_aead_ctx*, %struct.qat_alg_aead_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.qat_alg_aead_ctx, %struct.qat_alg_aead_ctx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %30 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %29, i32 4)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.qat_alg_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
