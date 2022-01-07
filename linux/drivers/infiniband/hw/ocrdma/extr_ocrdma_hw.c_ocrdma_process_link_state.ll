; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_process_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_process_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_ae_mcqe = type { i32 }
%struct.ocrdma_ae_lnkst_mcqe = type { i32 }

@OCRDMA_AE_LSC_LLINK_MASK = common dso_local global i32 0, align 4
@OCRDMA_FLAGS_LINK_STATUS_INIT = common dso_local global i32 0, align 4
@OCRDMA_LINK_ST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_ae_mcqe*)* @ocrdma_process_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_process_link_state(%struct.ocrdma_dev* %0, %struct.ocrdma_ae_mcqe* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_ae_mcqe*, align 8
  %5 = alloca %struct.ocrdma_ae_lnkst_mcqe*, align 8
  %6 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_ae_mcqe* %1, %struct.ocrdma_ae_mcqe** %4, align 8
  %7 = load %struct.ocrdma_ae_mcqe*, %struct.ocrdma_ae_mcqe** %4, align 8
  %8 = bitcast %struct.ocrdma_ae_mcqe* %7 to %struct.ocrdma_ae_lnkst_mcqe*
  store %struct.ocrdma_ae_lnkst_mcqe* %8, %struct.ocrdma_ae_lnkst_mcqe** %5, align 8
  %9 = load %struct.ocrdma_ae_lnkst_mcqe*, %struct.ocrdma_ae_lnkst_mcqe** %5, align 8
  %10 = getelementptr inbounds %struct.ocrdma_ae_lnkst_mcqe, %struct.ocrdma_ae_lnkst_mcqe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ocrdma_get_ae_link_state(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @OCRDMA_AE_LSC_LLINK_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OCRDMA_FLAGS_LINK_STATUS_INIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OCRDMA_LINK_ST_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @ocrdma_update_link_state(%struct.ocrdma_dev* %26, i32 %29)
  br label %31

31:                                               ; preds = %17, %25, %18
  ret void
}

declare dso_local i32 @ocrdma_get_ae_link_state(i32) #1

declare dso_local i32 @ocrdma_update_link_state(%struct.ocrdma_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
