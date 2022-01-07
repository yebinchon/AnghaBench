; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_udata = type { i32 }
%struct.usnic_ib_qp_grp = type { i32, i32, %struct.usnic_ib_vf* }
%struct.usnic_ib_vf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to move qp grp %u to reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.usnic_ib_qp_grp*, align 8
  %6 = alloca %struct.usnic_ib_vf*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %9 = call %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp* %8)
  store %struct.usnic_ib_qp_grp* %9, %struct.usnic_ib_qp_grp** %5, align 8
  %10 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %5, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %10, i32 0, i32 2
  %12 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %11, align 8
  store %struct.usnic_ib_vf* %12, %struct.usnic_ib_vf** %6, align 8
  %13 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %6, align 8
  %14 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %5, align 8
  %19 = load i32, i32* @IB_QPS_RESET, align 4
  %20 = call i64 @usnic_ib_qp_grp_modify(%struct.usnic_ib_qp_grp* %18, i32 %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %5, align 8
  %24 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usnic_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %5, align 8
  %29 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %28, i32 0, i32 0
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %5, align 8
  %32 = call i32 @qp_grp_destroy(%struct.usnic_ib_qp_grp* %31)
  %33 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %6, align 8
  %34 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret i32 0
}

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usnic_ib_qp_grp_modify(%struct.usnic_ib_qp_grp*, i32, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @qp_grp_destroy(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
