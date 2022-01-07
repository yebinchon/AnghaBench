; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_init_gtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_init_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.intel_vgpu_gtt }
%struct.intel_vgpu_gtt = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fail to create mm for ggtt.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_init_gtt(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_gtt*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %5 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %6 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %5, i32 0, i32 0
  store %struct.intel_vgpu_gtt* %6, %struct.intel_vgpu_gtt** %4, align 8
  %7 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %7, i32 0, i32 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @INIT_RADIX_TREE(i32* %8, i32 %9)
  %11 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %11, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %21 = call %struct.TYPE_6__* @intel_vgpu_create_ggtt_mm(%struct.intel_vgpu* %20)
  %22 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %22, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i64 @IS_ERR(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.TYPE_6__* %33)
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %1
  %36 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %37 = call i32 @intel_vgpu_reset_ggtt(%struct.intel_vgpu* %36, i32 0)
  %38 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %4, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %45 = call i32 @create_scratch_page_tree(%struct.intel_vgpu* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_6__* @intel_vgpu_create_ggtt_mm(%struct.intel_vgpu*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @intel_vgpu_reset_ggtt(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @create_scratch_page_tree(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
