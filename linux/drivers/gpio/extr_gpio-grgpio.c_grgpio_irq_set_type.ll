; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.grgpio_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (i64)*, i32, i32 (i64, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@GRGPIO_IPOL = common dso_local global i64 0, align 8
@GRGPIO_IEDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @grgpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grgpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grgpio_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call %struct.grgpio_priv* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.grgpio_priv* %14, %struct.grgpio_priv** %6, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 129, label %21
    i32 131, label %23
    i32 130, label %25
  ]

20:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %31

23:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %12, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %12, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %25, %23, %21, %20
  %32 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %33 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %38 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i64)*, i32 (i64)** %39, align 8
  %41 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %42 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GRGPIO_IPOL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 %40(i64 %45)
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %51 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i64)*, i32 (i64)** %52, align 8
  %54 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %55 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GRGPIO_IEDGE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 %53(i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %64 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32 (i64, i32)*, i32 (i64, i32)** %65, align 8
  %67 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %68 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @GRGPIO_IPOL, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %72, %73
  %75 = call i32 %66(i64 %71, i32 %74)
  %76 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %77 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32 (i64, i32)*, i32 (i64, i32)** %78, align 8
  %80 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %81 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GRGPIO_IEDGE, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %85, %86
  %88 = call i32 %79(i64 %84, i32 %87)
  %89 = load %struct.grgpio_priv*, %struct.grgpio_priv** %6, align 8
  %90 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %31, %28
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.grgpio_priv* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
