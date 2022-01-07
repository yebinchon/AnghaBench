; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.usnic_ib_qp_grp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IB_QP_PORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unhandled request, attr_mask=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.usnic_ib_qp_grp*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %11 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = call %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp* %12)
  store %struct.usnic_ib_qp_grp* %13, %struct.usnic_ib_qp_grp** %9, align 8
  %14 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %9, align 8
  %15 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IB_QP_PORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %50

33:                                               ; preds = %25, %4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IB_QP_STATE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %9, align 8
  %40 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usnic_ib_qp_grp_modify(%struct.usnic_ib_qp_grp* %39, i32 %42, i32* null)
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @usnic_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %9, align 8
  %52 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usnic_ib_qp_grp_modify(%struct.usnic_ib_qp_grp*, i32, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
