; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_alg_ablkcipher_init_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_alg_ablkcipher_init_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto_ablkcipher_ctx = type { i32, %struct.virtio_crypto* }
%struct.virtio_crypto = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"virtio_crypto: the key is too long\0A\00", align 1
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto_ablkcipher_ctx*, i32*, i32)* @virtio_crypto_alg_ablkcipher_init_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_crypto_alg_ablkcipher_init_sessions(%struct.virtio_crypto_ablkcipher_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_crypto_ablkcipher_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.virtio_crypto*, align 8
  store %struct.virtio_crypto_ablkcipher_ctx* %0, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %11, i32 0, i32 1
  %13 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  store %struct.virtio_crypto* %13, %struct.virtio_crypto** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.virtio_crypto*, %struct.virtio_crypto** %10, align 8
  %16 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %49

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @virtio_crypto_alg_validate_key(i32 %22, i32* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %49

26:                                               ; preds = %21
  %27 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @virtio_crypto_alg_ablkcipher_init_session(%struct.virtio_crypto_ablkcipher_ctx* %27, i32 %28, i32* %29, i32 %30, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %26
  %37 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @virtio_crypto_alg_ablkcipher_init_session(%struct.virtio_crypto_ablkcipher_ctx* %37, i32 %38, i32* %39, i32 %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  %46 = call i32 @virtio_crypto_alg_ablkcipher_close_session(%struct.virtio_crypto_ablkcipher_ctx* %45, i32 1)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %57

49:                                               ; preds = %25, %19
  %50 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %54 = call i32 @crypto_tfm_set_flags(i32 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %48, %44, %34
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @virtio_crypto_alg_validate_key(i32, i32*) #1

declare dso_local i32 @virtio_crypto_alg_ablkcipher_init_session(%struct.virtio_crypto_ablkcipher_ctx*, i32, i32*, i32, i32) #1

declare dso_local i32 @virtio_crypto_alg_ablkcipher_close_session(%struct.virtio_crypto_ablkcipher_ctx*, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
