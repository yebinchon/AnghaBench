; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_mmio_diff_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_mmio_diff_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.mmio_diff_param = type { i32, i32, i32, i32 }
%struct.diff_mmio = type { i32, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*, i64, i8*)* @mmio_diff_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_diff_handler(%struct.intel_gvt* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.mmio_diff_param*, align 8
  %10 = alloca %struct.diff_mmio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %14 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.mmio_diff_param*
  store %struct.mmio_diff_param* %17, %struct.mmio_diff_param** %9, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @_MMIO(i64 %20)
  %22 = call i64 @intel_uncore_read_notrace(i32* %19, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.mmio_diff_param*, %struct.mmio_diff_param** %9, align 8
  %24 = getelementptr inbounds %struct.mmio_diff_param, %struct.mmio_diff_param* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @vgpu_vreg(i32 %25, i64 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %3
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.diff_mmio* @kmalloc(i32 32, i32 %32)
  store %struct.diff_mmio* %33, %struct.diff_mmio** %10, align 8
  %34 = load %struct.diff_mmio*, %struct.diff_mmio** %10, align 8
  %35 = icmp ne %struct.diff_mmio* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.diff_mmio*, %struct.diff_mmio** %10, align 8
  %42 = getelementptr inbounds %struct.diff_mmio, %struct.diff_mmio* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.diff_mmio*, %struct.diff_mmio** %10, align 8
  %45 = getelementptr inbounds %struct.diff_mmio, %struct.diff_mmio* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.diff_mmio*, %struct.diff_mmio** %10, align 8
  %48 = getelementptr inbounds %struct.diff_mmio, %struct.diff_mmio* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.diff_mmio*, %struct.diff_mmio** %10, align 8
  %50 = getelementptr inbounds %struct.diff_mmio, %struct.diff_mmio* %49, i32 0, i32 0
  %51 = load %struct.mmio_diff_param*, %struct.mmio_diff_param** %9, align 8
  %52 = getelementptr inbounds %struct.mmio_diff_param, %struct.mmio_diff_param* %51, i32 0, i32 2
  %53 = call i32 @list_add(i32* %50, i32* %52)
  %54 = load %struct.mmio_diff_param*, %struct.mmio_diff_param** %9, align 8
  %55 = getelementptr inbounds %struct.mmio_diff_param, %struct.mmio_diff_param* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %39, %3
  %59 = load %struct.mmio_diff_param*, %struct.mmio_diff_param** %9, align 8
  %60 = getelementptr inbounds %struct.mmio_diff_param, %struct.mmio_diff_param* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %36
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @intel_uncore_read_notrace(i32*, i32) #1

declare dso_local i32 @_MMIO(i64) #1

declare dso_local i64 @vgpu_vreg(i32, i64) #1

declare dso_local %struct.diff_mmio* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
