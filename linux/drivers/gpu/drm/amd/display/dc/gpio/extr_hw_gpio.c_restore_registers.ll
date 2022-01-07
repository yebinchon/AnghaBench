; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_restore_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_hw_gpio.c_restore_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MASK_reg = common dso_local global i32 0, align 4
@MASK = common dso_local global i32 0, align 4
@A_reg = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@EN_reg = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_gpio*)* @restore_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_registers(%struct.hw_gpio* %0) #0 {
  %2 = alloca %struct.hw_gpio*, align 8
  store %struct.hw_gpio* %0, %struct.hw_gpio** %2, align 8
  %3 = load i32, i32* @MASK_reg, align 4
  %4 = load i32, i32* @MASK, align 4
  %5 = load %struct.hw_gpio*, %struct.hw_gpio** %2, align 8
  %6 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @REG_UPDATE(i32 %3, i32 %4, i32 %8)
  %10 = load i32, i32* @A_reg, align 4
  %11 = load i32, i32* @A, align 4
  %12 = load %struct.hw_gpio*, %struct.hw_gpio** %2, align 8
  %13 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 %15)
  %17 = load i32, i32* @EN_reg, align 4
  %18 = load i32, i32* @EN, align 4
  %19 = load %struct.hw_gpio*, %struct.hw_gpio** %2, align 8
  %20 = getelementptr inbounds %struct.hw_gpio, %struct.hw_gpio* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 %22)
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
