; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen12_port_hotplug_long_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen12_port_hotplug_long_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_TC1 = common dso_local global i32 0, align 4
@PORT_TC2 = common dso_local global i32 0, align 4
@PORT_TC3 = common dso_local global i32 0, align 4
@PORT_TC4 = common dso_local global i32 0, align 4
@PORT_TC5 = common dso_local global i32 0, align 4
@PORT_TC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gen12_port_hotplug_long_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen12_port_hotplug_long_detect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %37 [
    i32 133, label %7
    i32 132, label %12
    i32 131, label %17
    i32 130, label %22
    i32 129, label %27
    i32 128, label %32
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PORT_TC1, align 4
  %10 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %9)
  %11 = and i32 %8, %10
  store i32 %11, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PORT_TC2, align 4
  %15 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %14)
  %16 = and i32 %13, %15
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PORT_TC3, align 4
  %20 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %19)
  %21 = and i32 %18, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PORT_TC4, align 4
  %25 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %24)
  %26 = and i32 %23, %25
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PORT_TC5, align 4
  %30 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %29)
  %31 = and i32 %28, %30
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PORT_TC6, align 4
  %35 = call i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32 %34)
  %36 = and i32 %33, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %27, %22, %17, %12, %7
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @GEN11_HOTPLUG_CTL_LONG_DETECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
