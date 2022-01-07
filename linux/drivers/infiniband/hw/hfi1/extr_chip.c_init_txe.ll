; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_txe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_txe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32 }

@SEND_PIO_ERR_MASK = common dso_local global i32 0, align 4
@SEND_DMA_ERR_MASK = common dso_local global i32 0, align 4
@SEND_ERR_MASK = common dso_local global i32 0, align 4
@SEND_EGRESS_ERR_MASK = common dso_local global i32 0, align 4
@SEND_CTXT_ERR_MASK = common dso_local global i32 0, align 4
@SEND_DMA_ENG_ERR_MASK = common dso_local global i32 0, align 4
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@SEND_CM_TIMER_CTRL = common dso_local global i32 0, align 4
@HFI1_CREDIT_RETURN_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @init_txe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_txe(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = load i32, i32* @SEND_PIO_ERR_MASK, align 4
  %6 = call i32 @write_csr(%struct.hfi1_devdata* %4, i32 %5, i64 -1)
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = load i32, i32* @SEND_DMA_ERR_MASK, align 4
  %9 = call i32 @write_csr(%struct.hfi1_devdata* %7, i32 %8, i64 -1)
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = load i32, i32* @SEND_ERR_MASK, align 4
  %12 = call i32 @write_csr(%struct.hfi1_devdata* %10, i32 %11, i64 -1)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = load i32, i32* @SEND_EGRESS_ERR_MASK, align 4
  %15 = call i32 @write_csr(%struct.hfi1_devdata* %13, i32 %14, i64 -1)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %26, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %19 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SEND_CTXT_ERR_MASK, align 4
  %25 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %22, i32 %23, i32 %24, i64 -1)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %16

29:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %33 = call i32 @chip_sdma_engines(%struct.hfi1_devdata* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SEND_DMA_ENG_ERR_MASK, align 4
  %39 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %36, i32 %37, i32 %38, i64 -1)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @assign_local_cm_au_table(%struct.hfi1_devdata* %44, i32 %47)
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %56 = load i32, i32* @SEND_CM_TIMER_CTRL, align 4
  %57 = load i64, i64* @HFI1_CREDIT_RETURN_RATE, align 8
  %58 = call i32 @write_csr(%struct.hfi1_devdata* %55, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %43
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i32 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i64) #1

declare dso_local i32 @chip_sdma_engines(%struct.hfi1_devdata*) #1

declare dso_local i32 @assign_local_cm_au_table(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
