; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen2_assert_iir_is_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen2_assert_iir_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@GEN2_IIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Interrupt register 0x%x is not zero: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*)* @gen2_assert_iir_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen2_assert_iir_is_zero(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %4 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %5 = load i32, i32* @GEN2_IIR, align 4
  %6 = call i64 @intel_uncore_read16(%struct.intel_uncore* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @GEN2_IIR, align 4
  %12 = call i32 @i915_mmio_reg_offset(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %16 = load i32, i32* @GEN2_IIR, align 4
  %17 = call i32 @intel_uncore_write16(%struct.intel_uncore* %15, i32 %16, i32 65535)
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %19 = load i32, i32* @GEN2_IIR, align 4
  %20 = call i32 @intel_uncore_posting_read16(%struct.intel_uncore* %18, i32 %19)
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %22 = load i32, i32* @GEN2_IIR, align 4
  %23 = call i32 @intel_uncore_write16(%struct.intel_uncore* %21, i32 %22, i32 65535)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %25 = load i32, i32* @GEN2_IIR, align 4
  %26 = call i32 @intel_uncore_posting_read16(%struct.intel_uncore* %24, i32 %25)
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read16(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
