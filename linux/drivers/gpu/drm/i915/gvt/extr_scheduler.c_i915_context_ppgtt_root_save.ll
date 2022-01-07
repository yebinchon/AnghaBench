; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_i915_context_ppgtt_root_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_i915_context_ppgtt_root_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_submission = type { i8**, i8* }
%struct.i915_ppgtt = type { %struct.i915_page_directory*, i32 }
%struct.i915_page_directory = type { i32 }

@GEN8_3LVL_PDPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_submission*, %struct.i915_ppgtt*)* @i915_context_ppgtt_root_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_context_ppgtt_root_save(%struct.intel_vgpu_submission* %0, %struct.i915_ppgtt* %1) #0 {
  %3 = alloca %struct.intel_vgpu_submission*, align 8
  %4 = alloca %struct.i915_ppgtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_page_directory*, align 8
  store %struct.intel_vgpu_submission* %0, %struct.intel_vgpu_submission** %3, align 8
  store %struct.i915_ppgtt* %1, %struct.i915_ppgtt** %4, align 8
  %7 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %8 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %7, i32 0, i32 1
  %9 = call i64 @i915_vm_is_4lvl(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %13 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %12, i32 0, i32 0
  %14 = load %struct.i915_page_directory*, %struct.i915_page_directory** %13, align 8
  %15 = call i8* @px_dma(%struct.i915_page_directory* %14)
  %16 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %3, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %41

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %25 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %24, i32 0, i32 0
  %26 = load %struct.i915_page_directory*, %struct.i915_page_directory** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.i915_page_directory* @i915_pd_entry(%struct.i915_page_directory* %26, i32 %27)
  store %struct.i915_page_directory* %28, %struct.i915_page_directory** %6, align 8
  %29 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %30 = call i8* @px_dma(%struct.i915_page_directory* %29)
  %31 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %3, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %30, i8** %36, align 8
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40, %11
  ret void
}

declare dso_local i64 @i915_vm_is_4lvl(i32*) #1

declare dso_local i8* @px_dma(%struct.i915_page_directory*) #1

declare dso_local %struct.i915_page_directory* @i915_pd_entry(%struct.i915_page_directory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
