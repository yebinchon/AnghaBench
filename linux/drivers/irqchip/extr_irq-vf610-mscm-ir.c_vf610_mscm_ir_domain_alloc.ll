; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-vf610-mscm-ir.c_vf610_mscm_ir_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.irq_domain = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@vf610_mscm_ir_irq_chip = common dso_local global i32 0, align 4
@mscm_ir_data = common dso_local global %struct.TYPE_3__* null, align 8
@GIC_SPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @vf610_mscm_ir_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_mscm_ir_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.irq_fwspec*, align 8
  %13 = alloca %struct.irq_fwspec, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %15, %struct.irq_fwspec** %12, align 8
  %16 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @irq_domain_get_of_node(%struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %106

24:                                               ; preds = %4
  %25 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %26 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %106

32:                                               ; preds = %24
  %33 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %34 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %55, %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %52 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %43, i32 %46, i64 %50, i32* @vf610_mscm_ir_irq_chip, i32 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %60 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mscm_ir_data, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %72 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  store i64 %75, i64* %78, align 8
  br label %101

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 0
  store i32 3, i32* %80, align 8
  %81 = load i64, i64* @GIC_SPI, align 8
  %82 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %81, i64* %84, align 8
  %85 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %86 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 %89, i64* %92, align 8
  %93 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %94 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %79, %69
  %102 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %102, i32 %103, i32 %104, %struct.irq_fwspec* %13)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %101, %29, %21
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @irq_domain_get_of_node(%struct.TYPE_4__*) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
