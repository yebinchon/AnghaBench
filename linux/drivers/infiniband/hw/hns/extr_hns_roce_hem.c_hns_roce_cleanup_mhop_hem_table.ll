; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_mhop_hem_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_mhop_hem_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_table = type { i64, i32, i32, i64*, i64*, i64*, i64*, i64* }
%struct.hns_roce_hem_mhop = type { i32, i32 }

@HEM_TYPE_MTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*)* @hns_roce_cleanup_mhop_hem_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_cleanup_mhop_hem_table(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_hem_table*, align 8
  %5 = alloca %struct.hns_roce_hem_mhop, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %4, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %11 = call i64 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %9, %struct.hns_roce_hem_table* %10, i32* null, %struct.hns_roce_hem_mhop* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %90

14:                                               ; preds = %2
  %15 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HEM_TYPE_MTT, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %26

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %56, %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %31 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %43 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %42, i32 0, i32 7
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %52 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @hns_roce_table_mhop_put(%struct.hns_roce_dev* %51, %struct.hns_roce_hem_table* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %60, i32 0, i32 7
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @kfree(i64* %62)
  %64 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %65 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %64, i32 0, i32 7
  store i64* null, i64** %65, align 8
  %66 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %67 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %66, i32 0, i32 6
  %68 = load i64*, i64** %67, align 8
  %69 = call i32 @kfree(i64* %68)
  %70 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %71 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %70, i32 0, i32 6
  store i64* null, i64** %71, align 8
  %72 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %73 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %72, i32 0, i32 5
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @kfree(i64* %74)
  %76 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %77 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %76, i32 0, i32 5
  store i64* null, i64** %77, align 8
  %78 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %79 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @kfree(i64* %80)
  %82 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %83 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %82, i32 0, i32 4
  store i64* null, i64** %83, align 8
  %84 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = call i32 @kfree(i64* %86)
  %88 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %89 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %88, i32 0, i32 3
  store i64* null, i64** %89, align 8
  br label %90

90:                                               ; preds = %59, %13
  ret void
}

declare dso_local i64 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @hns_roce_table_mhop_put(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
