; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_compress_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_compress_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress = type { i32 }
%struct.drm_i915_error_object = type { i32, i8** }

@ALLOW_FAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.compress*, i8*, %struct.drm_i915_error_object*)* @compress_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_page(%struct.compress* %0, i8* %1, %struct.drm_i915_error_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.compress*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_error_object*, align 8
  %8 = alloca i8*, align 8
  store %struct.compress* %0, %struct.compress** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_i915_error_object* %2, %struct.drm_i915_error_object** %7, align 8
  %9 = load %struct.compress*, %struct.compress** %5, align 8
  %10 = getelementptr inbounds %struct.compress, %struct.compress* %9, i32 0, i32 0
  %11 = load i32, i32* @ALLOW_FAIL, align 4
  %12 = call i8* @pool_alloc(i32* %10, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @i915_memcpy_from_wc(i8* %19, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i32 @memcpy(i8* %25, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %7, align 8
  %32 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %7, align 8
  %35 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  store i8* %30, i8** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i8* @pool_alloc(i32*, i32) #1

declare dso_local i32 @i915_memcpy_from_wc(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
