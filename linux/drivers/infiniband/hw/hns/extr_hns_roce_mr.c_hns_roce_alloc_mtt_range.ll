; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mtt_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_alloc_mtt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.hns_roce_mr_table }
%struct.hns_roce_mr_table = type { %struct.hns_roce_hem_table, %struct.hns_roce_buddy, %struct.hns_roce_hem_table, %struct.hns_roce_buddy, %struct.hns_roce_hem_table, %struct.hns_roce_buddy, %struct.hns_roce_hem_table, %struct.hns_roce_buddy }
%struct.hns_roce_hem_table = type { i32 }
%struct.hns_roce_buddy = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unsupport MTT table type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i64*, i32)* @hns_roce_alloc_mtt_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_alloc_mtt_range(%struct.hns_roce_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_mr_table*, align 8
  %11 = alloca %struct.hns_roce_hem_table*, align 8
  %12 = alloca %struct.hns_roce_buddy*, align 8
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 1
  store %struct.hns_roce_mr_table* %15, %struct.hns_roce_mr_table** %10, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %37 [
    i32 128, label %17
    i32 131, label %22
    i32 129, label %27
    i32 130, label %32
  ]

17:                                               ; preds = %4
  %18 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %19 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %18, i32 0, i32 7
  store %struct.hns_roce_buddy* %19, %struct.hns_roce_buddy** %12, align 8
  %20 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %21 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %20, i32 0, i32 6
  store %struct.hns_roce_hem_table* %21, %struct.hns_roce_hem_table** %11, align 8
  br label %45

22:                                               ; preds = %4
  %23 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %24 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %23, i32 0, i32 5
  store %struct.hns_roce_buddy* %24, %struct.hns_roce_buddy** %12, align 8
  %25 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %26 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %25, i32 0, i32 4
  store %struct.hns_roce_hem_table* %26, %struct.hns_roce_hem_table** %11, align 8
  br label %45

27:                                               ; preds = %4
  %28 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %29 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %28, i32 0, i32 3
  store %struct.hns_roce_buddy* %29, %struct.hns_roce_buddy** %12, align 8
  %30 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %31 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %30, i32 0, i32 2
  store %struct.hns_roce_hem_table* %31, %struct.hns_roce_hem_table** %11, align 8
  br label %45

32:                                               ; preds = %4
  %33 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %34 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %33, i32 0, i32 1
  store %struct.hns_roce_buddy* %34, %struct.hns_roce_buddy** %12, align 8
  %35 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %10, align 8
  %36 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %35, i32 0, i32 0
  store %struct.hns_roce_hem_table* %36, %struct.hns_roce_hem_table** %11, align 8
  br label %45

37:                                               ; preds = %4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %74

45:                                               ; preds = %32, %27, %22, %17
  %46 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = call i32 @hns_roce_buddy_alloc(%struct.hns_roce_buddy* %46, i32 %47, i64* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %74

53:                                               ; preds = %45
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %55 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %11, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = add i64 %59, %62
  %64 = sub i64 %63, 1
  %65 = call i64 @hns_roce_table_get_range(%struct.hns_roce_dev* %54, %struct.hns_roce_hem_table* %55, i64 %57, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %12, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @hns_roce_buddy_free(%struct.hns_roce_buddy* %68, i64 %70, i32 %71)
  store i32 -1, i32* %5, align 4
  br label %74

73:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %67, %52, %37
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hns_roce_buddy_alloc(%struct.hns_roce_buddy*, i32, i64*) #1

declare dso_local i64 @hns_roce_table_get_range(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i64) #1

declare dso_local i32 @hns_roce_buddy_free(%struct.hns_roce_buddy*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
