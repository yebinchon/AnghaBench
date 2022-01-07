; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_process_grp5_aync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_process_grp5_aync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32 }
%struct.ocrdma_ae_mcqe = type { i32 }
%struct.ocrdma_ae_pvid_mcqe = type { i32 }

@OCRDMA_AE_MCQE_EVENT_TYPE_MASK = common dso_local global i32 0, align 4
@OCRDMA_AE_MCQE_EVENT_TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_AE_PVID_MCQE_ENABLED_MASK = common dso_local global i32 0, align 4
@OCRDMA_AE_PVID_MCQE_ENABLED_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_AE_PVID_MCQE_TAG_MASK = common dso_local global i32 0, align 4
@OCRDMA_AE_PVID_MCQE_TAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_ae_mcqe*)* @ocrdma_process_grp5_aync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_process_grp5_aync(%struct.ocrdma_dev* %0, %struct.ocrdma_ae_mcqe* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_ae_mcqe*, align 8
  %5 = alloca %struct.ocrdma_ae_pvid_mcqe*, align 8
  %6 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_ae_mcqe* %1, %struct.ocrdma_ae_mcqe** %4, align 8
  %7 = load %struct.ocrdma_ae_mcqe*, %struct.ocrdma_ae_mcqe** %4, align 8
  %8 = getelementptr inbounds %struct.ocrdma_ae_mcqe, %struct.ocrdma_ae_mcqe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OCRDMA_AE_MCQE_EVENT_TYPE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @OCRDMA_AE_MCQE_EVENT_TYPE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %41 [
    i32 128, label %15
    i32 129, label %37
  ]

15:                                               ; preds = %2
  %16 = load %struct.ocrdma_ae_mcqe*, %struct.ocrdma_ae_mcqe** %4, align 8
  %17 = bitcast %struct.ocrdma_ae_mcqe* %16 to %struct.ocrdma_ae_pvid_mcqe*
  store %struct.ocrdma_ae_pvid_mcqe* %17, %struct.ocrdma_ae_pvid_mcqe** %5, align 8
  %18 = load %struct.ocrdma_ae_pvid_mcqe*, %struct.ocrdma_ae_pvid_mcqe** %5, align 8
  %19 = getelementptr inbounds %struct.ocrdma_ae_pvid_mcqe, %struct.ocrdma_ae_pvid_mcqe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCRDMA_AE_PVID_MCQE_ENABLED_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @OCRDMA_AE_PVID_MCQE_ENABLED_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load %struct.ocrdma_ae_pvid_mcqe*, %struct.ocrdma_ae_pvid_mcqe** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_ae_pvid_mcqe, %struct.ocrdma_ae_pvid_mcqe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCRDMA_AE_PVID_MCQE_TAG_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @OCRDMA_AE_PVID_MCQE_TAG_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %35 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %15
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %39 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %38, i32 0, i32 1
  %40 = call i32 @atomic_set(i32* %39, i32 1)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %37, %36
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
