; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_cc = type { i32 }

@PARM_DST = common dso_local global i64 0, align 8
@PARM_SRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edma_cc*, i32, i32)* @edma_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_get_position(%struct.edma_cc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.edma_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edma_cc* %0, %struct.edma_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @EDMA_CHAN_SLOT(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @PARM_OFFSET(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @PARM_DST, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @PARM_SRC, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @edma_read(%struct.edma_cc* %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @PARM_OFFSET(i32) #1

declare dso_local i32 @edma_read(%struct.edma_cc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
