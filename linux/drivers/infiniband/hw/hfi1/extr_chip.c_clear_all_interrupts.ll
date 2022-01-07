; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_all_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_all_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@CCE_NUM_INT_CSRS = common dso_local global i32 0, align 4
@CCE_INT_CLEAR = common dso_local global i64 0, align 8
@CCE_ERR_CLEAR = common dso_local global i64 0, align 8
@MISC_ERR_CLEAR = common dso_local global i64 0, align 8
@RCV_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_PIO_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_DMA_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_EGRESS_ERR_CLEAR = common dso_local global i64 0, align 8
@SEND_CTXT_ERR_CLEAR = common dso_local global i32 0, align 4
@SEND_DMA_ENG_ERR_CLEAR = common dso_local global i32 0, align 4
@DCC_ERR_FLG_CLR = common dso_local global i64 0, align 8
@DC_LCB_ERR_CLR = common dso_local global i64 0, align 8
@DC_DC8051_ERR_CLR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_all_interrupts(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CCE_NUM_INT_CSRS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = load i64, i64* @CCE_INT_CLEAR, align 8
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 8, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i32 @write_csr(%struct.hfi1_devdata* %9, i64 %14, i32 -1)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = load i64, i64* @CCE_ERR_CLEAR, align 8
  %22 = call i32 @write_csr(%struct.hfi1_devdata* %20, i64 %21, i32 -1)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %24 = load i64, i64* @MISC_ERR_CLEAR, align 8
  %25 = call i32 @write_csr(%struct.hfi1_devdata* %23, i64 %24, i32 -1)
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = load i64, i64* @RCV_ERR_CLEAR, align 8
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %26, i64 %27, i32 -1)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = load i64, i64* @SEND_ERR_CLEAR, align 8
  %31 = call i32 @write_csr(%struct.hfi1_devdata* %29, i64 %30, i32 -1)
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %33 = load i64, i64* @SEND_PIO_ERR_CLEAR, align 8
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %32, i64 %33, i32 -1)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %36 = load i64, i64* @SEND_DMA_ERR_CLEAR, align 8
  %37 = call i32 @write_csr(%struct.hfi1_devdata* %35, i64 %36, i32 -1)
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %39 = load i64, i64* @SEND_EGRESS_ERR_CLEAR, align 8
  %40 = call i32 @write_csr(%struct.hfi1_devdata* %38, i64 %39, i32 -1)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %51, %19
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %44 = call i32 @chip_send_contexts(%struct.hfi1_devdata* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SEND_CTXT_ERR_CLEAR, align 4
  %50 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %47, i32 %48, i32 %49, i32 -1)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %41

54:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %58 = call i32 @chip_sdma_engines(%struct.hfi1_devdata* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SEND_DMA_ENG_ERR_CLEAR, align 4
  %64 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %61, i32 %62, i32 %63, i32 -1)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %70 = load i64, i64* @DCC_ERR_FLG_CLR, align 8
  %71 = call i32 @write_csr(%struct.hfi1_devdata* %69, i64 %70, i32 -1)
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %73 = load i64, i64* @DC_LCB_ERR_CLR, align 8
  %74 = call i32 @write_csr(%struct.hfi1_devdata* %72, i64 %73, i32 -1)
  %75 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %76 = load i64, i64* @DC_DC8051_ERR_CLR, align 8
  %77 = call i32 @write_csr(%struct.hfi1_devdata* %75, i64 %76, i32 -1)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @chip_sdma_engines(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
