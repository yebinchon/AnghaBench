; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-pic32-evic.c_pic32_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.evic_chip_data* }
%struct.evic_chip_data = type { i32* }
%struct.irq_data = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@REG_IEC_OFFSET = common dso_local global i64 0, align 8
@REG_IFS_OFFSET = common dso_local global i64 0, align 8
@evic_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @pic32_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_irq_domain_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.evic_chip_data*, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %15, i32 0, i32 0
  %17 = load %struct.evic_chip_data*, %struct.evic_chip_data** %16, align 8
  store %struct.evic_chip_data* %17, %struct.evic_chip_data** %8, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @irq_map_generic_chip(%struct.irq_domain* %18, i32 %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %87

26:                                               ; preds = %3
  %27 = load %struct.evic_chip_data*, %struct.evic_chip_data** %8, align 8
  %28 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %37, i32 %38)
  store %struct.irq_data* %39, %struct.irq_data** %9, align 8
  %40 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %41 = load %struct.evic_chip_data*, %struct.evic_chip_data** %8, align 8
  %42 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irqd_set_trigger_type(%struct.irq_data* %40, i32 %46)
  %48 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %49 = load %struct.evic_chip_data*, %struct.evic_chip_data** %8, align 8
  %50 = getelementptr inbounds %struct.evic_chip_data, %struct.evic_chip_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @irq_setup_alt_chip(%struct.irq_data* %48, i32 %54)
  br label %56

56:                                               ; preds = %36, %26
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @IRQ_REG_MASK(i64 %57, i32 %58, i32 %59)
  %61 = load i64, i64* @REG_IEC_OFFSET, align 8
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 16
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = call i32 @PIC32_CLR(i64 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i64, i64* @REG_IFS_OFFSET, align 8
  %68 = load i32, i32* %13, align 4
  %69 = mul nsw i32 %68, 16
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = call i32 @PIC32_CLR(i64 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @evic_base, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @writel(i32 %73, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @evic_base, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @writel(i32 %78, i32 %81)
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @PIC32_INT_PRI(i32 2, i32 0)
  %85 = call i32 @pic32_set_irq_priority(i64 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %56, %24
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @irq_map_generic_chip(%struct.irq_domain*, i32, i64) #1

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

declare dso_local i32 @IRQ_REG_MASK(i64, i32, i32) #1

declare dso_local i32 @PIC32_CLR(i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pic32_set_irq_priority(i64, i32) #1

declare dso_local i32 @PIC32_INT_PRI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
