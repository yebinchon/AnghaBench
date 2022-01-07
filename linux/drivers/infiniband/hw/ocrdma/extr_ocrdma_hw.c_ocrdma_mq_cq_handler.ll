; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mq_cq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mq_cq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_mcqe = type { i32 }

@OCRDMA_MCQE_AE_MASK = common dso_local global i32 0, align 4
@OCRDMA_MCQE_CMPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, i32)* @ocrdma_mq_cq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mq_cq_handler(%struct.ocrdma_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_mcqe*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %2, %40
  %8 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %9 = call %struct.ocrdma_mcqe* @ocrdma_get_mcqe(%struct.ocrdma_dev* %8)
  store %struct.ocrdma_mcqe* %9, %struct.ocrdma_mcqe** %6, align 8
  %10 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %11 = icmp eq %struct.ocrdma_mcqe* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %45

13:                                               ; preds = %7
  %14 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %15 = call i32 @ocrdma_le32_to_cpu(%struct.ocrdma_mcqe* %14, i32 4)
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_mcqe, %struct.ocrdma_mcqe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCRDMA_MCQE_AE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %26 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %27 = call i32 @ocrdma_process_acqe(%struct.ocrdma_dev* %25, %struct.ocrdma_mcqe* %26)
  br label %40

28:                                               ; preds = %13
  %29 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %30 = getelementptr inbounds %struct.ocrdma_mcqe, %struct.ocrdma_mcqe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCRDMA_MCQE_CMPL_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %37 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %38 = call i32 @ocrdma_process_mcqe(%struct.ocrdma_dev* %36, %struct.ocrdma_mcqe* %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  %41 = load %struct.ocrdma_mcqe*, %struct.ocrdma_mcqe** %6, align 8
  %42 = call i32 @memset(%struct.ocrdma_mcqe* %41, i32 0, i32 4)
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %44 = call i32 @ocrdma_mcq_inc_tail(%struct.ocrdma_dev* %43)
  br label %7

45:                                               ; preds = %12
  %46 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %47 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %48 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %46, i32 %51, i32 1, i32 0, i32 %52)
  ret i32 0
}

declare dso_local %struct.ocrdma_mcqe* @ocrdma_get_mcqe(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_le32_to_cpu(%struct.ocrdma_mcqe*, i32) #1

declare dso_local i32 @ocrdma_process_acqe(%struct.ocrdma_dev*, %struct.ocrdma_mcqe*) #1

declare dso_local i32 @ocrdma_process_mcqe(%struct.ocrdma_dev*, %struct.ocrdma_mcqe*) #1

declare dso_local i32 @memset(%struct.ocrdma_mcqe*, i32, i32) #1

declare dso_local i32 @ocrdma_mcq_inc_tail(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
