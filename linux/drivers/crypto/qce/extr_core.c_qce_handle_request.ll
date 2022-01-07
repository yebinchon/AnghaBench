; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_algo_ops = type { i64, i32 (%struct.crypto_async_request.0*)* }
%struct.crypto_async_request.0 = type opaque
%struct.crypto_async_request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@qce_ops = common dso_local global %struct.qce_algo_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*)* @qce_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_handle_request(%struct.crypto_async_request* %0) #0 {
  %2 = alloca %struct.crypto_async_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qce_algo_ops*, align 8
  %6 = alloca i64, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %2, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %10 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @crypto_tfm_alg_type(i32 %11)
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.qce_algo_ops** %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qce_algo_ops*, %struct.qce_algo_ops** %19, i64 %21
  %23 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %22, align 8
  store %struct.qce_algo_ops* %23, %struct.qce_algo_ops** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %5, align 8
  %26 = getelementptr inbounds %struct.qce_algo_ops, %struct.qce_algo_ops* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %37

30:                                               ; preds = %18
  %31 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %5, align 8
  %32 = getelementptr inbounds %struct.qce_algo_ops, %struct.qce_algo_ops* %31, i32 0, i32 1
  %33 = load i32 (%struct.crypto_async_request.0*)*, i32 (%struct.crypto_async_request.0*)** %32, align 8
  %34 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %35 = bitcast %struct.crypto_async_request* %34 to %struct.crypto_async_request.0*
  %36 = call i32 %33(%struct.crypto_async_request.0* %35)
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %30, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @crypto_tfm_alg_type(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.qce_algo_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
