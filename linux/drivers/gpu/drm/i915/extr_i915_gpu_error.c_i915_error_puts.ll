; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_error_puts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_error_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, i8*)* @i915_error_puts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_error_puts(%struct.drm_i915_error_state_buf* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_i915_error_state_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %51

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__i915_error_grow(%struct.drm_i915_error_state_buf* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %51

22:                                               ; preds = %14
  %23 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @GEM_BUG_ON(i32 %33)
  %35 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @memcpy(i64 %41, i8* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %48 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %22, %21, %13
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__i915_error_grow(%struct.drm_i915_error_state_buf*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
