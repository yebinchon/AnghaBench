; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mtk-cirq.c_mtk_cirq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mtk-cirq.c_mtk_cirq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@mtk_cirq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mtk_cirq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cirq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.irq_fwspec*, align 8
  %14 = alloca %struct.irq_fwspec, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %16, %struct.irq_fwspec** %13, align 8
  %17 = load %struct.irq_fwspec*, %struct.irq_fwspec** %13, align 8
  %18 = bitcast %struct.irq_fwspec* %14 to i8*
  %19 = bitcast %struct.irq_fwspec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %21 = load %struct.irq_fwspec*, %struct.irq_fwspec** %13, align 8
  %22 = call i32 @mtk_cirq_domain_translate(%struct.irq_domain* %20, %struct.irq_fwspec* %21, i32* %11, i32* %12)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %54

36:                                               ; preds = %27
  %37 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %41 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %37, i32 %38, i32 %39, i32* @mtk_cirq_chip, i32 %42)
  %44 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %45 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %14, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %50, i32 %51, i32 %52, %struct.irq_fwspec* %14)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %36, %33, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mtk_cirq_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i32*, i32*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, i32) #2

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
