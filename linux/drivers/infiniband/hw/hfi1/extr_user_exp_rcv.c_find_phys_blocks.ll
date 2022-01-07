; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_find_phys_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_find_phys_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_user_buf = type { %struct.tid_pageset*, %struct.page** }
%struct.tid_pageset = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_EXPECTED_BUFFER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_user_buf*, i32)* @find_phys_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_phys_blocks(%struct.tid_user_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tid_user_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca %struct.tid_pageset*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tid_user_buf* %0, %struct.tid_user_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.tid_user_buf*, %struct.tid_user_buf** %4, align 8
  %17 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %16, i32 0, i32 1
  %18 = load %struct.page**, %struct.page*** %17, align 8
  store %struct.page** %18, %struct.page*** %12, align 8
  %19 = load %struct.tid_user_buf*, %struct.tid_user_buf** %4, align 8
  %20 = getelementptr inbounds %struct.tid_user_buf, %struct.tid_user_buf* %19, i32 0, i32 0
  %21 = load %struct.tid_pageset*, %struct.tid_pageset** %20, align 8
  store %struct.tid_pageset* %21, %struct.tid_pageset** %13, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

25:                                               ; preds = %2
  %26 = load %struct.page**, %struct.page*** %12, align 8
  %27 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 0
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = call i64 @page_to_pfn(%struct.page* %28)
  store i64 %29, i64* %10, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %106, %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.page**, %struct.page*** %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.page*, %struct.page** %39, i64 %41
  %43 = load %struct.page*, %struct.page** %42, align 8
  %44 = call i64 @page_to_pfn(%struct.page* %43)
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i64 [ %44, %38 ], [ 0, %45 ]
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %99

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = mul i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MAX_EXPECTED_BUFFER, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @MAX_EXPECTED_BUFFER, align 4
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = lshr i32 %65, %66
  store i32 %67, i32* %14, align 4
  br label %78

68:                                               ; preds = %56
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @is_power_of_2(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @rounddown_pow_of_two(i32 %73)
  %75 = load i32, i32* @PAGE_SHIFT, align 4
  %76 = lshr i32 %74, %75
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %72, %68
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.tid_pageset*, %struct.tid_pageset** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tid_pageset, %struct.tid_pageset* %80, i64 %82
  %84 = getelementptr inbounds %struct.tid_pageset, %struct.tid_pageset* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.tid_pageset*, %struct.tid_pageset** %13, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.tid_pageset, %struct.tid_pageset* %86, i64 %88
  %90 = getelementptr inbounds %struct.tid_pageset, %struct.tid_pageset* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %53

99:                                               ; preds = %53
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %7, align 4
  store i32 1, i32* %6, align 4
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %10, align 8
  br label %105

102:                                              ; preds = %46
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %30

109:                                              ; preds = %30
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
