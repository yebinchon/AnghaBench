; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cq_set_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cq_set_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cq = type { i32, i32, i32 }

@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_cq*, i32)* @hns_roce_v1_cq_set_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_cq_set_ci(%struct.hns_roce_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  store %struct.hns_roce_cq* %0, %struct.hns_roce_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 1
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %6, %11
  %13 = call i64 @cpu_to_le32(i32 %12)
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S, align 4
  %19 = call i32 @roce_set_bit(i64 %17, i32 %18, i32 1)
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M, align 4
  %23 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S, align 4
  %24 = call i32 @roce_set_field(i64 %21, i32 %22, i32 %23, i32 3)
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M, align 4
  %28 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S, align 4
  %29 = call i32 @roce_set_field(i64 %26, i32 %27, i32 %28, i32 0)
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M, align 4
  %33 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S, align 4
  %34 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %3, align 8
  %35 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @roce_set_field(i64 %31, i32 %32, i32 %33, i32 %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %39 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %3, align 8
  %40 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hns_roce_write64_k(i64* %38, i32 %41)
  ret void
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_bit(i64, i32, i32) #1

declare dso_local i32 @roce_set_field(i64, i32, i32, i32) #1

declare dso_local i32 @hns_roce_write64_k(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
