; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_destroy_user_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_destroy_user_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_srq*)* @destroy_user_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_user_srq(%struct.hns_roce_dev* %0, %struct.hns_roce_srq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_srq*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_srq* %1, %struct.hns_roce_srq** %4, align 8
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %7 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %5, i32* %8)
  %10 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ib_umem_release(i32 %13)
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %16, i32 0, i32 1
  %18 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %15, i32* %17)
  %19 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ib_umem_release(i32 %21)
  ret void
}

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
