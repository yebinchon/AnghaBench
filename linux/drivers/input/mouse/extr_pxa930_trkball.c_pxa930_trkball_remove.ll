; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa930_trkball = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa930_trkball_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa930_trkball_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pxa930_trkball*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.pxa930_trkball* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.pxa930_trkball* %6, %struct.pxa930_trkball** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_get_irq(%struct.platform_device* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %3, align 8
  %10 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @input_unregister_device(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.pxa930_trkball* %14)
  %16 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %3, align 8
  %17 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iounmap(i32 %18)
  %20 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %3, align 8
  %21 = call i32 @kfree(%struct.pxa930_trkball* %20)
  ret i32 0
}

declare dso_local %struct.pxa930_trkball* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @free_irq(i32, %struct.pxa930_trkball*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.pxa930_trkball*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
