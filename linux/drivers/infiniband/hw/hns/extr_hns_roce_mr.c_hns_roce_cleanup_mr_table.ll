; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_cleanup_mr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_cleanup_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.hns_roce_mr_table }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hns_roce_mr_table = type { i32, i32, i32, i32, i32 }

@HEM_TYPE_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cleanup_mr_table(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_mr_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %4 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %4, i32 0, i32 1
  store %struct.hns_roce_mr_table* %5, %struct.hns_roce_mr_table** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %12, i32 0, i32 4
  %14 = call i32 @hns_roce_buddy_cleanup(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %3, align 8
  %23 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %22, i32 0, i32 3
  %24 = call i32 @hns_roce_buddy_cleanup(i32* %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %3, align 8
  %27 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %26, i32 0, i32 2
  %28 = call i32 @hns_roce_buddy_cleanup(i32* %27)
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %30 = load i32, i32* @HEM_TYPE_CQE, align 4
  %31 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %3, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %34, i32 0, i32 1
  %36 = call i32 @hns_roce_buddy_cleanup(i32* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %3, align 8
  %39 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %38, i32 0, i32 0
  %40 = call i32 @hns_roce_bitmap_cleanup(i32* %39)
  ret void
}

declare dso_local i32 @hns_roce_buddy_cleanup(i32*) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_bitmap_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
