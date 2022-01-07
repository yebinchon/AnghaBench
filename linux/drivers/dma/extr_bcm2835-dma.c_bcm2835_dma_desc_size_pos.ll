; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_desc_size_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_desc_size_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_desc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bcm2835_dma_cb* }
%struct.bcm2835_dma_cb = type { i64, i64, i64 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bcm2835_desc*, i64)* @bcm2835_dma_desc_size_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcm2835_dma_desc_size_pos(%struct.bcm2835_desc* %0, i64 %1) #0 {
  %3 = alloca %struct.bcm2835_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcm2835_dma_cb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bcm2835_desc* %0, %struct.bcm2835_desc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %68, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %3, align 8
  %13 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %10
  %17 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %3, align 8
  %18 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.bcm2835_dma_cb*, %struct.bcm2835_dma_cb** %23, align 8
  store %struct.bcm2835_dma_cb* %24, %struct.bcm2835_dma_cb** %7, align 8
  %25 = load %struct.bcm2835_dma_cb*, %struct.bcm2835_dma_cb** %7, align 8
  %26 = getelementptr inbounds %struct.bcm2835_dma_cb, %struct.bcm2835_dma_cb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %3, align 8
  %29 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load %struct.bcm2835_dma_cb*, %struct.bcm2835_dma_cb** %7, align 8
  %35 = getelementptr inbounds %struct.bcm2835_dma_cb, %struct.bcm2835_dma_cb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  br label %41

37:                                               ; preds = %16
  %38 = load %struct.bcm2835_dma_cb*, %struct.bcm2835_dma_cb** %7, align 8
  %39 = getelementptr inbounds %struct.bcm2835_dma_cb, %struct.bcm2835_dma_cb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %67

48:                                               ; preds = %41
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %4, align 8
  %63 = sub i64 %61, %62
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %58, %52, %48
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %10

71:                                               ; preds = %10
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
