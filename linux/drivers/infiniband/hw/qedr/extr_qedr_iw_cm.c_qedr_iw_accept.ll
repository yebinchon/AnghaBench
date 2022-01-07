; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)*, i64 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }
%struct.qedr_iw_ep = type { i32, %struct.qedr_qp*, i32, %struct.iw_cm_id*, %struct.qedr_dev* }
%struct.qedr_qp = type { i32, %struct.qedr_iw_ep* }
%struct.qedr_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_iwarp_accept_in*)* }
%struct.qed_iwarp_accept_in = type { i32, i32, i32, i32, i32, %struct.qedr_iw_ep*, i32 }

@QEDR_MSG_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Accept on qpid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid QP number %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_iw_accept(%struct.iw_cm_id* %0, %struct.iw_cm_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.iw_cm_conn_param*, align 8
  %6 = alloca %struct.qedr_iw_ep*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qed_iwarp_accept_in, align 8
  %10 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store %struct.iw_cm_conn_param* %1, %struct.iw_cm_conn_param** %5, align 8
  %11 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %14, %struct.qedr_iw_ep** %6, align 8
  %15 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %16 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %15, i32 0, i32 4
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %16, align 8
  store %struct.qedr_dev* %17, %struct.qedr_dev** %7, align 8
  %18 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %19 = load i32, i32* @QEDR_MSG_IWARP, align 4
  %20 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %21 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP_DEBUG(%struct.qedr_dev* %18, i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %25 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %24, i32 0, i32 2
  %26 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %27 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.qedr_qp* @xa_load(i32* %25, i32 %28)
  store %struct.qedr_qp* %29, %struct.qedr_qp** %8, align 8
  %30 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %31 = icmp ne %struct.qedr_qp* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %34 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %35 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DP_ERR(%struct.qedr_dev* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %2
  %41 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %42 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %43 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %42, i32 0, i32 1
  store %struct.qedr_qp* %41, %struct.qedr_qp** %43, align 8
  %44 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %45 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %46 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %45, i32 0, i32 1
  store %struct.qedr_iw_ep* %44, %struct.qedr_iw_ep** %46, align 8
  %47 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %48 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %47, i32 0, i32 1
  %49 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %48, align 8
  %50 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %51 = call i32 %49(%struct.iw_cm_id* %50)
  %52 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %53 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %54 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %53, i32 0, i32 3
  store %struct.iw_cm_id* %52, %struct.iw_cm_id** %54, align 8
  %55 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %56 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 6
  store i32 %57, i32* %58, align 8
  %59 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 5
  store %struct.qedr_iw_ep* %59, %struct.qedr_iw_ep** %60, align 8
  %61 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %62 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %61, i32 0, i32 1
  %63 = load %struct.qedr_qp*, %struct.qedr_qp** %62, align 8
  %64 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %68 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %72 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %76 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %5, align 8
  %80 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %84 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %86 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (i32, %struct.qed_iwarp_accept_in*)*, i32 (i32, %struct.qed_iwarp_accept_in*)** %88, align 8
  %90 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %91 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92, %struct.qed_iwarp_accept_in* %9)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %40
  br label %99

97:                                               ; preds = %40
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %108

99:                                               ; preds = %96
  %100 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %6, align 8
  %101 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %103 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %102, i32 0, i32 0
  %104 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %103, align 8
  %105 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %106 = call i32 %104(%struct.iw_cm_id* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %99, %97, %32
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32) #1

declare dso_local %struct.qedr_qp* @xa_load(i32*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
