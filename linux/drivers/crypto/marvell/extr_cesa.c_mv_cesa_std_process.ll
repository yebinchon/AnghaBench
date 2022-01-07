; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_std_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_std_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { %struct.crypto_async_request* }
%struct.crypto_async_request = type { i32 }
%struct.mv_cesa_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*)*, i32 (%struct.crypto_async_request*)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_cesa_engine*, i32)* @mv_cesa_std_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_std_process(%struct.mv_cesa_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_cesa_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.mv_cesa_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %9 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %8, i32 0, i32 0
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  store %struct.crypto_async_request* %10, %struct.crypto_async_request** %5, align 8
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32 %13)
  store %struct.mv_cesa_ctx* %14, %struct.mv_cesa_ctx** %6, align 8
  %15 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %18, align 8
  %20 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(%struct.crypto_async_request* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32 (%struct.crypto_async_request*)*, i32 (%struct.crypto_async_request*)** %29, align 8
  %31 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %32 = call i32 %30(%struct.crypto_async_request* %31)
  %33 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %34 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %35 = call i32 @mv_cesa_engine_enqueue_complete_request(%struct.mv_cesa_engine* %33, %struct.crypto_async_request* %34)
  br label %50

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.crypto_async_request*)*, i32 (%struct.crypto_async_request*)** %45, align 8
  %47 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %48 = call i32 %46(%struct.crypto_async_request* %47)
  br label %49

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @mv_cesa_engine_enqueue_complete_request(%struct.mv_cesa_engine*, %struct.crypto_async_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
