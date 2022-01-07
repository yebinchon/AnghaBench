; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_cc = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Ignoring eDMA instance for linking\0A\00", align 1
@PARM_LINK_BCNTRLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edma_cc*, i32, i32)* @edma_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_link(%struct.edma_cc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.edma_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edma_cc* %0, %struct.edma_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @EDMA_CTLR(i32 %7)
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @EDMA_CTLR(i32 %9)
  %11 = icmp ne i64 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %17 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @EDMA_CHAN_SLOT(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @EDMA_CHAN_SLOT(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %27 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp uge i32 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %33 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %20
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %39 = load i32, i32* @PARM_LINK_BCNTRLD, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @PARM_OFFSET(i32 %41)
  %43 = call i32 @edma_param_modify(%struct.edma_cc* %38, i32 %39, i32 %40, i32 -65536, i32 %42)
  br label %44

44:                                               ; preds = %37, %36
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @EDMA_CTLR(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_param_modify(%struct.edma_cc*, i32, i32, i32, i32) #1

declare dso_local i32 @PARM_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
