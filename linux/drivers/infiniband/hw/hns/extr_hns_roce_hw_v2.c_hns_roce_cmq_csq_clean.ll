; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_csq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_csq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hns_roce_v2_cmq_ring }
%struct.hns_roce_v2_cmq_ring = type { i64, i64, %struct.hns_roce_cmq_desc* }
%struct.hns_roce_cmq_desc = type { i32 }

@ROCEE_TX_CMQ_HEAD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_cmq_csq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_cmq_csq_clean(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_v2_priv*, align 8
  %4 = alloca %struct.hns_roce_v2_cmq_ring*, align 8
  %5 = alloca %struct.hns_roce_cmq_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %12, %struct.hns_roce_v2_priv** %3, align 8
  %13 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.hns_roce_v2_cmq_ring* %15, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %16 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %19, i32 0, i32 2
  %21 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %21, i64 %22
  store %struct.hns_roce_cmq_desc* %23, %struct.hns_roce_cmq_desc** %5, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %25 = load i32, i32* @ROCEE_TX_CMQ_HEAD_REG, align 4
  %26 = call i64 @roce_read(%struct.hns_roce_dev* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %42, %1
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %5, align 8
  %33 = call i32 @memset(%struct.hns_roce_cmq_desc* %32, i32 0, i32 4)
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %44 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %43, i32 0, i32 2
  %45 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %45, i64 %46
  store %struct.hns_roce_cmq_desc* %47, %struct.hns_roce_cmq_desc** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %4, align 8
  %53 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i64 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @memset(%struct.hns_roce_cmq_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
