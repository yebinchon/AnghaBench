; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_init_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_init_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_wa_list = type { i32, i32, i32, i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }

@WA_LIST_CHUNK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Initialized %u %s workarounds on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_wa_list*)* @wa_init_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_init_finish(%struct.i915_wa_list* %0) #0 {
  %2 = alloca %struct.i915_wa_list*, align 8
  %3 = alloca %struct.i915_wa*, align 8
  store %struct.i915_wa_list* %0, %struct.i915_wa_list** %2, align 8
  %4 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %5 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WA_LIST_CHUNK, align 4
  %8 = call i32 @IS_ALIGNED(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %12 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %11, i32 0, i32 4
  %13 = load %struct.i915_wa*, %struct.i915_wa** %12, align 8
  %14 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %15 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.i915_wa* @kmemdup(%struct.i915_wa* %13, i32 %19, i32 %20)
  store %struct.i915_wa* %21, %struct.i915_wa** %3, align 8
  %22 = load %struct.i915_wa*, %struct.i915_wa** %3, align 8
  %23 = icmp ne %struct.i915_wa* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %10
  %25 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %26 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %25, i32 0, i32 4
  %27 = load %struct.i915_wa*, %struct.i915_wa** %26, align 8
  %28 = call i32 @kfree(%struct.i915_wa* %27)
  %29 = load %struct.i915_wa*, %struct.i915_wa** %3, align 8
  %30 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %31 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %30, i32 0, i32 4
  store %struct.i915_wa* %29, %struct.i915_wa** %31, align 8
  br label %32

32:                                               ; preds = %24, %10
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %35 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %50

39:                                               ; preds = %33
  %40 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %41 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %44 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.i915_wa_list*, %struct.i915_wa_list** %2, align 8
  %47 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.i915_wa* @kmemdup(%struct.i915_wa*, i32, i32) #1

declare dso_local i32 @kfree(%struct.i915_wa*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
