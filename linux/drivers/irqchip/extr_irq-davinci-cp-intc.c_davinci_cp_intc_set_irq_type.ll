; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-davinci-cp-intc.c_davinci_cp_intc_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-davinci-cp-intc.c_davinci_cp_intc_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @davinci_cp_intc_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_cp_intc_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT_WORD(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT_MASK(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DAVINCI_CP_INTC_SYS_POLARITY(i32 %18)
  %20 = call i32 @davinci_cp_intc_read(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DAVINCI_CP_INTC_SYS_TYPE(i32 %21)
  %23 = call i32 @davinci_cp_intc_read(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %57 [
    i32 130, label %25
    i32 131, label %32
    i32 129, label %40
    i32 128, label %48
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %60

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %60

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %48, %40, %32, %25
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @DAVINCI_CP_INTC_SYS_POLARITY(i32 %62)
  %64 = call i32 @davinci_cp_intc_write(i32 %61, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @DAVINCI_CP_INTC_SYS_TYPE(i32 %66)
  %68 = call i32 @davinci_cp_intc_write(i32 %65, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BIT_WORD(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @davinci_cp_intc_read(i32) #1

declare dso_local i32 @DAVINCI_CP_INTC_SYS_POLARITY(i32) #1

declare dso_local i32 @DAVINCI_CP_INTC_SYS_TYPE(i32) #1

declare dso_local i32 @davinci_cp_intc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
