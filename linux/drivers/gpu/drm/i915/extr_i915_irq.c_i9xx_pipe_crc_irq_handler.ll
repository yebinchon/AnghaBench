; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_pipe_crc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i9xx_pipe_crc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @i9xx_pipe_crc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_pipe_crc_irq_handler(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sge i32 %8, 3
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PIPE_CRC_RES_RES1_I915(i32 %11)
  %13 = call i64 @I915_READ(i32 %12)
  store i64 %13, i64* %5, align 8
  br label %15

14:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %14, %10
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 5
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i64 @IS_G4X(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @PIPE_CRC_RES_RES2_G4X(i32 %24)
  %26 = call i64 @I915_READ(i32 %25)
  store i64 %26, i64* %6, align 8
  br label %28

27:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @PIPE_CRC_RES_RED(i32 %31)
  %33 = call i64 @I915_READ(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @PIPE_CRC_RES_GREEN(i32 %34)
  %36 = call i64 @I915_READ(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @PIPE_CRC_RES_BLUE(i32 %37)
  %39 = call i64 @I915_READ(i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @display_pipe_crc_irq_handler(%struct.drm_i915_private* %29, i32 %30, i64 %33, i64 %36, i64 %39, i64 %40, i64 %41)
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @PIPE_CRC_RES_RES1_I915(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @PIPE_CRC_RES_RES2_G4X(i32) #1

declare dso_local i32 @display_pipe_crc_irq_handler(%struct.drm_i915_private*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PIPE_CRC_RES_RED(i32) #1

declare dso_local i32 @PIPE_CRC_RES_GREEN(i32) #1

declare dso_local i32 @PIPE_CRC_RES_BLUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
