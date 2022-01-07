; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_elsp_mmio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_elsp_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.intel_vgpu_execlist* }
%struct.intel_vgpu_execlist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@I915_NUM_ENGINES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fail submit workload on ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @elsp_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elsp_mmio_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_vgpu_execlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @intel_gvt_render_mmio_to_ring_id(i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @I915_NUM_ENGINES, align 4
  %27 = icmp sge i32 %25, %26
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i1 [ true, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %28
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %40, i64 %42
  store %struct.intel_vgpu_execlist* %43, %struct.intel_vgpu_execlist** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %11, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %11, align 8
  %50 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 3, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %48, i64 %54
  store i32 %44, i32* %55, align 4
  %56 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %11, align 8
  %57 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %71

61:                                               ; preds = %36
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @intel_vgpu_submit_execlist(%struct.intel_vgpu* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %36
  %72 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %11, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %11, align 8
  %78 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 3
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71, %33
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @intel_gvt_render_mmio_to_ring_id(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_vgpu_submit_execlist(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
