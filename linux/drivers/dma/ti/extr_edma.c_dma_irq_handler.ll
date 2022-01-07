; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_dma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_dma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_cc = type { i32, i32*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dma_irq_handler\0A\00", align 1
@SH_IPR = common dso_local global i32 0, align 4
@SH_IER = common dso_local global i32 0, align 4
@SH_ICR = common dso_local global i32 0, align 4
@SH_IEVAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edma_cc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.edma_cc*
  store %struct.edma_cc* %14, %struct.edma_cc** %6, align 8
  %15 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %16 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %89

22:                                               ; preds = %2
  %23 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %24 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_vdbg(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %28 = load i32, i32* @SH_IPR, align 4
  %29 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %27, i32 %28, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %22
  %33 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %34 = load i32, i32* @SH_IPR, align 4
  %35 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %33, i32 %34, i32 1)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %32
  %41 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %42 = load i32, i32* @SH_IER, align 4
  %43 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %41, i32 %42, i32 1)
  store i32 %43, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %48

44:                                               ; preds = %22
  %45 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %46 = load i32, i32* @SH_IER, align 4
  %47 = call i32 @edma_shadow0_read_array(%struct.edma_cc* %45, i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %81, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @__ffs(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 5
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %68 = load i32, i32* @SH_ICR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = call i32 @edma_shadow0_write_array(%struct.edma_cc* %67, i32 %68, i32 %69, i32 %71)
  %73 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %74 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @edma_completion_handler(i32* %78)
  br label %80

80:                                               ; preds = %62, %49
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %49, label %84

84:                                               ; preds = %81
  %85 = load %struct.edma_cc*, %struct.edma_cc** %6, align 8
  %86 = load i32, i32* @SH_IEVAL, align 4
  %87 = call i32 @edma_shadow0_write(%struct.edma_cc* %85, i32 %86, i32 1)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %38, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @edma_shadow0_read_array(%struct.edma_cc*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edma_shadow0_write_array(%struct.edma_cc*, i32, i32, i32) #1

declare dso_local i32 @edma_completion_handler(i32*) #1

declare dso_local i32 @edma_shadow0_write(%struct.edma_cc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
