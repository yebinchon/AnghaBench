; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_cq = type { i32, i32, i32, i32, i32 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@V2_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@V2_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@V2_CQ_DB_BYTE_4_TAG_M = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_TAG_S = common dso_local global i32 0, align 4
@V2_CQ_DB_BYTE_4_CMD_M = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_CMD_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQ_DB_NTR = common dso_local global i32 0, align 4
@V2_CQ_DB_PARAMETER_CONS_IDX_M = common dso_local global i32 0, align 4
@V2_CQ_DB_PARAMETER_CONS_IDX_S = common dso_local global i32 0, align 4
@V2_CQ_DB_PARAMETER_CMD_SN_M = common dso_local global i32 0, align 4
@V2_CQ_DB_PARAMETER_CMD_SN_S = common dso_local global i32 0, align 4
@V2_CQ_DB_PARAMETER_NOTIFY_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32)* @hns_roce_v2_req_notify_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i64], align 16
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %10 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hns_roce_dev* @to_hr_dev(i32 %11)
  store %struct.hns_roce_dev* %12, %struct.hns_roce_dev** %5, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %14 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %13)
  store %struct.hns_roce_cq* %14, %struct.hns_roce_cq** %6, align 8
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %15, align 16
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @V2_CQ_DB_REQ_NOT, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @V2_CQ_DB_REQ_NOT_SOL, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = load i32, i32* @V2_CQ_DB_BYTE_4_TAG_M, align 4
  %31 = load i32, i32* @V2_DB_BYTE_4_TAG_S, align 4
  %32 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %33 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @roce_set_field(i64 %29, i32 %30, i32 %31, i32 %34)
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = load i32, i32* @V2_CQ_DB_BYTE_4_CMD_M, align 4
  %39 = load i32, i32* @V2_DB_BYTE_4_CMD_S, align 4
  %40 = load i32, i32* @HNS_ROCE_V2_CQ_DB_NTR, align 4
  %41 = call i32 @roce_set_field(i64 %37, i32 %38, i32 %39, i32 %40)
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @V2_CQ_DB_PARAMETER_CONS_IDX_M, align 4
  %45 = load i32, i32* @V2_CQ_DB_PARAMETER_CONS_IDX_S, align 4
  %46 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %47 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %50 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %48, %53
  %55 = call i32 @roce_set_field(i64 %43, i32 %44, i32 %45, i32 %54)
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @V2_CQ_DB_PARAMETER_CMD_SN_M, align 4
  %59 = load i32, i32* @V2_CQ_DB_PARAMETER_CMD_SN_S, align 4
  %60 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %61 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 3
  %64 = call i32 @roce_set_field(i64 %57, i32 %58, i32 %59, i32 %63)
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @V2_CQ_DB_PARAMETER_NOTIFY_S, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @roce_set_bit(i64 %66, i32 %67, i32 %68)
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %72 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %73 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hns_roce_write64(%struct.hns_roce_dev* %70, i64* %71, i32 %74)
  ret i32 0
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local i32 @roce_set_field(i64, i32, i32, i32) #1

declare dso_local i32 @roce_set_bit(i64, i32, i32) #1

declare dso_local i32 @hns_roce_write64(%struct.hns_roce_dev*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
