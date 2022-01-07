; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_sdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_sdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PPC4XX_NUM_SD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPC4XX_SD_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_build_sdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_build_sdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %5 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %6 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %15 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8* @dma_alloc_coherent(i32 %9, i32 %13, i64* %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  %19 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %20 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %19, i32 0, i32 1
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %22 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %1
  %29 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %30 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %35 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %38 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i8* @dma_alloc_coherent(i32 %33, i32 %36, i64* %38, i32 %39)
  %41 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %42 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %44 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %28
  %48 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %49 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %58 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %61 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dma_free_coherent(i32 %52, i32 %56, %struct.TYPE_4__* %59, i64 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %91

66:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %73 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @PPC4XX_SD_BUFFER_SIZE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %81 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %79, i64* %86, align 8
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %67

90:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %47, %25
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
