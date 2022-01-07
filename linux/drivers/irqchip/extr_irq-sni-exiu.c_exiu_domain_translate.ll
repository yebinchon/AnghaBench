; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sni-exiu.c_exiu_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.exiu_irq_data* }
%struct.exiu_irq_data = type { i64 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GIC_SPI = common dso_local global i64 0, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @exiu_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exiu_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.exiu_irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %12, align 8
  store %struct.exiu_irq_data* %13, %struct.exiu_irq_data** %10, align 8
  %14 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %15 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @is_of_node(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %4
  %20 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %21 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %85

27:                                               ; preds = %19
  %28 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GIC_SPI, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %85

38:                                               ; preds = %27
  %39 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %40 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.exiu_irq_data*, %struct.exiu_irq_data** %10, align 8
  %45 = getelementptr inbounds %struct.exiu_irq_data, %struct.exiu_irq_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = load i64*, i64** %8, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %55 = zext i32 %54 to i64
  %56 = and i64 %53, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %84

59:                                               ; preds = %4
  %60 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %61 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %85

67:                                               ; preds = %59
  %68 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %69 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  %74 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %75 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %80 = zext i32 %79 to i64
  %81 = and i64 %78, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %67, %38
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %64, %35, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @is_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
