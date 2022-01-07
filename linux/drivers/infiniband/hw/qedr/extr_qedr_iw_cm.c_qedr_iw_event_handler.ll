; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { i32, i32 }
%struct.qedr_iw_ep = type { i32, %struct.TYPE_2__*, %struct.qedr_dev* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.qedr_dev = type { i32 }

@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"QED_IWARP_EVENT_RQ_EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"QED_IWARP_EVENT_IRQ_FULL\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"QED_IWARP_EVENT_LLP_TIMEOUT\00", align 1
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"QED_IWARP_EVENT_CQ_OVERFLOW\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"QED_IWARP_EVENT_QP_CATASTROPHIC\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"QED_IWARP_EVENT_LOCAL_ACCESS_ERROR\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"QED_IWARP_EVENT_REMOTE_OPERATION_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Got terminate message\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Unknown event received %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_iwarp_cm_event_params*)* @qedr_iw_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_iw_event_handler(i8* %0, %struct.qed_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qedr_iw_ep*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_iw_ep*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %9, %struct.qedr_iw_ep** %5, align 8
  %10 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %11 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %10, i32 0, i32 2
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  store %struct.qedr_dev* %12, %struct.qedr_dev** %6, align 8
  %13 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %14 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %109 [
    i32 134, label %16
    i32 141, label %20
    i32 133, label %24
    i32 142, label %30
    i32 138, label %56
    i32 140, label %60
    i32 129, label %66
    i32 137, label %71
    i32 136, label %76
    i32 130, label %81
    i32 139, label %86
    i32 132, label %91
    i32 135, label %96
    i32 131, label %101
    i32 128, label %106
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %19 = call i32 @qedr_iw_mpa_request(i8* %17, %struct.qed_iwarp_cm_event_params* %18)
  br label %115

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %23 = call i32 @qedr_iw_mpa_reply(i8* %21, %struct.qed_iwarp_cm_event_params* %22)
  br label %115

24:                                               ; preds = %2
  %25 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %26 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %29 = call i32 @qedr_iw_passive_complete(i8* %27, %struct.qed_iwarp_cm_event_params* %28)
  br label %115

30:                                               ; preds = %2
  %31 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %32 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %35 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %36 = call i32 @qedr_iw_issue_event(i8* %33, %struct.qed_iwarp_cm_event_params* %34, i32 %35)
  %37 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %38 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load i8*, i8** %3, align 8
  %43 = bitcast i8* %42 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %43, %struct.qedr_iw_ep** %7, align 8
  %44 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %45 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %47, align 8
  %49 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %50 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 %48(%struct.TYPE_2__* %51)
  %53 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %54 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %53, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %54, align 8
  br label %55

55:                                               ; preds = %41, %30
  br label %115

56:                                               ; preds = %2
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %59 = call i32 @qedr_iw_disconnect_event(i8* %57, %struct.qed_iwarp_cm_event_params* %58)
  br label %115

60:                                               ; preds = %2
  %61 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %62 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %65 = call i32 @qedr_iw_close_event(i8* %63, %struct.qed_iwarp_cm_event_params* %64)
  br label %115

66:                                               ; preds = %2
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %69 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %70 = call i32 @qedr_iw_qp_event(i8* %67, %struct.qed_iwarp_cm_event_params* %68, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %115

71:                                               ; preds = %2
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %74 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %75 = call i32 @qedr_iw_qp_event(i8* %72, %struct.qed_iwarp_cm_event_params* %73, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %115

76:                                               ; preds = %2
  %77 = load i8*, i8** %3, align 8
  %78 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %79 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %80 = call i32 @qedr_iw_qp_event(i8* %77, %struct.qed_iwarp_cm_event_params* %78, i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %115

81:                                               ; preds = %2
  %82 = load i8*, i8** %3, align 8
  %83 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %84 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %85 = call i32 @qedr_iw_qp_event(i8* %82, %struct.qed_iwarp_cm_event_params* %83, i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %115

86:                                               ; preds = %2
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %89 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %90 = call i32 @qedr_iw_qp_event(i8* %87, %struct.qed_iwarp_cm_event_params* %88, i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %115

91:                                               ; preds = %2
  %92 = load i8*, i8** %3, align 8
  %93 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %94 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %95 = call i32 @qedr_iw_qp_event(i8* %92, %struct.qed_iwarp_cm_event_params* %93, i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %115

96:                                               ; preds = %2
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %99 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %100 = call i32 @qedr_iw_qp_event(i8* %97, %struct.qed_iwarp_cm_event_params* %98, i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %115

101:                                              ; preds = %2
  %102 = load i8*, i8** %3, align 8
  %103 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %104 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %105 = call i32 @qedr_iw_qp_event(i8* %102, %struct.qed_iwarp_cm_event_params* %103, i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %115

106:                                              ; preds = %2
  %107 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %108 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_NOTICE(%struct.qedr_dev* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %115

109:                                              ; preds = %2
  %110 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %111 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %112 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_NOTICE(%struct.qedr_dev* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %106, %101, %96, %91, %86, %81, %76, %71, %66, %60, %56, %55, %24, %20, %16
  ret i32 0
}

declare dso_local i32 @qedr_iw_mpa_request(i8*, %struct.qed_iwarp_cm_event_params*) #1

declare dso_local i32 @qedr_iw_mpa_reply(i8*, %struct.qed_iwarp_cm_event_params*) #1

declare dso_local i32 @qedr_iw_passive_complete(i8*, %struct.qed_iwarp_cm_event_params*) #1

declare dso_local i32 @qedr_iw_issue_event(i8*, %struct.qed_iwarp_cm_event_params*, i32) #1

declare dso_local i32 @qedr_iw_disconnect_event(i8*, %struct.qed_iwarp_cm_event_params*) #1

declare dso_local i32 @qedr_iw_close_event(i8*, %struct.qed_iwarp_cm_event_params*) #1

declare dso_local i32 @qedr_iw_qp_event(i8*, %struct.qed_iwarp_cm_event_params*, i32, i8*) #1

declare dso_local i32 @DP_NOTICE(%struct.qedr_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
