; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@DE_MASTER_IRQ_CONTROL = common dso_local global i32 0, align 4
@SDEIER = common dso_local global i32 0, align 4
@GTIIR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DEIIR = common dso_local global i32 0, align 4
@GEN6_PMIIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ironlake_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %17 = call i32 @intel_irqs_enabled(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = call i32 @disable_rpm_wakeref_asserts(i32* %23)
  %25 = load i32, i32* @DEIER, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @DEIER, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DE_MASTER_IRQ_CONTROL, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @I915_WRITE(i32 %27, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @SDEIER, align 4
  %38 = call i32 @I915_READ(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @SDEIER, align 4
  %40 = call i32 @I915_WRITE(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32, i32* @GTIIR, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i32, i32* @GTIIR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %52 = call i32 @INTEL_GEN(%struct.drm_i915_private* %51)
  %53 = icmp sge i32 %52, 6
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 1
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gen6_gt_irq_handler(i32* %56, i32 %57)
  br label %64

59:                                               ; preds = %46
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 1
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @gen5_gt_irq_handler(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* @DEIIR, align 4
  %67 = call i32 @I915_READ(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i32, i32* @DEIIR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @I915_WRITE(i32 %71, i32 %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %76 = call i32 @INTEL_GEN(%struct.drm_i915_private* %75)
  %77 = icmp sge i32 %76, 7
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ivb_display_irq_handler(%struct.drm_i915_private* %79, i32 %80)
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @ilk_display_irq_handler(%struct.drm_i915_private* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %89 = call i32 @INTEL_GEN(%struct.drm_i915_private* %88)
  %90 = icmp sge i32 %89, 6
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* @GEN6_PMIIR, align 4
  %93 = call i32 @I915_READ(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* @GEN6_PMIIR, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @I915_WRITE(i32 %97, i32 %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @gen6_rps_irq_handler(%struct.drm_i915_private* %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %91
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i32, i32* @DEIER, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @I915_WRITE(i32 %106, i32 %107)
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %110 = call i32 @HAS_PCH_NOP(%struct.drm_i915_private* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @SDEIER, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @I915_WRITE(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %105
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %118 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %117, i32 0, i32 0
  %119 = call i32 @enable_rpm_wakeref_asserts(i32* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @intel_irqs_enabled(%struct.drm_i915_private*) #1

declare dso_local i32 @disable_rpm_wakeref_asserts(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HAS_PCH_NOP(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @gen6_gt_irq_handler(i32*, i32) #1

declare dso_local i32 @gen5_gt_irq_handler(i32*, i32) #1

declare dso_local i32 @ivb_display_irq_handler(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ilk_display_irq_handler(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @gen6_rps_irq_handler(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @enable_rpm_wakeref_asserts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
