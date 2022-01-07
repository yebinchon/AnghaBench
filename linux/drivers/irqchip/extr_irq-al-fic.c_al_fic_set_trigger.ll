; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_set_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_fic = type { i32, i64 }
%struct.irq_chip_generic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AL_FIC_CONTROL = common dso_local global i64 0, align 8
@AL_FIC_CONFIGURED_LEVEL = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@CONTROL_TRIGGER_RISING = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_fic*, %struct.irq_chip_generic*, i32)* @al_fic_set_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_fic_set_trigger(%struct.al_fic* %0, %struct.irq_chip_generic* %1, i32 %2) #0 {
  %4 = alloca %struct.al_fic*, align 8
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.al_fic* %0, %struct.al_fic** %4, align 8
  store %struct.irq_chip_generic* %1, %struct.irq_chip_generic** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.al_fic*, %struct.al_fic** %4, align 8
  %10 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AL_FIC_CONTROL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AL_FIC_CONFIGURED_LEVEL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @handle_level_irq, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @CONTROL_TRIGGER_RISING, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @handle_edge_irq, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @CONTROL_TRIGGER_RISING, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %32 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.al_fic*, %struct.al_fic** %4, align 8
  %37 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.al_fic*, %struct.al_fic** %4, align 8
  %40 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AL_FIC_CONTROL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
