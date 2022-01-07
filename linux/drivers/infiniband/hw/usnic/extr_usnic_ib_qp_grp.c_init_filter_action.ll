; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_init_filter_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_init_filter_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.usnic_filter_action = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usnic_vnic_res_chunk = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@USNIC_VNIC_RES_TYPE_RQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to get %s with err %ld\0A\00", align 1
@FILTER_ACTION_RQ_STEERING = common dso_local global i32 0, align 4
@DFLT_RQ_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_ib_qp_grp*, %struct.usnic_filter_action*)* @init_filter_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_filter_action(%struct.usnic_ib_qp_grp* %0, %struct.usnic_filter_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_ib_qp_grp*, align 8
  %5 = alloca %struct.usnic_filter_action*, align 8
  %6 = alloca %struct.usnic_vnic_res_chunk*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %4, align 8
  store %struct.usnic_filter_action* %1, %struct.usnic_filter_action** %5, align 8
  %7 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %8 = load i32, i32* @USNIC_VNIC_RES_TYPE_RQ, align 4
  %9 = call %struct.usnic_vnic_res_chunk* @usnic_ib_qp_grp_get_chunk(%struct.usnic_ib_qp_grp* %7, i32 %8)
  store %struct.usnic_vnic_res_chunk* %9, %struct.usnic_vnic_res_chunk** %6, align 8
  %10 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %6, align 8
  %11 = call i64 @IS_ERR(%struct.usnic_vnic_res_chunk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @USNIC_VNIC_RES_TYPE_RQ, align 4
  %15 = call i32 @usnic_vnic_res_type_to_str(i32 %14)
  %16 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.usnic_vnic_res_chunk* %16)
  %18 = call i32 @usnic_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.usnic_vnic_res_chunk* %19)
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %4, align 8
  %23 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usnic_vnic_get_index(i32 %26)
  %28 = load %struct.usnic_filter_action*, %struct.usnic_filter_action** %5, align 8
  %29 = getelementptr inbounds %struct.usnic_filter_action, %struct.usnic_filter_action* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FILTER_ACTION_RQ_STEERING, align 4
  %31 = load %struct.usnic_filter_action*, %struct.usnic_filter_action** %5, align 8
  %32 = getelementptr inbounds %struct.usnic_filter_action, %struct.usnic_filter_action* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i64, i64* @DFLT_RQ_IDX, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usnic_filter_action*, %struct.usnic_filter_action** %5, align 8
  %43 = getelementptr inbounds %struct.usnic_filter_action, %struct.usnic_filter_action* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %21, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.usnic_vnic_res_chunk* @usnic_ib_qp_grp_get_chunk(%struct.usnic_ib_qp_grp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @usnic_err(i8*, i32, i32) #1

declare dso_local i32 @usnic_vnic_res_type_to_str(i32) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @usnic_vnic_get_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
