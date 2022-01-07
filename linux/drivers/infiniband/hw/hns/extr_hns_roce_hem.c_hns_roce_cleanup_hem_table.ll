; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_hem_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_cleanup_hem_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)* }
%struct.device = type { i32 }
%struct.hns_roce_hem_table = type { i64, i64, i64, i64*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Clear HEM base address failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cleanup_hem_table(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_hem_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %19 = call i32 @hns_roce_cleanup_mhop_hem_table(%struct.hns_roce_dev* %17, %struct.hns_roce_hem_table* %18)
  br label %75

20:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %27
  %36 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)*, i64 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64, i32)** %39, align 8
  %41 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %42 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  %48 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %49 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = udiv i64 %47, %50
  %52 = call i64 %40(%struct.hns_roce_dev* %41, %struct.hns_roce_hem_table* %42, i64 %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %35
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %59 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %60 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @hns_roce_free_hem(%struct.hns_roce_dev* %58, i64 %64)
  br label %66

66:                                               ; preds = %57, %27
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %21

70:                                               ; preds = %21
  %71 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %4, align 8
  %72 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @kfree(i64* %73)
  br label %75

75:                                               ; preds = %70, %16
  ret void
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_cleanup_mhop_hem_table(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_free_hem(%struct.hns_roce_dev*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
