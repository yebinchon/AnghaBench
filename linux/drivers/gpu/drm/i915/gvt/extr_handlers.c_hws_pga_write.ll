; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_hws_pga_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_hws_pga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32*, i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"write invalid HWSP address, reg:0x%x, value:0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_NUM_ENGINES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"access unknown hardware status page register:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"VM(%d) write: 0x%x to HWSP: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @hws_pga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hws_pga_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @intel_gvt_render_mmio_to_ring_id(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %23 = call i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i8*, i32, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @I915_NUM_ENGINES, align 4
  %37 = icmp sge i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ true, %31 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i32, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %66

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %57 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @gvt_dbg_mmio(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu* %62, i32 %63, i32* %10, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %48, %43, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @intel_gvt_render_mmio_to_ring_id(i32, i32) #1

declare dso_local i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu*, i32, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gvt_dbg_mmio(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_vgpu_default_mmio_write(%struct.intel_vgpu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
