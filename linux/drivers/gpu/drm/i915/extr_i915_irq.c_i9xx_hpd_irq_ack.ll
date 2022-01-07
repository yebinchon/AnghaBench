; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_hpd_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_hpd_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@HOTPLUG_INT_STATUS_G4X = common dso_local global i32 0, align 4
@DP_AUX_CHANNEL_MASK_INT_STATUS_G4X = common dso_local global i32 0, align 4
@HOTPLUG_INT_STATUS_I915 = common dso_local global i32 0, align 4
@PORT_HOTPLUG_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PORT_HOTPLUG_STAT did not clear (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @i9xx_hpd_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_hpd_irq_ack(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i64 @IS_G4X(%struct.drm_i915_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %11, %1
  %20 = load i32, i32* @HOTPLUG_INT_STATUS_G4X, align 4
  %21 = load i32, i32* @DP_AUX_CHANNEL_MASK_INT_STATUS_G4X, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @HOTPLUG_INT_STATUS_I915, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %19
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @I915_WRITE(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* @PORT_HOTPLUG_STAT, align 4
  %50 = call i32 @I915_READ(i32 %49)
  %51 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %36
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
