; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mtk-sysirq.c_mtk_sysirq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mtk-sysirq.c_mtk_sysirq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.irq_fwspec = type { i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@mtk_sysirq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mtk_sysirq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sysirq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
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
  %16 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %17 = bitcast %struct.irq_fwspec* %13 to i8*
  %18 = bitcast %struct.irq_fwspec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %20 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %73

26:                                               ; preds = %4
  %27 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %28 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %26
  %37 = load %struct.irq_fwspec*, %struct.irq_fwspec** %12, align 8
  %38 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %59, %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %48, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %56 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %47, i32 %50, i64 %54, i32* @mtk_sysirq_chip, i32 %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %64 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %13, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %69, i32 %70, i32 %71, %struct.irq_fwspec* %13)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %62, %33, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32) #2

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
