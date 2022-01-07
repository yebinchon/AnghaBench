; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@wait = common dso_local global i32 0, align 4
@GMBUS4 = common dso_local global i32 0, align 4
@GMBUS_SATOER = common dso_local global i32 0, align 4
@GMBUS2 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32)* @gmbus_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_wait(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = call i32 @HAS_GMBUS_IRQ(%struct.drm_i915_private* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = call i32 @add_wait_queue(i32* %18, i32* @wait)
  %20 = load i32, i32* @GMBUS4, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @I915_WRITE_FW(i32 %20, i32 %21)
  %23 = load i32, i32* @GMBUS_SATOER, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @GMBUS2, align 4
  %27 = call i32 @I915_READ_FW(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @wait_for_us(i32 %29, i32 2)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %16
  %34 = load i32, i32* @GMBUS2, align 4
  %35 = call i32 @I915_READ_FW(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @wait_for(i32 %37, i32 50)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %16
  %40 = load i32, i32* @GMBUS4, align 4
  %41 = call i32 @I915_WRITE_FW(i32 %40, i32 0)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = call i32 @remove_wait_queue(i32* %43, i32* @wait)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @GMBUS_SATOER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @HAS_GMBUS_IRQ(%struct.drm_i915_private*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @wait_for_us(i32, i32) #1

declare dso_local i32 @I915_READ_FW(i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
