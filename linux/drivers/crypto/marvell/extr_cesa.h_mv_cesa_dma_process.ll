; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_dma_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_dma_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_req = type { i32 }

@CESA_SA_INT_ACC0_IDMA_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CESA_SA_INT_IDMA_OWN_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_cesa_req*, i32)* @mv_cesa_dma_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_dma_process(%struct.mv_cesa_req* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_cesa_req*, align 8
  %5 = alloca i32, align 4
  store %struct.mv_cesa_req* %0, %struct.mv_cesa_req** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CESA_SA_INT_ACC0_IDMA_DONE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINPROGRESS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CESA_SA_INT_IDMA_OWN_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
