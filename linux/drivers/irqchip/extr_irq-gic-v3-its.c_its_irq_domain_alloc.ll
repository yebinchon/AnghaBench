; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.its_device* }
%struct.its_device = type { %struct.TYPE_5__, %struct.its_node* }
%struct.TYPE_5__ = type { i64 }
%struct.its_node = type { i32 (%struct.its_device.0*)* }
%struct.its_device.0 = type opaque

@its_irq_chip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ID:%d pID:%d vID:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @its_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.its_device*, align 8
  %12 = alloca %struct.its_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.its_device*, %struct.its_device** %22, align 8
  store %struct.its_device* %23, %struct.its_device** %11, align 8
  %24 = load %struct.its_device*, %struct.its_device** %11, align 8
  %25 = getelementptr inbounds %struct.its_device, %struct.its_device* %24, i32 0, i32 1
  %26 = load %struct.its_node*, %struct.its_node** %25, align 8
  store %struct.its_node* %26, %struct.its_node** %12, align 8
  %27 = load %struct.its_device*, %struct.its_device** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @its_alloc_device_irq(%struct.its_device* %27, i32 %28, i64* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %108

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.its_node*, %struct.its_node** %12, align 8
  %39 = getelementptr inbounds %struct.its_node, %struct.its_node* %38, i32 0, i32 0
  %40 = load i32 (%struct.its_device.0*)*, i32 (%struct.its_device.0*)** %39, align 8
  %41 = load %struct.its_device*, %struct.its_device** %11, align 8
  %42 = bitcast %struct.its_device* %41 to %struct.its_device.0*
  %43 = call i32 %40(%struct.its_device.0* %42)
  %44 = call i32 @iommu_dma_prepare_msi(i32 %37, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %108

49:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %104, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %50
  %55 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add i32 %56, %57
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @its_irq_gic_domain_alloc(%struct.irq_domain* %55, i32 %58, i64 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %108

68:                                               ; preds = %54
  %69 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %70, %71
  %73 = load i64, i64* %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load %struct.its_device*, %struct.its_device** %11, align 8
  %78 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %69, i32 %72, i64 %76, i32* @its_irq_chip, %struct.its_device* %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @irq_to_desc(i32 %81)
  %83 = call i32 @irq_desc_get_irq_data(i32 %82)
  %84 = call i32 @irqd_set_single_target(i32 %83)
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.its_device*, %struct.its_device** %11, align 8
  %90 = getelementptr inbounds %struct.its_device, %struct.its_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %100, %101
  %103 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %68
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %50

107:                                              ; preds = %50
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %66, %47, %32
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @its_alloc_device_irq(%struct.its_device*, i32, i64*) #1

declare dso_local i32 @iommu_dma_prepare_msi(i32, i32) #1

declare dso_local i32 @its_irq_gic_domain_alloc(%struct.irq_domain*, i32, i64) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, %struct.its_device*) #1

declare dso_local i32 @irqd_set_single_target(i32) #1

declare dso_local i32 @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
