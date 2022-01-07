; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.hns_roce_cq = type { i32, i32, i32, i32 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32)* @hns_roce_v1_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %9 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %8)
  store %struct.hns_roce_cq* %9, %struct.hns_roce_cq** %5, align 8
  %10 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CQ_DB_REQ_NOT, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @CQ_DB_REQ_NOT_SOL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %5, align 8
  %23 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %5, align 8
  %26 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %24, %29
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_HW_SYNS_S, align 4
  %36 = call i32 @roce_set_bit(i32 %34, i32 %35, i32 1)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_M, align 4
  %40 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_S, align 4
  %41 = call i32 @roce_set_field(i32 %38, i32 %39, i32 %40, i32 3)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_M, align 4
  %45 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_CMD_MDF_S, align 4
  %46 = call i32 @roce_set_field(i32 %43, i32 %44, i32 %45, i32 1)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_M, align 4
  %50 = load i32, i32* @ROCEE_DB_OTHERS_H_ROCEE_DB_OTH_INP_H_S, align 4
  %51 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %5, align 8
  %52 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @roce_set_field(i32 %48, i32 %49, i32 %50, i32 %55)
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %5, align 8
  %59 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hns_roce_write64_k(i32* %57, i32 %60)
  ret i32 0
}

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_write64_k(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
