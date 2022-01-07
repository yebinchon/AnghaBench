; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_pd_mgr_get_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_pd_mgr_get_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64, i64, i64*, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, i32)* @_ocrdma_pd_mgr_get_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocrdma_pd_mgr_get_bitmap(%struct.ocrdma_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %2
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @find_first_zero_bit(i64* %15, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @__set_bit(i32 %22, i64* %27)
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %36 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %41 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %9
  %47 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %48 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %53 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 %51, i64* %55, align 8
  br label %56

56:                                               ; preds = %46, %9
  br label %105

57:                                               ; preds = %2
  %58 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %59 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  store i64* %62, i64** %6, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %65 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @find_first_zero_bit(i64* %63, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %72 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @__set_bit(i32 %70, i64* %75)
  %77 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %78 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %84 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %89 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %87, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %57
  %95 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %96 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %101 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 5
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %94, %57
  br label %105

105:                                              ; preds = %104, %56
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @find_first_zero_bit(i64*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
