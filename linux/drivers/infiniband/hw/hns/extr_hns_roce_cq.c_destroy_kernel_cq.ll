; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_destroy_kernel_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_destroy_kernel_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_cq = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HNS_ROCE_CAP_FLAG_RECORD_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_cq*)* @destroy_kernel_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_kernel_cq(%struct.hns_roce_dev* %0, %struct.hns_roce_cq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_cq*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_cq* %1, %struct.hns_roce_cq** %4, align 8
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %7 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %5, i32* %8)
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %11, i32 0, i32 2
  %13 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hns_roce_ib_free_cq_buf(%struct.hns_roce_dev* %10, %struct.TYPE_6__* %12, i32 %16)
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %27 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %28 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %27, i32 0, i32 0
  %29 = call i32 @hns_roce_free_db(%struct.hns_roce_dev* %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @hns_roce_ib_free_cq_buf(%struct.hns_roce_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @hns_roce_free_db(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
