; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_i915_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_i915_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@I915_GDRST = common dso_local global i32 0, align 4
@GRDOM_RESET_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gt*, i32, i32)* @i915_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_do_reset(%struct.intel_gt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = load i32, i32* @I915_GDRST, align 4
  %17 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %18 = call i32 @pci_write_config_byte(%struct.pci_dev* %15, i32 %16, i32 %17)
  %19 = call i32 @udelay(i32 50)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = call i32 @i915_in_reset(%struct.pci_dev* %20)
  %22 = call i32 @wait_for_atomic(i32 %21, i32 50)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = load i32, i32* @I915_GDRST, align 4
  %25 = call i32 @pci_write_config_byte(%struct.pci_dev* %23, i32 %24, i32 0)
  %26 = call i32 @udelay(i32 50)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = call i32 @i915_in_reset(%struct.pci_dev* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @wait_for_atomic(i32 %34, i32 50)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29, %3
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @i915_in_reset(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
