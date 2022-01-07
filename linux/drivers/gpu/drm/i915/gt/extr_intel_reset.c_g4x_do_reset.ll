; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_g4x_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_g4x_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore*, %struct.TYPE_4__* }
%struct.intel_uncore = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@VDECCLK_GATE_D = common dso_local global i32 0, align 4
@VCP_UNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@I915_GDRST = common dso_local global i32 0, align 4
@GRDOM_MEDIA = common dso_local global i32 0, align 4
@GRDOM_RESET_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for media reset failed\0A\00", align 1
@GRDOM_RENDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Wait for render reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gt*, i32, i32)* @g4x_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_do_reset(%struct.intel_gt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.intel_uncore*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %17, align 8
  store %struct.intel_uncore* %18, %struct.intel_uncore** %8, align 8
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %20 = load i32, i32* @VDECCLK_GATE_D, align 4
  %21 = load i32, i32* @VCP_UNIT_CLOCK_GATE_DISABLE, align 4
  %22 = call i32 @rmw_set_fw(%struct.intel_uncore* %19, i32 %20, i32 %21)
  %23 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %24 = load i32, i32* @VDECCLK_GATE_D, align 4
  %25 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %23, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = load i32, i32* @I915_GDRST, align 4
  %28 = load i32, i32* @GRDOM_MEDIA, align 4
  %29 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pci_write_config_byte(%struct.pci_dev* %26, i32 %27, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = call i32 @g4x_reset_complete(%struct.pci_dev* %32)
  %34 = call i32 @wait_for_atomic(i32 %33, i32 50)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %54

39:                                               ; preds = %3
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = load i32, i32* @I915_GDRST, align 4
  %42 = load i32, i32* @GRDOM_RENDER, align 4
  %43 = load i32, i32* @GRDOM_RESET_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 %41, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = call i32 @g4x_reset_complete(%struct.pci_dev* %46)
  %48 = call i32 @wait_for_atomic(i32 %47, i32 50)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %51, %37
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = load i32, i32* @I915_GDRST, align 4
  %57 = call i32 @pci_write_config_byte(%struct.pci_dev* %55, i32 %56, i32 0)
  %58 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %59 = load i32, i32* @VDECCLK_GATE_D, align 4
  %60 = load i32, i32* @VCP_UNIT_CLOCK_GATE_DISABLE, align 4
  %61 = call i32 @rmw_clear_fw(%struct.intel_uncore* %58, i32 %59, i32 %60)
  %62 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  %63 = load i32, i32* @VDECCLK_GATE_D, align 4
  %64 = call i32 @intel_uncore_posting_read_fw(%struct.intel_uncore* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @rmw_set_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @g4x_reset_complete(%struct.pci_dev*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @rmw_clear_fw(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
