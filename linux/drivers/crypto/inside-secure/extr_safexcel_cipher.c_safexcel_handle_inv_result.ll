; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_handle_inv_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_handle_inv_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.safexcel_cipher_req = type { i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.safexcel_result_desc = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"cipher: invalidate: could not retrieve the result descriptor\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, %struct.safexcel_cipher_req*, i32*, i32*)* @safexcel_handle_inv_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, %struct.safexcel_cipher_req* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.safexcel_crypto_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_async_request*, align 8
  %11 = alloca %struct.safexcel_cipher_req*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.safexcel_cipher_ctx*, align 8
  %15 = alloca %struct.safexcel_result_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %10, align 8
  store %struct.safexcel_cipher_req* %3, %struct.safexcel_cipher_req** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %19 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32 %20)
  store %struct.safexcel_cipher_ctx* %21, %struct.safexcel_cipher_ctx** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %24 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %159

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %73, %32
  %34 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %11, align 8
  %35 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %33
  %40 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %41 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %42 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = call %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %40, i32* %47)
  store %struct.safexcel_result_desc* %48, %struct.safexcel_result_desc** %15, align 8
  %49 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %15, align 8
  %50 = call i64 @IS_ERR(%struct.safexcel_result_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %54 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %15, align 8
  %58 = call i32 @PTR_ERR(%struct.safexcel_result_desc* %57)
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %76

60:                                               ; preds = %39
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %70 = load %struct.safexcel_result_desc*, %struct.safexcel_result_desc** %15, align 8
  %71 = call i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv* %69, %struct.safexcel_result_desc* %70)
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %60
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %33

76:                                               ; preds = %52, %33
  %77 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @safexcel_complete(%struct.safexcel_crypto_priv* %77, i32 %78)
  %80 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %14, align 8
  %81 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %87 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %14, align 8
  %90 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %14, align 8
  %94 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dma_pool_free(i32 %88, i32 %92, i32 %96)
  %98 = load i32*, i32** %12, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %7, align 4
  br label %159

100:                                              ; preds = %76
  %101 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %102 = call i32 @safexcel_select_ring(%struct.safexcel_crypto_priv* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %14, align 8
  %105 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %108 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = call i32 @spin_lock_bh(i32* %113)
  %115 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %116 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %123 = call i32 @crypto_enqueue_request(i32* %121, %struct.crypto_async_request* %122)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %125 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @EINPROGRESS, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %100
  %137 = load i32, i32* %17, align 4
  %138 = load i32*, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %100
  %140 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %141 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %8, align 8
  %149 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = call i32 @queue_work(i32 %147, i32* %155)
  %157 = load i32*, i32** %12, align 8
  store i32 0, i32* %157, align 4
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %139, %85, %31
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.safexcel_result_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.safexcel_result_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @safexcel_rdesc_check_errors(%struct.safexcel_crypto_priv*, %struct.safexcel_result_desc*) #1

declare dso_local i32 @safexcel_complete(%struct.safexcel_crypto_priv*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @safexcel_select_ring(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
