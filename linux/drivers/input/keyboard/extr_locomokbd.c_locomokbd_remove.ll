; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo_dev = type { i32, i64, i32* }
%struct.locomokbd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.locomo_dev*)* @locomokbd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomokbd_remove(%struct.locomo_dev* %0) #0 {
  %2 = alloca %struct.locomo_dev*, align 8
  %3 = alloca %struct.locomokbd*, align 8
  store %struct.locomo_dev* %0, %struct.locomo_dev** %2, align 8
  %4 = load %struct.locomo_dev*, %struct.locomo_dev** %2, align 8
  %5 = call %struct.locomokbd* @locomo_get_drvdata(%struct.locomo_dev* %4)
  store %struct.locomokbd* %5, %struct.locomokbd** %3, align 8
  %6 = load %struct.locomo_dev*, %struct.locomo_dev** %2, align 8
  %7 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.locomokbd*, %struct.locomokbd** %3, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.locomokbd* %11)
  %13 = load %struct.locomokbd*, %struct.locomokbd** %3, align 8
  %14 = getelementptr inbounds %struct.locomokbd, %struct.locomokbd* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.locomokbd*, %struct.locomokbd** %3, align 8
  %17 = getelementptr inbounds %struct.locomokbd, %struct.locomokbd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @input_unregister_device(i32 %18)
  %20 = load %struct.locomo_dev*, %struct.locomo_dev** %2, align 8
  %21 = call i32 @locomo_set_drvdata(%struct.locomo_dev* %20, i32* null)
  %22 = load %struct.locomo_dev*, %struct.locomo_dev** %2, align 8
  %23 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.locomo_dev*, %struct.locomo_dev** %2, align 8
  %26 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @release_mem_region(i64 %24, i32 %27)
  %29 = load %struct.locomokbd*, %struct.locomokbd** %3, align 8
  %30 = call i32 @kfree(%struct.locomokbd* %29)
  ret i32 0
}

declare dso_local %struct.locomokbd* @locomo_get_drvdata(%struct.locomo_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.locomokbd*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @locomo_set_drvdata(%struct.locomo_dev*, i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.locomokbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
