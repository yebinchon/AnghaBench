; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.h_clear_ahg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.h_clear_ahg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i64, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HFI1_S_AHG_VALID = common dso_local global i32 0, align 4
@HFI1_S_AHG_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*)* @clear_ahg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ahg(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 2
  %6 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  store %struct.hfi1_qp_priv* %6, %struct.hfi1_qp_priv** %3, align 8
  %7 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @HFI1_S_AHG_VALID, align 4
  %12 = load i32, i32* @HFI1_S_AHG_CLEAR, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %30 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sdma_ahg_free(i64 %31, i64 %34)
  br label %36

36:                                               ; preds = %28, %23, %1
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 1
  store i64 -1, i64* %38, align 8
  ret void
}

declare dso_local i32 @sdma_ahg_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
