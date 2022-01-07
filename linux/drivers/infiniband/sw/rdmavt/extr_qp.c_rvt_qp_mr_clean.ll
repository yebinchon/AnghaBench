; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_mr_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_mr_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_QPS_RESET = common dso_local global i64 0, align 8
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_qp_mr_clean(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_event.0, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IB_QPT_SMI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IB_QPT_GSI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  br label %98

21:                                               ; preds = %13
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 3
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 4
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_QPS_ERR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_QPS_RESET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %21
  br label %64

43:                                               ; preds = %36
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 5
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @rvt_ss_has_lkey(i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @rvt_qp_sends_has_lkey(%struct.rvt_qp* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @rvt_qp_acks_has_lkey(%struct.rvt_qp* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %49, %43
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %61 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %62 = call i32 @rvt_error_qp(%struct.rvt_qp* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %66 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %65, i32 0, i32 4
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %69 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %68, i32 0, i32 3
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %64
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %85, align 8
  %86 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %87 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %89 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %90, align 8
  %92 = bitcast %struct.ib_event.0* %6 to %struct.ib_event*
  %93 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %94 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %91(%struct.ib_event* %92, i32 %96)
  br label %98

98:                                               ; preds = %20, %76, %64
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rvt_ss_has_lkey(i32*, i32) #1

declare dso_local i64 @rvt_qp_sends_has_lkey(%struct.rvt_qp*, i32) #1

declare dso_local i64 @rvt_qp_acks_has_lkey(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
