; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_desc_size_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_desc_size_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_desc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@es_bytes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_desc*, i64)* @omap_dma_desc_size_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap_dma_desc_size_pos(%struct.omap_desc* %0, i64 %1) #0 {
  %3 = alloca %struct.omap_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.omap_desc* %0, %struct.omap_desc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64*, i64** @es_bytes, align 8
  %10 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %11 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %78, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %18 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %15
  %22 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %23 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = call i64 @omap_dma_sg_size(%struct.TYPE_2__* %27)
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %77

37:                                               ; preds = %21
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %40 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %38, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %37
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %51 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %57, %58
  %60 = icmp ult i64 %49, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %48
  %62 = load %struct.omap_desc*, %struct.omap_desc** %3, align 8
  %63 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %69, %70
  %72 = load i64, i64* %4, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %61, %48, %37
  br label %77

77:                                               ; preds = %76, %33
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %15

81:                                               ; preds = %15
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i64 @omap_dma_sg_size(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
