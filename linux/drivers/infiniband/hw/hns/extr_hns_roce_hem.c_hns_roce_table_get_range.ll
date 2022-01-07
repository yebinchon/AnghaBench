; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_table = type { i64, i64, i32 }
%struct.hns_roce_hem_mhop = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_table_get_range(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_hem_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hns_roce_hem_mhop, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %15 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %18 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = udiv i64 %16, %19
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %22 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %23 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %29 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %30 = call i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %28, %struct.hns_roce_hem_table* %29, i32* null, %struct.hns_roce_hem_mhop* %10)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %61

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %38 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = udiv i64 %36, %39
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %34, %4
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %56, %41
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %49 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %48, %struct.hns_roce_hem_table* %49, i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %61

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %12, align 8
  br label %43

60:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %76

61:                                               ; preds = %54, %33
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %12, align 8
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %71 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %70, %struct.hns_roce_hem_table* %71, i64 %72)
  br label %62

74:                                               ; preds = %62
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %60
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
