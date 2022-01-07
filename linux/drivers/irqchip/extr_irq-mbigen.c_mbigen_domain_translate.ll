; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAXIMUM_IRQ_PIN_NUM = common dso_local global i64 0, align 8
@RESERVED_IRQ_PER_MBIGEN_CHIP = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @mbigen_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbigen_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %11 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_of_node(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %17 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @is_acpi_device_node(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %83

21:                                               ; preds = %15, %4
  %22 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %23 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %21
  %30 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAXIMUM_IRQ_PIN_NUM, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %39 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RESERVED_IRQ_PER_MBIGEN_CHIP, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %86

48:                                               ; preds = %37
  %49 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %57 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %65 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IRQ_TYPE_LEVEL_HIGH, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63, %55
  %72 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %73 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %63
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %86

83:                                               ; preds = %15
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %82, %79, %45, %26
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @is_of_node(i32) #1

declare dso_local i64 @is_acpi_device_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
