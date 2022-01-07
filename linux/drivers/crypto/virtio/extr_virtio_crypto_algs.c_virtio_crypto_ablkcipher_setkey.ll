; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_ablkcipher_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_ablkcipher_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.virtio_crypto_ablkcipher_ctx = type { %struct.virtio_crypto* }
%struct.virtio_crypto = type { i32 }

@VIRTIO_CRYPTO_SERVICE_CIPHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"virtio_crypto: Could not find a virtio device in the system or unsupported algo\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @virtio_crypto_ablkcipher_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_crypto_ablkcipher_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_crypto_ablkcipher_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.virtio_crypto*, align 8
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %14 = call %struct.virtio_crypto_ablkcipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %13)
  store %struct.virtio_crypto_ablkcipher_ctx* %14, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @virtio_crypto_alg_validate_key(i32 %15, i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %22, i32 0, i32 0
  %24 = load %struct.virtio_crypto*, %struct.virtio_crypto** %23, align 8
  %25 = icmp ne %struct.virtio_crypto* %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = call i32 (...) @virtio_crypto_get_current_node()
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @VIRTIO_CRYPTO_SERVICE_CIPHER, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.virtio_crypto* @virtcrypto_get_dev_node(i32 %28, i32 %29, i32 %30)
  store %struct.virtio_crypto* %31, %struct.virtio_crypto** %12, align 8
  %32 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %33 = icmp ne %struct.virtio_crypto* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %26
  %39 = load %struct.virtio_crypto*, %struct.virtio_crypto** %12, align 8
  %40 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %40, i32 0, i32 0
  store %struct.virtio_crypto* %39, %struct.virtio_crypto** %41, align 8
  br label %47

42:                                               ; preds = %21
  %43 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %44 = call i32 @virtio_crypto_alg_ablkcipher_close_session(%struct.virtio_crypto_ablkcipher_ctx* %43, i32 1)
  %45 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %46 = call i32 @virtio_crypto_alg_ablkcipher_close_session(%struct.virtio_crypto_ablkcipher_ctx* %45, i32 0)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @virtio_crypto_alg_ablkcipher_init_sessions(%struct.virtio_crypto_ablkcipher_ctx* %48, i32* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %55, i32 0, i32 0
  %57 = load %struct.virtio_crypto*, %struct.virtio_crypto** %56, align 8
  %58 = call i32 @virtcrypto_dev_put(%struct.virtio_crypto* %57)
  %59 = load %struct.virtio_crypto_ablkcipher_ctx*, %struct.virtio_crypto_ablkcipher_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.virtio_crypto_ablkcipher_ctx, %struct.virtio_crypto_ablkcipher_ctx* %59, i32 0, i32 0
  store %struct.virtio_crypto* null, %struct.virtio_crypto** %60, align 8
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %54, %34, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.virtio_crypto_ablkcipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @virtio_crypto_alg_validate_key(i32, i32*) #1

declare dso_local i32 @virtio_crypto_get_current_node(...) #1

declare dso_local %struct.virtio_crypto* @virtcrypto_get_dev_node(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @virtio_crypto_alg_ablkcipher_close_session(%struct.virtio_crypto_ablkcipher_ctx*, i32) #1

declare dso_local i32 @virtio_crypto_alg_ablkcipher_init_sessions(%struct.virtio_crypto_ablkcipher_ctx*, i32*, i32) #1

declare dso_local i32 @virtcrypto_dev_put(%struct.virtio_crypto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
