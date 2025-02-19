; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_wa = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"%s workaround lost on %s! (%x=%x/%x, expected %x, mask=%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_wa*, i32, i8*, i8*)* @wa_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_verify(%struct.i915_wa* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_wa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.i915_wa* %0, %struct.i915_wa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %12 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %10, %13
  %15 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %16 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %24 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @i915_mmio_reg_offset(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %30 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %34 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i915_wa*, %struct.i915_wa** %6, align 8
  %37 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i32 %26, i32 %27, i32 %32, i32 %35, i32 %38)
  store i32 0, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @DRM_ERROR(i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
