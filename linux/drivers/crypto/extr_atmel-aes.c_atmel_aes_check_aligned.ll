; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_check_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_check_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i64, i64 }
%struct.atmel_aes_dma = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.scatterlist*, i64, %struct.atmel_aes_dma*)* @atmel_aes_check_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_check_aligned(%struct.atmel_aes_dev* %0, %struct.scatterlist* %1, i64 %2, %struct.atmel_aes_dma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_aes_dev*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atmel_aes_dma*, align 8
  %10 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.atmel_aes_dma* %3, %struct.atmel_aes_dma** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %13 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ALIGNED(i64 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %80, %20
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %21
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @IS_ALIGNED(i64 %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ule i64 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %40 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IS_ALIGNED(i64 %38, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %86

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %9, align 8
  %51 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.atmel_aes_dma*, %struct.atmel_aes_dma** %9, align 8
  %58 = getelementptr inbounds %struct.atmel_aes_dma, %struct.atmel_aes_dma* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i32 1, i32* %5, align 4
  br label %86

62:                                               ; preds = %31
  %63 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %6, align 8
  %67 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IS_ALIGNED(i64 %65, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %86

74:                                               ; preds = %62
  %75 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %76 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %74
  %81 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %82 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %81)
  store %struct.scatterlist* %82, %struct.scatterlist** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %73, %47, %46, %30, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
