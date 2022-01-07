; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-csky-mpintc.c_csky_mpintc_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-csky-mpintc.c_csky_mpintc_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@__trigger = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @csky_mpintc_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_mpintc_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %33 [
    i32 129, label %9
    i32 128, label %15
    i32 130, label %21
    i32 131, label %27
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** @__trigger, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32 0, i32* %14, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32*, i32** @__trigger, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 1, i32* %20, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i32*, i32** @__trigger, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 2, i32* %26, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32*, i32** @__trigger, align 8
  %29 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 3, i32* %32, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %27, %21, %15, %9
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
