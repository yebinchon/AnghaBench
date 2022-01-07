; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_alloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_bitmap = type { i64, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_bitmap_alloc_range(%struct.hns_roce_bitmap* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_bitmap* %0, %struct.hns_roce_bitmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @hns_roce_bitmap_alloc(%struct.hns_roce_bitmap* %23, i64* %24)
  store i32 %25, i32* %5, align 4
  br label %148

26:                                               ; preds = %17
  %27 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %27, i32 0, i32 5
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %31 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %34 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %37 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i64 @bitmap_find_next_zero_area(i32 %32, i64 %35, i64 %38, i32 %39, i32 %41)
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %47 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %26
  %51 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %52 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %56 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %60 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %58, %62
  %64 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %65 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = and i64 %63, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %71 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %73 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %76 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i64 @bitmap_find_next_zero_area(i32 %74, i64 %77, i64 0, i32 %78, i32 %80)
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %50, %26
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %87 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %97, %99
  %101 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %102 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @set_bit(i64 %100, i32 %103)
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %91

108:                                              ; preds = %91
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %112 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %108
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %117, %119
  %121 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %122 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %124 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %127 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp uge i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %132 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %115
  br label %134

134:                                              ; preds = %133, %108
  %135 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %136 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %9, align 8
  %140 = load i64, i64* %139, align 8
  %141 = or i64 %140, %138
  store i64 %141, i64* %139, align 8
  br label %143

142:                                              ; preds = %83
  store i32 -1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %134
  %144 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %6, align 8
  %145 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %144, i32 0, i32 5
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %143, %22
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hns_roce_bitmap_alloc(%struct.hns_roce_bitmap*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bitmap_find_next_zero_area(i32, i64, i64, i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
