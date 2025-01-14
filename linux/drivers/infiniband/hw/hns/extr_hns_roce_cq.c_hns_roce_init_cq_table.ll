; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_init_cq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_init_cq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.hns_roce_cq_table }
%struct.TYPE_2__ = type { i32, i64 }
%struct.hns_roce_cq_table = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_init_cq_table(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_cq_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %4 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %4, i32 0, i32 1
  store %struct.hns_roce_cq_table* %5, %struct.hns_roce_cq_table** %3, align 8
  %6 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %6, i32 0, i32 1
  %8 = call i32 @xa_init(i32* %7)
  %9 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %9, i32 0, i32 0
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @hns_roce_bitmap_init(i32* %10, i64 %14, i64 %19, i32 %23, i32 0)
  ret i32 %24
}

declare dso_local i32 @xa_init(i32*) #1

declare dso_local i32 @hns_roce_bitmap_init(i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
