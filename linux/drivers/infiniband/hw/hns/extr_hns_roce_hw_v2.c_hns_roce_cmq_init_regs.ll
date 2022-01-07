; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_cmq_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring }
%struct.hns_roce_v2_cmq_ring = type { i32, i64 }

@TYPE_CSQ = common dso_local global i32 0, align 4
@ROCEE_TX_CMQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@ROCEE_TX_CMQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@ROCEE_TX_CMQ_DEPTH_REG = common dso_local global i32 0, align 4
@HNS_ROCE_CMQ_DESC_NUM_S = common dso_local global i32 0, align 4
@ROCEE_TX_CMQ_HEAD_REG = common dso_local global i32 0, align 4
@ROCEE_TX_CMQ_TAIL_REG = common dso_local global i32 0, align 4
@ROCEE_RX_CMQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@ROCEE_RX_CMQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@ROCEE_RX_CMQ_DEPTH_REG = common dso_local global i32 0, align 4
@ROCEE_RX_CMQ_HEAD_REG = common dso_local global i32 0, align 4
@ROCEE_RX_CMQ_TAIL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32)* @hns_roce_cmq_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_cmq_init_regs(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_v2_priv*, align 8
  %6 = alloca %struct.hns_roce_v2_cmq_ring*, align 8
  %7 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %11, %struct.hns_roce_v2_priv** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TYPE_CSQ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi %struct.hns_roce_v2_cmq_ring* [ %18, %15 ], [ %22, %19 ]
  store %struct.hns_roce_v2_cmq_ring* %24, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %25 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %26 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TYPE_CSQ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %33 = load i32, i32* @ROCEE_TX_CMQ_BASEADDR_L_REG, align 4
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @roce_write(%struct.hns_roce_dev* %32, i32 %33, i32 %35)
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %38 = load i32, i32* @ROCEE_TX_CMQ_BASEADDR_H_REG, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @upper_32_bits(i64 %39)
  %41 = call i32 @roce_write(%struct.hns_roce_dev* %37, i32 %38, i32 %40)
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %43 = load i32, i32* @ROCEE_TX_CMQ_DEPTH_REG, align 4
  %44 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %45 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HNS_ROCE_CMQ_DESC_NUM_S, align 4
  %48 = ashr i32 %46, %47
  %49 = call i32 @roce_write(%struct.hns_roce_dev* %42, i32 %43, i32 %48)
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %51 = load i32, i32* @ROCEE_TX_CMQ_HEAD_REG, align 4
  %52 = call i32 @roce_write(%struct.hns_roce_dev* %50, i32 %51, i32 0)
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %54 = load i32, i32* @ROCEE_TX_CMQ_TAIL_REG, align 4
  %55 = call i32 @roce_write(%struct.hns_roce_dev* %53, i32 %54, i32 0)
  br label %81

56:                                               ; preds = %23
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %58 = load i32, i32* @ROCEE_RX_CMQ_BASEADDR_L_REG, align 4
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @roce_write(%struct.hns_roce_dev* %57, i32 %58, i32 %60)
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %63 = load i32, i32* @ROCEE_RX_CMQ_BASEADDR_H_REG, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @upper_32_bits(i64 %64)
  %66 = call i32 @roce_write(%struct.hns_roce_dev* %62, i32 %63, i32 %65)
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %68 = load i32, i32* @ROCEE_RX_CMQ_DEPTH_REG, align 4
  %69 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %6, align 8
  %70 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HNS_ROCE_CMQ_DESC_NUM_S, align 4
  %73 = ashr i32 %71, %72
  %74 = call i32 @roce_write(%struct.hns_roce_dev* %67, i32 %68, i32 %73)
  %75 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %76 = load i32, i32* @ROCEE_RX_CMQ_HEAD_REG, align 4
  %77 = call i32 @roce_write(%struct.hns_roce_dev* %75, i32 %76, i32 0)
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %79 = load i32, i32* @ROCEE_RX_CMQ_TAIL_REG, align 4
  %80 = call i32 @roce_write(%struct.hns_roce_dev* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %56, %31
  ret void
}

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
