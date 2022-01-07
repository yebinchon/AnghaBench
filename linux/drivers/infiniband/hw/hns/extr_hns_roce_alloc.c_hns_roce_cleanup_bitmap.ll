; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_cleanup_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_cleanup_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HNS_ROCE_CAP_FLAG_SRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cleanup_bitmap(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %3 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %12 = call i32 @hns_roce_cleanup_srq_table(%struct.hns_roce_dev* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %15 = call i32 @hns_roce_cleanup_qp_table(%struct.hns_roce_dev* %14)
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %17 = call i32 @hns_roce_cleanup_cq_table(%struct.hns_roce_dev* %16)
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %19 = call i32 @hns_roce_cleanup_mr_table(%struct.hns_roce_dev* %18)
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %21 = call i32 @hns_roce_cleanup_pd_table(%struct.hns_roce_dev* %20)
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %23 = call i32 @hns_roce_cleanup_uar_table(%struct.hns_roce_dev* %22)
  ret void
}

declare dso_local i32 @hns_roce_cleanup_srq_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_qp_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_cq_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_mr_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_pd_table(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_uar_table(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
