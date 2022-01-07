; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_notify_error_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_notify_error_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32*, i64, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@RVT_S_BUSY = common dso_local global i32 0, align 4
@HFI1_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@IOWAIT_PENDING_IB = common dso_local global i32 0, align 4
@IOWAIT_PENDING_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_error_qp(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca i32*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %5 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %6 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %5, i32 0, i32 3
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %6, align 8
  store %struct.hfi1_qp_priv* %7, %struct.hfi1_qp_priv** %3, align 8
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @write_seqlock(i32* %15)
  %17 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %14
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RVT_S_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %22
  %30 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RVT_S_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @HFI1_S_ANY_WAIT_IO, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %40 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 1
  %45 = load i32, i32* @IOWAIT_PENDING_IB, align 4
  %46 = call i32 @iowait_clear_flag(%struct.TYPE_2__* %44, i32 %45)
  %47 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %47, i32 0, i32 1
  %49 = load i32, i32* @IOWAIT_PENDING_TID, align 4
  %50 = call i32 @iowait_clear_flag(%struct.TYPE_2__* %48, i32 %49)
  %51 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %52 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @list_del_init(i32* %53)
  %55 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %56 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %59 = call i32 @rvt_put_qp(%struct.rvt_qp* %58)
  br label %60

60:                                               ; preds = %36, %29, %22, %14
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @write_sequnlock(i32* %61)
  br label %63

63:                                               ; preds = %60, %1
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %65 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RVT_S_BUSY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %63
  %71 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %72 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RVT_S_BUSY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %70
  %78 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %79 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rvt_put_mr(i32* %87)
  %89 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %90 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %93 = call i32 @flush_tx_list(%struct.rvt_qp* %92)
  br label %94

94:                                               ; preds = %91, %70, %63
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iowait_clear_flag(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @rvt_put_qp(%struct.rvt_qp*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @rvt_put_mr(i32*) #1

declare dso_local i32 @flush_tx_list(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
