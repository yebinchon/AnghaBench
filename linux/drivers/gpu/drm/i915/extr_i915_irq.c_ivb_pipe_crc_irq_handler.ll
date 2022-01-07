; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ivb_pipe_crc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ivb_pipe_crc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @ivb_pipe_crc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_pipe_crc_irq_handler(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @PIPE_CRC_RES_1_IVB(i32 %7)
  %9 = call i32 @I915_READ(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PIPE_CRC_RES_2_IVB(i32 %10)
  %12 = call i32 @I915_READ(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PIPE_CRC_RES_3_IVB(i32 %13)
  %15 = call i32 @I915_READ(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @PIPE_CRC_RES_4_IVB(i32 %16)
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @PIPE_CRC_RES_5_IVB(i32 %19)
  %21 = call i32 @I915_READ(i32 %20)
  %22 = call i32 @display_pipe_crc_irq_handler(%struct.drm_i915_private* %5, i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @display_pipe_crc_irq_handler(%struct.drm_i915_private*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPE_CRC_RES_1_IVB(i32) #1

declare dso_local i32 @PIPE_CRC_RES_2_IVB(i32) #1

declare dso_local i32 @PIPE_CRC_RES_3_IVB(i32) #1

declare dso_local i32 @PIPE_CRC_RES_4_IVB(i32) #1

declare dso_local i32 @PIPE_CRC_RES_5_IVB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
