; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_abx500_temp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abx500.c_abx500_temp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.abx500_temp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, %struct.abx500_temp.0*)* }
%struct.abx500_temp.0 = type opaque

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @abx500_temp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_temp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.abx500_temp*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.platform_device*
  store %struct.platform_device* %8, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = call %struct.abx500_temp* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.abx500_temp* %10, %struct.abx500_temp** %6, align 8
  %11 = load %struct.abx500_temp*, %struct.abx500_temp** %6, align 8
  %12 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.abx500_temp.0*)*, i32 (i32, %struct.abx500_temp.0*)** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.abx500_temp*, %struct.abx500_temp** %6, align 8
  %17 = bitcast %struct.abx500_temp* %16 to %struct.abx500_temp.0*
  %18 = call i32 %14(i32 %15, %struct.abx500_temp.0* %17)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %19
}

declare dso_local %struct.abx500_temp* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
