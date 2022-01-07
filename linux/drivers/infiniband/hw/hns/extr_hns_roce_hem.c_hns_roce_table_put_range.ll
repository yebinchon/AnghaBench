; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_put_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hns_roce_table_put_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_table = type { i64, i64, i32 }
%struct.hns_roce_hem_mhop = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_table_put_range(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_hem_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hns_roce_hem_mhop, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %13 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %16 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = udiv i64 %14, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %20 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %21 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %27 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %28 = call i64 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %26, %struct.hns_roce_hem_table* %27, i32* null, %struct.hns_roce_hem_mhop* %9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %53

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %35 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = udiv i64 %33, %36
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %31, %4
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %49, %38
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %46 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %45, %struct.hns_roce_hem_table* %46, i64 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %11, align 8
  br label %40

53:                                               ; preds = %30, %40
  ret void
}

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i64 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
