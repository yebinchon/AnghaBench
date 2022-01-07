; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_destroy_pdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_destroy_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i32, i64, %struct.TYPE_2__*, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*)* @crypto4xx_destroy_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_destroy_pdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_device*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %2, align 8
  %3 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %4 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %18 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %21 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32 %12, i32 %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %7, %1
  %25 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %26 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %31 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %43 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dma_free_coherent(i32 %34, i32 %38, i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %29, %24
  %47 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %48 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %53 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %62 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %65 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dma_free_coherent(i32 %56, i32 %60, i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %51, %46
  %69 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %2, align 8
  %70 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kfree(i32 %71)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
