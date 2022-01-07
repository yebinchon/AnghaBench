; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_edma_engine = type { i32 }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"edma-tx-00-15\00", align 1
@mcf_edma_tx_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"eDMA\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"edma-tx-16-55\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"edma-tx-56-63\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"edma-err\00", align 1
@mcf_edma_err_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.fsl_edma_engine*)* @mcf_edma_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_edma_irq_init(%struct.platform_device* %0, %struct.fsl_edma_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.fsl_edma_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.fsl_edma_engine* %1, %struct.fsl_edma_engine** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = load i32, i32* @IORESOURCE_IRQ, align 4
  %11 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %11, %struct.resource** %8, align 8
  %12 = load %struct.resource*, %struct.resource** %8, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %107

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %16 = load %struct.resource*, %struct.resource** %8, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @mcf_edma_tx_handler, align 4
  %28 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %29 = call i32 @request_irq(i32 %26, i32 %27, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_edma_engine* %28)
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %35
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = load i32, i32* @IORESOURCE_IRQ, align 4
  %43 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %43, %struct.resource** %8, align 8
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = icmp ne %struct.resource* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %107

47:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  %48 = load %struct.resource*, %struct.resource** %8, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %64, %47
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @mcf_edma_tx_handler, align 4
  %60 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %61 = call i32 @request_irq(i32 %58, i32 %59, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_edma_engine* %60)
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %107

72:                                               ; preds = %67
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = call i32 @platform_get_irq_byname(%struct.platform_device* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ENXIO, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @mcf_edma_tx_handler, align 4
  %82 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %83 = call i32 @request_irq(i32 %80, i32 %81, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_edma_engine* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %107

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = call i32 @platform_get_irq_byname(%struct.platform_device* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @mcf_edma_err_handler, align 4
  %99 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %100 = call i32 @request_irq(i32 %97, i32 %98, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_edma_engine* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %89
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %103, %86, %70, %46, %38, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.fsl_edma_engine*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
