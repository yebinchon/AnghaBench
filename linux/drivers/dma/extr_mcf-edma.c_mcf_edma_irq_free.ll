; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_irq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_irq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_edma_engine = type { i32 }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"edma-tx-00-15\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"edma-tx-16-55\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"edma-tx-56-63\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"edma-err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.fsl_edma_engine*)* @mcf_edma_irq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcf_edma_irq_free(%struct.platform_device* %0, %struct.fsl_edma_engine* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fsl_edma_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fsl_edma_engine* %1, %struct.fsl_edma_engine** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_IRQ, align 4
  %9 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %7, i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %9, %struct.resource** %6, align 8
  %10 = load %struct.resource*, %struct.resource** %6, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %26, %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.fsl_edma_engine* %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_IRQ, align 4
  %33 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %31, i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %50, %36
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %49 = call i32 @free_irq(i32 %47, %struct.fsl_edma_engine* %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %40

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_get_irq_byname(%struct.platform_device* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.fsl_edma_engine* %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_get_irq_byname(%struct.platform_device* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %4, align 8
  %75 = call i32 @free_irq(i32 %73, %struct.fsl_edma_engine* %74)
  br label %76

76:                                               ; preds = %72, %65
  ret void
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.fsl_edma_engine*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
