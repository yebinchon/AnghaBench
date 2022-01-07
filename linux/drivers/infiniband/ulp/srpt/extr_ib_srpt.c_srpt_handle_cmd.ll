; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i32, i32 }
%struct.srpt_recv_ioctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.srp_cmd* }
%struct.srp_cmd = type { i32, i32, i32, i32 }
%struct.srpt_send_ioctx = type { i32*, %struct.se_cmd }
%struct.se_cmd = type { i32, i32 }
%struct.scatterlist = type { i32 }

@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@TCM_ORDERED_TAG = common dso_local global i32 0, align 4
@TCM_HEAD_TAG = common dso_local global i32 0, align 4
@TCM_ACA_TAG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"0x%llx: parsing SRP descriptor table failed.\0A\00", align 1
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"target_submit_cmd() returned %d for tag %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*)* @srpt_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_handle_cmd(%struct.srpt_rdma_ch* %0, %struct.srpt_recv_ioctx* %1, %struct.srpt_send_ioctx* %2) #0 {
  %4 = alloca %struct.srpt_rdma_ch*, align 8
  %5 = alloca %struct.srpt_recv_ioctx*, align 8
  %6 = alloca %struct.srpt_send_ioctx*, align 8
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %4, align 8
  store %struct.srpt_recv_ioctx* %1, %struct.srpt_recv_ioctx** %5, align 8
  store %struct.srpt_send_ioctx* %2, %struct.srpt_send_ioctx** %6, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %15 = icmp ne %struct.srpt_send_ioctx* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %5, align 8
  %20 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.srp_cmd*, %struct.srp_cmd** %21, align 8
  %23 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %5, align 8
  %24 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %22, i64 %27
  store %struct.srp_cmd* %28, %struct.srp_cmd** %8, align 8
  %29 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %30 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %29, i32 0, i32 1
  store %struct.se_cmd* %30, %struct.se_cmd** %7, align 8
  %31 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %44 [
    i32 128, label %39
    i32 129, label %43
    i32 130, label %48
    i32 131, label %52
  ]

39:                                               ; preds = %3
  %40 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %56

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %3, %43
  %45 = load i32, i32* @TCM_ORDERED_TAG, align 4
  %46 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %3
  %49 = load i32, i32* @TCM_HEAD_TAG, align 4
  %50 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %3
  %53 = load i32, i32* @TCM_ACA_TAG, align 4
  %54 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48, %44, %39
  %57 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %5, align 8
  %58 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %59 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %60 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %61 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @srpt_get_desc_tbl(%struct.srpt_recv_ioctx* %57, %struct.srpt_send_ioctx* %58, %struct.srp_cmd* %59, i32* %12, %struct.scatterlist** %9, i32* %10, i32* %11, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %108

77:                                               ; preds = %56
  %78 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %79 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %80 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %83 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %86 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %90 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %89, i32 0, i32 2
  %91 = call i32 @scsilun_to_int(i32* %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %96 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @target_submit_cmd_map_sgls(%struct.se_cmd* %78, i32 %81, i32 %84, i32* %88, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, %struct.scatterlist* %96, i32 %97, i32* null, i32 0, i32* null, i32 0)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %77
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %104 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  br label %108

107:                                              ; preds = %77
  br label %111

108:                                              ; preds = %101, %76
  %109 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %110 = call i32 @target_send_busy(%struct.se_cmd* %109)
  br label %111

111:                                              ; preds = %108, %107
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @srpt_get_desc_tbl(%struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*, %struct.srp_cmd*, i32*, %struct.scatterlist**, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @target_submit_cmd_map_sgls(%struct.se_cmd*, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.scatterlist*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @target_send_busy(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
