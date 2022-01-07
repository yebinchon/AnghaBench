; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_vlv_power_well_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_vlv_power_well_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PUNIT_REG_PWRGT_STATUS = common dso_local global i32 0, align 4
@PUNIT_REG_PWRGT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_power_well*)* @vlv_power_well_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_power_well_enabled(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %10 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %11 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PUNIT_PWRGT_MASK(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PUNIT_PWRGT_PWR_ON(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @vlv_punit_get(%struct.drm_i915_private* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* @PUNIT_REG_PWRGT_STATUS, align 4
  %24 = call i32 @vlv_punit_read(%struct.drm_i915_private* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @PUNIT_PWRGT_PWR_ON(i32 %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PUNIT_PWRGT_PWR_GATE(i32 %33)
  %35 = icmp ne i32 %32, %34
  br label %36

36:                                               ; preds = %31, %2
  %37 = phi i1 [ false, %2 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = load i32, i32* @PUNIT_REG_PWRGT_CTRL, align 4
  %47 = call i32 @vlv_punit_read(%struct.drm_i915_private* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i32 @vlv_punit_put(%struct.drm_i915_private* %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @PUNIT_PWRGT_MASK(i32) #1

declare dso_local i32 @PUNIT_PWRGT_PWR_ON(i32) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PUNIT_PWRGT_PWR_GATE(i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
