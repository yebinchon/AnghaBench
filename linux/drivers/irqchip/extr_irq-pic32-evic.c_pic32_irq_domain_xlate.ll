; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_irq_domain_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_irq_domain_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.evic_chip_data* }
%struct.evic_chip_data = type { i64* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NR_IRQS = common dso_local global i64 0, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pic32_irq_domain_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i64* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.evic_chip_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 0
  %17 = load %struct.evic_chip_data*, %struct.evic_chip_data** %16, align 8
  store %struct.evic_chip_data* %17, %struct.evic_chip_data** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ult i32 %18, 2
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %62

26:                                               ; preds = %6
  %27 = load i64*, i64** %10, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NR_IRQS, align 8
  %31 = icmp uge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %62

38:                                               ; preds = %26
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %12, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IRQ_TYPE_SENSE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IRQ_TYPE_SENSE_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load %struct.evic_chip_data*, %struct.evic_chip_data** %14, align 8
  %56 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %54, i64* %61, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %38, %35, %23
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
