; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_qp_unbusy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_qp_unbusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32, i32 }
%struct.iowait_work = type { i32 }

@IOWAIT_IB_SE = common dso_local global i64 0, align 8
@RVT_S_BUSY = common dso_local global i32 0, align 4
@HFI1_S_TID_BUSY_SET = common dso_local global i32 0, align 4
@IOWAIT_PENDING_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_qp_unbusy(%struct.rvt_qp* %0, %struct.iowait_work* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.iowait_work*, align 8
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.iowait_work* %1, %struct.iowait_work** %4, align 8
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 1
  %8 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  store %struct.hfi1_qp_priv* %8, %struct.hfi1_qp_priv** %5, align 8
  %9 = load %struct.iowait_work*, %struct.iowait_work** %4, align 8
  %10 = call i64 @iowait_set_work_flag(%struct.iowait_work* %9)
  %11 = load i64, i64* @IOWAIT_IB_SE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @RVT_S_BUSY, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %17 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %21 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HFI1_S_TID_BUSY_SET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %13
  %27 = load i32, i32* @HFI1_S_TID_BUSY_SET, align 4
  %28 = load i32, i32* @RVT_S_BUSY, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %32 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %36 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %35, i32 0, i32 1
  %37 = load i32, i32* @IOWAIT_PENDING_TID, align 4
  %38 = call i32 @iowait_set_flag(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %26, %13
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* @RVT_S_BUSY, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %39
  ret void
}

declare dso_local i64 @iowait_set_work_flag(%struct.iowait_work*) #1

declare dso_local i32 @iowait_set_flag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
