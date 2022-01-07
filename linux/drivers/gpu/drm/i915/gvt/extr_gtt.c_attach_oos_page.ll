; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_attach_oos_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_attach_oos_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_oos_page = type { i32, i32, %struct.intel_vgpu_ppgtt_spt*, i32 }
%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, %struct.intel_vgpu_oos_page* }
%struct.TYPE_6__ = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_oos_page*, %struct.intel_vgpu_ppgtt_spt*)* @attach_oos_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_oos_page(%struct.intel_vgpu_oos_page* %0, %struct.intel_vgpu_ppgtt_spt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu_oos_page*, align 8
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_gvt*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_vgpu_oos_page* %0, %struct.intel_vgpu_oos_page** %4, align 8
  store %struct.intel_vgpu_ppgtt_spt* %1, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %8 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  store %struct.intel_gvt* %12, %struct.intel_gvt** %6, align 8
  %13 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %26 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.TYPE_6__* %15, i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %33 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %33, i32 0, i32 2
  store %struct.intel_vgpu_ppgtt_spt* %32, %struct.intel_vgpu_ppgtt_spt** %34, align 8
  %35 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %36 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %37 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store %struct.intel_vgpu_oos_page* %35, %struct.intel_vgpu_oos_page** %38, align 8
  %39 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %39, i32 0, i32 1
  %41 = load %struct.intel_gvt*, %struct.intel_gvt** %6, align 8
  %42 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @list_move_tail(i32* %40, i32* %43)
  %45 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %54 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @trace_oos_change(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %52, %struct.intel_vgpu_ppgtt_spt* %53, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %31, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @intel_gvt_hypervisor_read_gpa(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @trace_oos_change(i32, i8*, i32, %struct.intel_vgpu_ppgtt_spt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
