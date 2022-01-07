; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_add_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem.c_ib_umem_add_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.scatterlist*, %struct.page**, i64, i32, i32*)* @ib_umem_add_sg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @ib_umem_add_sg_table(%struct.scatterlist* %0, %struct.page** %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store %struct.page** %1, %struct.page*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = call %struct.page* @sg_page(%struct.scatterlist* %17)
  %19 = icmp ne %struct.page* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %5
  %25 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %26 = call %struct.page* @sg_page(%struct.scatterlist* %25)
  %27 = call i64 @page_to_pfn(%struct.page* %26)
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = lshr i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = add i64 %27, %33
  %35 = load %struct.page**, %struct.page*** %7, align 8
  %36 = getelementptr inbounds %struct.page*, %struct.page** %35, i64 0
  %37 = load %struct.page*, %struct.page** %36, align 8
  %38 = call i64 @page_to_pfn(%struct.page* %37)
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %24, %5
  br label %42

42:                                               ; preds = %118, %97, %41
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %129

46:                                               ; preds = %42
  %47 = load %struct.page**, %struct.page*** %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %16, align 8
  %51 = load %struct.page*, %struct.page** %16, align 8
  %52 = call i64 @page_to_pfn(%struct.page* %51)
  store i64 %52, i64* %11, align 8
  store i64 0, i64* %15, align 8
  br label %53

53:                                               ; preds = %79, %46
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.page**, %struct.page*** %7, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %62
  %64 = load %struct.page*, %struct.page** %63, align 8
  %65 = call i64 @page_to_pfn(%struct.page* %64)
  %66 = icmp eq i64 %60, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = lshr i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br label %74

74:                                               ; preds = %67, %57, %53
  %75 = phi i1 [ false, %57 ], [ false, %53 ], [ %73, %67 ]
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %53

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %15, align 8
  %93 = load i32, i32* @PAGE_SHIFT, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 %92, %94
  %96 = icmp uge i64 %91, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %85
  %98 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %100 = call %struct.page* @sg_page(%struct.scatterlist* %99)
  %101 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %102 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %15, align 8
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 %105, %107
  %109 = add i64 %104, %108
  %110 = call i32 @sg_set_page(%struct.scatterlist* %98, %struct.page* %100, i64 %109, i32 0)
  store i32 0, i32* %13, align 4
  br label %42

111:                                              ; preds = %85
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %117 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %116)
  store %struct.scatterlist* %117, %struct.scatterlist** %6, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %123 = load %struct.page*, %struct.page** %16, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i32, i32* @PAGE_SHIFT, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 %124, %126
  %128 = call i32 @sg_set_page(%struct.scatterlist* %122, %struct.page* %123, i64 %127, i32 0)
  store i32 0, i32* %14, align 4
  br label %42

129:                                              ; preds = %42
  %130 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  ret %struct.scatterlist* %130
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
