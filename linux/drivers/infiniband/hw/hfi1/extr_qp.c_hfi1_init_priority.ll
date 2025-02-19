; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_init_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_init_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait = type { i32 }
%struct.rvt_qp = type { i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i32 }

@RVT_S_ACK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iowait*)* @hfi1_init_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_init_priority(%struct.iowait* %0) #0 {
  %2 = alloca %struct.iowait*, align 8
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.iowait* %0, %struct.iowait** %2, align 8
  %5 = load %struct.iowait*, %struct.iowait** %2, align 8
  %6 = call %struct.rvt_qp* @iowait_to_qp(%struct.iowait* %5)
  store %struct.rvt_qp* %6, %struct.rvt_qp** %3, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 1
  %9 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %8, align 8
  store %struct.hfi1_qp_priv* %9, %struct.hfi1_qp_priv** %4, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RVT_S_ACK_PENDING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.iowait*, %struct.iowait** %2, align 8
  %18 = getelementptr inbounds %struct.iowait, %struct.iowait* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RVT_S_ACK_PENDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.iowait*, %struct.iowait** %2, align 8
  %30 = getelementptr inbounds %struct.iowait, %struct.iowait* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %21
  ret void
}

declare dso_local %struct.rvt_qp* @iowait_to_qp(%struct.iowait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
