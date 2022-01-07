; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_write_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_write_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_cc = type { i32, i64 }
%struct.edmacc_param = type { i32 }

@PARM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_cc*, i32, %struct.edmacc_param*)* @edma_write_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_write_slot(%struct.edma_cc* %0, i32 %1, %struct.edmacc_param* %2) #0 {
  %4 = alloca %struct.edma_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.edmacc_param*, align 8
  store %struct.edma_cc* %0, %struct.edma_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.edmacc_param* %2, %struct.edmacc_param** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @EDMA_CHAN_SLOT(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %11 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %17 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @PARM_OFFSET(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = load %struct.edmacc_param*, %struct.edmacc_param** %6, align 8
  %23 = load i32, i32* @PARM_SIZE, align 4
  %24 = call i32 @memcpy_toio(i64 %21, %struct.edmacc_param* %22, i32 %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @memcpy_toio(i64, %struct.edmacc_param*, i32) #1

declare dso_local i64 @PARM_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
