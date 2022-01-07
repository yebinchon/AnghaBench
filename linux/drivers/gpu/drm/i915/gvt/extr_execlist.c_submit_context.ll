; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_submit_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_submit_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.intel_vgpu_submission }
%struct.intel_vgpu_submission = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.execlist_ctx_descriptor_format = type { i32 }
%struct.intel_vgpu_workload = type { i32, i32, i32, i32 }

@prepare_execlist_workload = common dso_local global i32 0, align 4
@complete_execlist_workload = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"workload %p emulate schedule_in %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, %struct.execlist_ctx_descriptor_format*, i32)* @submit_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_context(%struct.intel_vgpu* %0, i32 %1, %struct.execlist_ctx_descriptor_format* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.execlist_ctx_descriptor_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu_submission*, align 8
  %11 = alloca %struct.intel_vgpu_workload*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.execlist_ctx_descriptor_format* %2, %struct.execlist_ctx_descriptor_format** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 0
  store %struct.intel_vgpu_submission* %13, %struct.intel_vgpu_submission** %10, align 8
  store %struct.intel_vgpu_workload* null, %struct.intel_vgpu_workload** %11, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %8, align 8
  %17 = call %struct.intel_vgpu_workload* @intel_vgpu_create_workload(%struct.intel_vgpu* %14, i32 %15, %struct.execlist_ctx_descriptor_format* %16)
  store %struct.intel_vgpu_workload* %17, %struct.intel_vgpu_workload** %11, align 8
  %18 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %19 = call i64 @IS_ERR(%struct.intel_vgpu_workload* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %23 = call i32 @PTR_ERR(%struct.intel_vgpu_workload* %22)
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %4
  %25 = load i32, i32* @prepare_execlist_workload, align 4
  %26 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @complete_execlist_workload, align 4
  %29 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %10, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %36, %24
  %48 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @gvt_dbg_el(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.intel_vgpu_workload* %48, i32 %49)
  %51 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %11, align 8
  %52 = call i32 @intel_vgpu_queue_workload(%struct.intel_vgpu_workload* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.intel_vgpu_workload* @intel_vgpu_create_workload(%struct.intel_vgpu*, i32, %struct.execlist_ctx_descriptor_format*) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @gvt_dbg_el(i8*, %struct.intel_vgpu_workload*, i32) #1

declare dso_local i32 @intel_vgpu_queue_workload(%struct.intel_vgpu_workload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
