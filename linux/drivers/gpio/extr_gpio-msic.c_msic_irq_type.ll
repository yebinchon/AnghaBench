; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msic_gpio = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @msic_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msic_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msic_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.msic_gpio* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.msic_gpio* %9, %struct.msic_gpio** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %14 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %30 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.msic_gpio*, %struct.msic_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.msic_gpio, %struct.msic_gpio* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.msic_gpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
