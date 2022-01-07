; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }
%struct.i915_wa_list = type { i32, i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*, %struct.i915_wa_list*, i8*)* @wa_list_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_list_verify(%struct.intel_uncore* %0, %struct.i915_wa_list* %1, i8* %2) #0 {
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca %struct.i915_wa_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i915_wa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %4, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %11 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %10, i32 0, i32 2
  %12 = load %struct.i915_wa*, %struct.i915_wa** %11, align 8
  store %struct.i915_wa* %12, %struct.i915_wa** %7, align 8
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %16 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %22 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %23 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @intel_uncore_read(%struct.intel_uncore* %21, i32 %24)
  %26 = load %struct.i915_wa_list*, %struct.i915_wa_list** %5, align 8
  %27 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @wa_verify(%struct.i915_wa* %20, i32 %25, i32 %28, i8* %29)
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i915_wa*, %struct.i915_wa** %7, align 8
  %37 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %36, i32 1
  store %struct.i915_wa* %37, %struct.i915_wa** %7, align 8
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @wa_verify(%struct.i915_wa*, i32, i32, i8*) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
