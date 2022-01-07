; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_opregion_base_write_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_intel_vgpu_opregion_base_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"emulate opregion from kernel\0A\00", align 1
@intel_gvt_host = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@INTEL_GVT_OPREGION_PAGES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"not supported hypervisor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_opregion_base_write_handler(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_gvt_host, i32 0, i32 0), align 4
  switch i32 %8, label %64 [
    i32 129, label %9
    i32 128, label %31
  ]

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INTEL_GVT_OPREGION_PAGES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %21 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %19, i32* %26, align 4
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %10

30:                                               ; preds = %10
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %33 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %39 = call i32 @map_vgpu_opregion(%struct.intel_vgpu* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %31
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @INTEL_GVT_OPREGION_PAGES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %52 = call %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu* %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %41

61:                                               ; preds = %41
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %63 = call i32 @map_vgpu_opregion(%struct.intel_vgpu* %62, i32 1)
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %2
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  %67 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %61, %30
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @gvt_dbg_core(i8*) #1

declare dso_local %struct.TYPE_3__* @vgpu_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @map_vgpu_opregion(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
