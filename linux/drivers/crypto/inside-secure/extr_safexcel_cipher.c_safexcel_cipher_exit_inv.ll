; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_exit_inv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_exit_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_async_request = type { %struct.crypto_tfm* }
%struct.safexcel_cipher_req = type { i32 }
%struct.safexcel_inv_result = type { i32, i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_4__, %struct.safexcel_crypto_priv* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"cipher: sync: invalidate: completion error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, %struct.crypto_async_request*, %struct.safexcel_cipher_req*, %struct.safexcel_inv_result*)* @safexcel_cipher_exit_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_cipher_exit_inv(%struct.crypto_tfm* %0, %struct.crypto_async_request* %1, %struct.safexcel_cipher_req* %2, %struct.safexcel_inv_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.safexcel_cipher_req*, align 8
  %9 = alloca %struct.safexcel_inv_result*, align 8
  %10 = alloca %struct.safexcel_cipher_ctx*, align 8
  %11 = alloca %struct.safexcel_crypto_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %7, align 8
  store %struct.safexcel_cipher_req* %2, %struct.safexcel_cipher_req** %8, align 8
  store %struct.safexcel_inv_result* %3, %struct.safexcel_inv_result** %9, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %14 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.safexcel_cipher_ctx* %14, %struct.safexcel_cipher_ctx** %10, align 8
  %15 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %16 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %15, i32 0, i32 1
  %17 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %16, align 8
  store %struct.safexcel_crypto_priv* %17, %struct.safexcel_crypto_priv** %11, align 8
  %18 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.safexcel_inv_result*, %struct.safexcel_inv_result** %9, align 8
  %23 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %22, i32 0, i32 1
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %26 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %25, i32 0, i32 0
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %26, align 8
  %28 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %27)
  store %struct.safexcel_cipher_ctx* %28, %struct.safexcel_cipher_ctx** %10, align 8
  %29 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %8, align 8
  %33 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %35 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %43 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %50 = call i32 @crypto_enqueue_request(i32* %48, %struct.crypto_async_request* %49)
  %51 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %52 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %60 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %68 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @queue_work(i32 %66, i32* %74)
  %76 = load %struct.safexcel_inv_result*, %struct.safexcel_inv_result** %9, align 8
  %77 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %76, i32 0, i32 1
  %78 = call i32 @wait_for_completion(i32* %77)
  %79 = load %struct.safexcel_inv_result*, %struct.safexcel_inv_result** %9, align 8
  %80 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %4
  %84 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %11, align 8
  %85 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.safexcel_inv_result*, %struct.safexcel_inv_result** %9, align 8
  %88 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load %struct.safexcel_inv_result*, %struct.safexcel_inv_result** %9, align 8
  %92 = getelementptr inbounds %struct.safexcel_inv_result, %struct.safexcel_inv_result* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
