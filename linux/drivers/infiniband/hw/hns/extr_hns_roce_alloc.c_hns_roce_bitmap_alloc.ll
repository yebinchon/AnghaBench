; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_bitmap = type { i64, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_bitmap_alloc(%struct.hns_roce_bitmap* %0, i64* %1) #0 {
  %3 = alloca %struct.hns_roce_bitmap*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_roce_bitmap* %0, %struct.hns_roce_bitmap** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %6, i32 0, i32 5
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @find_next_zero_bit(i32 %11, i64 %14, i64 %17)
  %19 = load i64*, i64** %4, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %23 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %2
  %27 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %32 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %36 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %34, %38
  %40 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = and i64 %39, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %47 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %49 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %52 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @find_first_zero_bit(i32 %50, i32 %54)
  %56 = load i64*, i64** %4, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %26, %2
  %58 = load i64*, i64** %4, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %61 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %57
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %68 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @set_bit(i64 %66, i32 %69)
  %71 = load i64*, i64** %4, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  %74 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %75 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %77 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %80 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %64
  %84 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %85 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %64
  %87 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %88 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %4, align 8
  %92 = load i64, i64* %91, align 8
  %93 = or i64 %92, %90
  store i64 %93, i64* %91, align 8
  br label %95

94:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %86
  %96 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %3, align 8
  %97 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %96, i32 0, i32 5
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
