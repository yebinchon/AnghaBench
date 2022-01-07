; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dcn10/extr_hw_factory_dcn10.c_define_generic_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dcn10/extr_hw_factory_dcn10.c_define_generic_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hw_gpio_pin = type { i32 }
%struct.hw_generic = type { %struct.TYPE_3__, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32* }

@generic_regs = common dso_local global %struct.TYPE_4__* null, align 8
@generic_shift = common dso_local global i32* null, align 8
@generic_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_gpio_pin*, i64)* @define_generic_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_generic_registers(%struct.hw_gpio_pin* %0, i64 %1) #0 {
  %3 = alloca %struct.hw_gpio_pin*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hw_generic*, align 8
  store %struct.hw_gpio_pin* %0, %struct.hw_gpio_pin** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hw_gpio_pin*, %struct.hw_gpio_pin** %3, align 8
  %7 = call %struct.hw_generic* @HW_GENERIC_FROM_BASE(%struct.hw_gpio_pin* %6)
  store %struct.hw_generic* %7, %struct.hw_generic** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @generic_regs, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = load %struct.hw_generic*, %struct.hw_generic** %5, align 8
  %12 = getelementptr inbounds %struct.hw_generic, %struct.hw_generic* %11, i32 0, i32 3
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %12, align 8
  %13 = load i32*, i32** @generic_shift, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load %struct.hw_generic*, %struct.hw_generic** %5, align 8
  %17 = getelementptr inbounds %struct.hw_generic, %struct.hw_generic* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** @generic_mask, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load %struct.hw_generic*, %struct.hw_generic** %5, align 8
  %22 = getelementptr inbounds %struct.hw_generic, %struct.hw_generic* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @generic_regs, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.hw_generic*, %struct.hw_generic** %5, align 8
  %28 = getelementptr inbounds %struct.hw_generic, %struct.hw_generic* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  ret void
}

declare dso_local %struct.hw_generic* @HW_GENERIC_FROM_BASE(%struct.hw_gpio_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
