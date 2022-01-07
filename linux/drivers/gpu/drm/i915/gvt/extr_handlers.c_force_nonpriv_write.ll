; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_force_nonpriv_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_force_nonpriv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vgpu(%d) ring %d Invalid FORCE_NONPRIV offset %x(%dB)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"vgpu(%d) Invalid FORCE_NONPRIV write %x at offset %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @force_nonpriv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_nonpriv_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_i915_private*, align 8
  %14 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @intel_gvt_render_mmio_to_ring_id(%struct.TYPE_4__* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %26, align 8
  store %struct.drm_i915_private* %27, %struct.drm_i915_private** %13, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub i32 %34, 1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %32, %4
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, i32, i32, i32, ...) @gvt_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %83

50:                                               ; preds = %38
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @in_whitelist(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @RING_NOPID(i32 %65)
  %67 = call i32 @i915_mmio_reg_offset(i32 %66)
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %50
  %70 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu* %70, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  br label %82

75:                                               ; preds = %63
  %76 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %77 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, i32, i32, i32, ...) @gvt_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %69
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %41
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @intel_gvt_render_mmio_to_ring_id(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gvt_err(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @in_whitelist(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @RING_NOPID(i32) #1

declare dso_local i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
