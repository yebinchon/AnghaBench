; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cami2c = type { %struct.cami2c*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh7760_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cami2c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.cami2c* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.cami2c* %5, %struct.cami2c** %3, align 8
  %6 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %7 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %6, i32 0, i32 3
  %8 = call i32 @i2c_del_adapter(i32* %7)
  %9 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %10 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.cami2c* %12)
  %14 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %15 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %19 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %18, i32 0, i32 0
  %20 = load %struct.cami2c*, %struct.cami2c** %19, align 8
  %21 = call i32 @release_resource(%struct.cami2c* %20)
  %22 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %23 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %22, i32 0, i32 0
  %24 = load %struct.cami2c*, %struct.cami2c** %23, align 8
  %25 = call i32 @kfree(%struct.cami2c* %24)
  %26 = load %struct.cami2c*, %struct.cami2c** %3, align 8
  %27 = call i32 @kfree(%struct.cami2c* %26)
  ret i32 0
}

declare dso_local %struct.cami2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.cami2c*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(%struct.cami2c*) #1

declare dso_local i32 @kfree(%struct.cami2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
