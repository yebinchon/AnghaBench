; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_atomic_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_atomic_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_wqe_atomic_seg = type { i8*, i8* }
%struct.ib_atomic_wr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_wqe_atomic_seg*, %struct.ib_atomic_wr*)* @set_atomic_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_atomic_seg(%struct.hns_roce_wqe_atomic_seg* %0, %struct.ib_atomic_wr* %1) #0 {
  %3 = alloca %struct.hns_roce_wqe_atomic_seg*, align 8
  %4 = alloca %struct.ib_atomic_wr*, align 8
  store %struct.hns_roce_wqe_atomic_seg* %0, %struct.hns_roce_wqe_atomic_seg** %3, align 8
  store %struct.ib_atomic_wr* %1, %struct.ib_atomic_wr** %4, align 8
  %5 = load %struct.ib_atomic_wr*, %struct.ib_atomic_wr** %4, align 8
  %6 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ib_atomic_wr*, %struct.ib_atomic_wr** %4, align 8
  %13 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_le64(i32 %14)
  %16 = load %struct.hns_roce_wqe_atomic_seg*, %struct.hns_roce_wqe_atomic_seg** %3, align 8
  %17 = getelementptr inbounds %struct.hns_roce_wqe_atomic_seg, %struct.hns_roce_wqe_atomic_seg* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ib_atomic_wr*, %struct.ib_atomic_wr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @cpu_to_le64(i32 %20)
  %22 = load %struct.hns_roce_wqe_atomic_seg*, %struct.hns_roce_wqe_atomic_seg** %3, align 8
  %23 = getelementptr inbounds %struct.hns_roce_wqe_atomic_seg, %struct.hns_roce_wqe_atomic_seg* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.ib_atomic_wr*, %struct.ib_atomic_wr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.hns_roce_wqe_atomic_seg*, %struct.hns_roce_wqe_atomic_seg** %3, align 8
  %30 = getelementptr inbounds %struct.hns_roce_wqe_atomic_seg, %struct.hns_roce_wqe_atomic_seg* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.hns_roce_wqe_atomic_seg*, %struct.hns_roce_wqe_atomic_seg** %3, align 8
  %32 = getelementptr inbounds %struct.hns_roce_wqe_atomic_seg, %struct.hns_roce_wqe_atomic_seg* %31, i32 0, i32 0
  store i8* null, i8** %32, align 8
  br label %33

33:                                               ; preds = %24, %11
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
