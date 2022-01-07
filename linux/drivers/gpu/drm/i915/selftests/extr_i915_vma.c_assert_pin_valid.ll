; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_pin_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_pin_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32 }
%struct.pin_mode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, %struct.pin_mode*, i32)* @assert_pin_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_pin_valid(%struct.i915_vma* %0, %struct.pin_mode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.pin_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %5, align 8
  store %struct.pin_mode* %1, %struct.pin_mode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

11:                                               ; preds = %3
  %12 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %13 = load %struct.pin_mode*, %struct.pin_mode** %6, align 8
  %14 = getelementptr inbounds %struct.pin_mode, %struct.pin_mode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pin_mode*, %struct.pin_mode** %6, align 8
  %17 = getelementptr inbounds %struct.pin_mode, %struct.pin_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @i915_vma_misplaced(%struct.i915_vma* %12, i32 %15, i32 0, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %23

22:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @i915_vma_misplaced(%struct.i915_vma*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
