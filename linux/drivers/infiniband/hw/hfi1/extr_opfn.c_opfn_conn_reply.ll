; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_conn_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_conn_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_opfn_type = type { i64 (%struct.rvt_qp*, i32)* }
%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@STL_VERBS_EXTD_MAX = common dso_local global i64 0, align 8
@hfi1_opfn_handlers = common dso_local global %struct.hfi1_opfn_type* null, align 8
@STL_VERBS_EXTD_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opfn_conn_reply(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  %6 = alloca %struct.hfi1_opfn_type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 0
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  store %struct.hfi1_qp_priv* %11, %struct.hfi1_qp_priv** %5, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %13 = call i32 @trace_hfi1_opfn_state_conn_reply(%struct.rvt_qp* %12)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 15
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @trace_hfi1_opfn_data_conn_reply(%struct.rvt_qp* %17, i64 %18, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @STL_VERBS_EXTD_MAX, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  br label %89

28:                                               ; preds = %23
  %29 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %30 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %35 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %42 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %28
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** @hfi1_opfn_handlers, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %48, i64 %49
  store %struct.hfi1_opfn_type* %50, %struct.hfi1_opfn_type** %6, align 8
  %51 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %6, align 8
  %52 = icmp ne %struct.hfi1_opfn_type* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %6, align 8
  %55 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %54, i32 0, i32 0
  %56 = load i64 (%struct.rvt_qp*, i32)*, i64 (%struct.rvt_qp*, i32)** %55, align 8
  %57 = icmp ne i64 (%struct.rvt_qp*, i32)* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %47
  br label %76

59:                                               ; preds = %53
  %60 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %6, align 8
  %61 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %60, i32 0, i32 0
  %62 = load i64 (%struct.rvt_qp*, i32)*, i64 (%struct.rvt_qp*, i32)** %61, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 %62(%struct.rvt_qp* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @OPFN_CODE(i64 %68)
  %70 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %71 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i64, i64* @STL_VERBS_EXTD_NONE, align 8
  %78 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %79 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %82 = call i32 @trace_hfi1_opfn_state_conn_reply(%struct.rvt_qp* %81)
  br label %83

83:                                               ; preds = %76, %46
  %84 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %85 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %83, %27
  ret void
}

declare dso_local i32 @trace_hfi1_opfn_state_conn_reply(%struct.rvt_qp*) #1

declare dso_local i32 @trace_hfi1_opfn_data_conn_reply(%struct.rvt_qp*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OPFN_CODE(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
