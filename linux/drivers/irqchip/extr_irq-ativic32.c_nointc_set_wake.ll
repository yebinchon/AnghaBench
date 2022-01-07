; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ativic32.c_nointc_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ativic32.c_nointc_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@NDS32_SR_INT_MASK = common dso_local global i32 0, align 4
@nointc_set_wake.irq_orig_bit = internal global i64 0, align 8
@wake_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @nointc_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nointc_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @NDS32_SR_INT_MASK, align 4
  %8 = call i64 @__nds32__mfsr(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__assign_bit(i32 %24, i64* @nointc_set_wake.irq_orig_bit, i32 1)
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__assign_bit(i32 %29, i64* @nointc_set_wake.irq_orig_bit, i32 0)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__assign_bit(i32 %34, i64* %5, i32 1)
  %36 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__assign_bit(i32 %38, i64* @wake_mask, i32 1)
  br label %59

40:                                               ; preds = %2
  %41 = load i64, i64* @nointc_set_wake.irq_orig_bit, align 8
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %47 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__assign_bit(i32 %48, i64* %5, i32 0)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %52 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__assign_bit(i32 %53, i64* @wake_mask, i32 0)
  %55 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %56 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__assign_bit(i32 %57, i64* @nointc_set_wake.irq_orig_bit, i32 0)
  br label %59

59:                                               ; preds = %50, %31
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* @NDS32_SR_INT_MASK, align 4
  %62 = call i32 @__nds32__mtsr_dsb(i64 %60, i32 %61)
  ret i32 0
}

declare dso_local i64 @__nds32__mfsr(i32) #1

declare dso_local i32 @__assign_bit(i32, i64*, i32) #1

declare dso_local i32 @__nds32__mtsr_dsb(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
