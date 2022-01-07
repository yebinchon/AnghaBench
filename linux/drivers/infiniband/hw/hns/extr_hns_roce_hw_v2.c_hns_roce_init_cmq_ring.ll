; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_init_cmq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_init_cmq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring }
%struct.hns_roce_v2_cmq_ring = type { i32, i64, i64 }

@TYPE_CSQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32)* @hns_roce_init_cmq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_init_cmq_ring(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_v2_priv*, align 8
  %6 = alloca %struct.hns_roce_v2_cmq_ring*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %10, %struct.hns_roce_v2_priv** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TYPE_CSQ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %5, align 8
  %16 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %5, align 8
  %20 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi %struct.hns_roce_v2_cmq_ring* [ %17, %14 ], [ %21, %18 ]
  store %struct.hns_roce_v2_cmq_ring* %23, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %26 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %28 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %32 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %33 = call i32 @hns_roce_alloc_cmq_desc(%struct.hns_roce_dev* %31, %struct.hns_roce_v2_cmq_ring* %32)
  ret i32 %33
}

declare dso_local i32 @hns_roce_alloc_cmq_desc(%struct.hns_roce_dev*, %struct.hns_roce_v2_cmq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
