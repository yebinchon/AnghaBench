; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { i32, %struct.crypto_async_request*, i64 }
%struct.crypto_async_request = type { i32 }
%struct.mv_cesa_ctx = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CESA_SA_INT_STATUS = common dso_local global i64 0, align 8
@CESA_SA_FPGA_INT_STATUS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv_cesa_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mv_cesa_engine*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.mv_cesa_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mv_cesa_engine*
  store %struct.mv_cesa_engine* %13, %struct.mv_cesa_engine** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %2, %102
  %16 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %17 = call i32 @mv_cesa_get_int_mask(%struct.mv_cesa_engine* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CESA_SA_INT_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %103

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CESA_SA_FPGA_INT_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %41 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CESA_SA_INT_STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @mv_cesa_int_process(%struct.mv_cesa_engine* %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %53 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %56 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %55, i32 0, i32 1
  %57 = load %struct.crypto_async_request*, %struct.crypto_async_request** %56, align 8
  store %struct.crypto_async_request* %57, %struct.crypto_async_request** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @EINPROGRESS, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %29
  %63 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %64 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %63, i32 0, i32 1
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %64, align 8
  br label %65

65:                                               ; preds = %62, %29
  %66 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %67 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %70 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32 %71)
  store %struct.mv_cesa_ctx* %72, %struct.mv_cesa_ctx** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @EINPROGRESS, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %7, align 8
  %82 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @mv_cesa_complete_req(%struct.mv_cesa_ctx* %81, %struct.crypto_async_request* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75, %65
  %86 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %87 = call i32 @mv_cesa_rearm_engine(%struct.mv_cesa_engine* %86)
  br label %88

88:                                               ; preds = %85, %94
  %89 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %90 = call %struct.crypto_async_request* @mv_cesa_engine_dequeue_complete_request(%struct.mv_cesa_engine* %89)
  store %struct.crypto_async_request* %90, %struct.crypto_async_request** %6, align 8
  %91 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %92 = icmp ne %struct.crypto_async_request* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %102

94:                                               ; preds = %88
  %95 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %96 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32 %97)
  store %struct.mv_cesa_ctx* %98, %struct.mv_cesa_ctx** %7, align 8
  %99 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %7, align 8
  %100 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %101 = call i32 @mv_cesa_complete_req(%struct.mv_cesa_ctx* %99, %struct.crypto_async_request* %100, i32 0)
  br label %88

102:                                              ; preds = %93
  br label %15

103:                                              ; preds = %28
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @mv_cesa_get_int_mask(%struct.mv_cesa_engine*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mv_cesa_int_process(%struct.mv_cesa_engine*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @mv_cesa_complete_req(%struct.mv_cesa_ctx*, %struct.crypto_async_request*, i32) #1

declare dso_local i32 @mv_cesa_rearm_engine(%struct.mv_cesa_engine*) #1

declare dso_local %struct.crypto_async_request* @mv_cesa_engine_dequeue_complete_request(%struct.mv_cesa_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
