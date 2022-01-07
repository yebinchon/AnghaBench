; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.grgpio_priv* }
%struct.grgpio_priv = type { %struct.TYPE_2__, %struct.grgpio_uirq*, %struct.grgpio_lirq* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.grgpio_uirq = type { i64, i32 }
%struct.grgpio_lirq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32)* @grgpio_irq_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grgpio_irq_unmap(%struct.irq_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grgpio_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grgpio_lirq*, align 8
  %8 = alloca %struct.grgpio_uirq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.grgpio_priv*, %struct.grgpio_priv** %13, align 8
  store %struct.grgpio_priv* %14, %struct.grgpio_priv** %5, align 8
  %15 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %16 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @irq_set_chip_and_handler(i32 %19, i32* null, i32* null)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @irq_set_chip_data(i32 %21, i32* null)
  %23 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %24 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %54, %2
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %34 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %33, i32 0, i32 2
  %35 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %35, i64 %37
  store %struct.grgpio_lirq* %38, %struct.grgpio_lirq** %7, align 8
  %39 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %7, align 8
  %40 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @grgpio_set_imask(%struct.grgpio_priv* %45, i32 %46, i32 0)
  %48 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %7, align 8
  %49 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %7, align 8
  %51 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %28

57:                                               ; preds = %44, %28
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %66 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %65, i32 0, i32 1
  %67 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %66, align 8
  %68 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %7, align 8
  %69 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %67, i64 %71
  store %struct.grgpio_uirq* %72, %struct.grgpio_uirq** %8, align 8
  %73 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %8, align 8
  %74 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %8, align 8
  %78 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = load %struct.grgpio_uirq*, %struct.grgpio_uirq** %8, align 8
  %83 = getelementptr inbounds %struct.grgpio_uirq, %struct.grgpio_uirq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %86 = call i32 @free_irq(i32 %84, %struct.grgpio_priv* %85)
  br label %87

87:                                               ; preds = %81, %64
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %90 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret void
}

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @grgpio_set_imask(%struct.grgpio_priv*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @free_irq(i32, %struct.grgpio_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
