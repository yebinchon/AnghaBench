; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_edma_engine = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"edma-tx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"edma-err\00", align 1
@fsl_edma_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"eDMA\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't register eDMA IRQ.\0A\00", align 1
@fsl_edma_tx_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"eDMA tx\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't register eDMA tx IRQ.\0A\00", align 1
@fsl_edma_err_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"eDMA err\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Can't register eDMA err IRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.fsl_edma_engine*)* @fsl_edma_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_irq_init(%struct.platform_device* %0, %struct.fsl_edma_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.fsl_edma_engine*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.fsl_edma_engine* %1, %struct.fsl_edma_engine** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = call i8* @platform_get_irq_byname(%struct.platform_device* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %13 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = call i8* @platform_get_irq_byname(%struct.platform_device* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %26 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %21
  %37 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %38 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %41 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %48 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @fsl_edma_irq_handler, align 4
  %51 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %52 = call i32 @devm_request_irq(i32* %46, i64 %49, i32 %50, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.fsl_edma_engine* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %95

60:                                               ; preds = %44
  br label %94

61:                                               ; preds = %36
  %62 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %65 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @fsl_edma_tx_handler, align 4
  %68 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %69 = call i32 @devm_request_irq(i32* %63, i64 %66, i32 %67, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.fsl_edma_engine* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %95

77:                                               ; preds = %61
  %78 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %81 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @fsl_edma_err_handler, align 4
  %84 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %85 = call i32 @devm_request_irq(i32* %79, i64 %82, i32 %83, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.fsl_edma_engine* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %60
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %88, %72, %55, %31, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i8*, %struct.fsl_edma_engine*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
