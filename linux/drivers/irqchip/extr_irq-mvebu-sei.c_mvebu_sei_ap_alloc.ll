; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_ap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_ap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_4__*, %struct.mvebu_sei* }
%struct.TYPE_4__ = type { i32 }
%struct.mvebu_sei = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@mvebu_sei_ap_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mvebu_sei_ap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_sei_ap_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mvebu_sei*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 1
  %17 = load %struct.mvebu_sei*, %struct.mvebu_sei** %16, align 8
  store %struct.mvebu_sei* %17, %struct.mvebu_sei** %10, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @mvebu_sei_ap_translate(%struct.irq_domain* %18, i8* %19, i64* %12, i32* %13)
  %21 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %22 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %30 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %28, %34
  %36 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %39, i32 %40, i32 1, %struct.irq_fwspec* %11)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %55

46:                                               ; preds = %4
  %47 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %51 = load i32, i32* @handle_level_irq, align 4
  %52 = call i32 @irq_domain_set_info(%struct.irq_domain* %47, i32 %48, i64 %49, i32* @mvebu_sei_ap_irq_chip, %struct.mvebu_sei* %50, i32 %51, i32* null, i32* null)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @irq_set_probe(i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %44
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mvebu_sei_ap_translate(%struct.irq_domain*, i8*, i64*, i32*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.mvebu_sei*, i32, i32*, i32*) #1

declare dso_local i32 @irq_set_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
