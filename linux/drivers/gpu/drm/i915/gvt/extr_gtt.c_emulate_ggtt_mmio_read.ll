; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_emulate_ggtt_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_emulate_ggtt_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.intel_gvt_device_info }
%struct.intel_gvt_device_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.intel_vgpu_mm* }
%struct.intel_vgpu_mm = type { i32 }
%struct.intel_gvt_gtt_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"read invalid ggtt at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @emulate_ggtt_mmio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_ggtt_mmio_read(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_mm*, align 8
  %11 = alloca %struct.intel_gvt_device_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.intel_gvt_gtt_entry, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %17, align 8
  store %struct.intel_vgpu_mm* %18, %struct.intel_vgpu_mm** %10, align 8
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.intel_gvt_device_info* %22, %struct.intel_gvt_device_info** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %11, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = lshr i32 %23, %26
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %71

37:                                               ; preds = %31, %4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @I915_GTT_PAGE_SHIFT, align 8
  %40 = shl i64 %38, %39
  store i64 %40, i64* %13, align 8
  %41 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @I915_GTT_PAGE_SHIFT, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 1, %44
  %46 = call i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu* %41, i64 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @gvt_dbg_mm(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @memset(i8* %51, i32 0, i32 %52)
  store i32 0, i32* %5, align 4
  br label %71

54:                                               ; preds = %37
  %55 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @ggtt_get_guest_entry(%struct.intel_vgpu_mm* %55, %struct.intel_gvt_gtt_entry* %14, i64 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %14, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %11, align 8
  %63 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %61, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr i8, i8* %60, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @memcpy(i8* %58, i8* %68, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %54, %48, %34
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu*, i64, i32) #1

declare dso_local i32 @gvt_dbg_mm(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ggtt_get_guest_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
