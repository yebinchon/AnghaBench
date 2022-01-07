; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_disable_pipestat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_disable_pipestat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32*, i32 }

@PIPESTAT_INT_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pipe %c: status_mask=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_disable_pipestat(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PIPESTAT(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PIPESTAT_INT_STATUS_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pipe_name(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @WARN_ONCE(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i32 @intel_irqs_enabled(%struct.drm_i915_private* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %60

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %41
  store i32 %49, i32* %47, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @i915_pipestat_enable_mask(%struct.drm_i915_private* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @I915_WRITE(i32 %53, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @POSTING_READ(i32 %58)
  br label %60

60:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @PIPESTAT(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_irqs_enabled(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_pipestat_enable_mask(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
