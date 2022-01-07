; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_qp_flow_control_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_qp_flow_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_qp = type { i32 }
%struct.hns_roce_sccc_clr_done = type { i64 }
%struct.hns_roce_sccc_clr = type { i32 }
%struct.hns_roce_cmq_desc = type { i64 }

@HNS_ROCE_OPC_RESET_SCCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Reset SCC ctx  failed(%d)\0A\00", align 1
@HNS_ROCE_OPC_CLR_SCCC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Clear SCC ctx failed(%d)\0A\00", align 1
@HNS_ROCE_CMQ_SCC_CLR_DONE_CNT = common dso_local global i32 0, align 4
@HNS_ROCE_OPC_QUERY_SCCC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Query clr cmq failed(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Query SCC clr done flag overtime.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_qp*)* @hns_roce_v2_qp_flow_control_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_qp_flow_control_init(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.hns_roce_sccc_clr_done*, align 8
  %6 = alloca %struct.hns_roce_sccc_clr*, align 8
  %7 = alloca %struct.hns_roce_cmq_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %4, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @HNS_ROCE_OPC_RESET_SCCC, align 4
  %15 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %7, i32 %14, i32 0)
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %17 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %16, %struct.hns_roce_cmq_desc* %7, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %87

26:                                               ; preds = %2
  %27 = load i32, i32* @HNS_ROCE_OPC_CLR_SCCC, align 4
  %28 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %7, i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.hns_roce_sccc_clr*
  store %struct.hns_roce_sccc_clr* %31, %struct.hns_roce_sccc_clr** %6, align 8
  %32 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %33 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.hns_roce_sccc_clr*, %struct.hns_roce_sccc_clr** %6, align 8
  %37 = getelementptr inbounds %struct.hns_roce_sccc_clr, %struct.hns_roce_sccc_clr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %39 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %38, %struct.hns_roce_cmq_desc* %7, i32 1)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %87

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.hns_roce_sccc_clr_done*
  store %struct.hns_roce_sccc_clr_done* %51, %struct.hns_roce_sccc_clr_done** %5, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %77, %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @HNS_ROCE_CMQ_SCC_CLR_DONE_CNT, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i32, i32* @HNS_ROCE_OPC_QUERY_SCCC, align 4
  %58 = call i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc* %7, i32 %57, i32 1)
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %60 = call i32 @hns_roce_cmq_send(%struct.hns_roce_dev* %59, %struct.hns_roce_cmq_desc* %7, i32 1)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %87

69:                                               ; preds = %56
  %70 = load %struct.hns_roce_sccc_clr_done*, %struct.hns_roce_sccc_clr_done** %5, align 8
  %71 = getelementptr inbounds %struct.hns_roce_sccc_clr_done, %struct.hns_roce_sccc_clr_done* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %87

75:                                               ; preds = %69
  %76 = call i32 @msleep(i32 20)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %80, %74, %63, %42, %20
  %88 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %89 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hns_roce_cmq_setup_basic_desc(%struct.hns_roce_cmq_desc*, i32, i32) #1

declare dso_local i32 @hns_roce_cmq_send(%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
