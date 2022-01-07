; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_free_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_bitmap = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_bitmap_free_range(%struct.hns_roce_bitmap* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hns_roce_bitmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_bitmap* %0, %struct.hns_roce_bitmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %14 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %21, i32 0, i32 4
  %23 = call i32 @spin_lock(i32* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %37, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %34 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %45 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @min(i32 %46, i64 %47)
  %49 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %50 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %53 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %56 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %60 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %64 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %68 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %5, align 8
  %70 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %69, i32 0, i32 4
  %71 = call i32 @spin_unlock(i32* %70)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
