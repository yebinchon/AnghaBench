; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_is_recv_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_is_recv_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_cqe = type { i32, i32 }

@MTHCA_ERROR_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_cqe*)* @is_recv_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_recv_cqe(%struct.mthca_cqe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_cqe*, align 8
  store %struct.mthca_cqe* %0, %struct.mthca_cqe** %3, align 8
  %4 = load %struct.mthca_cqe*, %struct.mthca_cqe** %3, align 8
  %5 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MTHCA_ERROR_CQE_OPCODE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @MTHCA_ERROR_CQE_OPCODE_MASK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.mthca_cqe*, %struct.mthca_cqe** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.mthca_cqe*, %struct.mthca_cqe** %3, align 8
  %21 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
