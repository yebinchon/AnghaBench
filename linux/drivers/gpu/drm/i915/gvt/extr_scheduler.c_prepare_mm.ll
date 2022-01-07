; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_prepare_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_prepare_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { %struct.intel_vgpu_mm*, %struct.intel_vgpu*, i32, %struct.execlist_ctx_descriptor_format }
%struct.intel_vgpu_mm = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.execlist_ctx_descriptor_format = type { i32 }

@GVT_RING_CTX_NR_PDPS = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_ROOT_L3_ENTRY = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_ROOT_L4_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Advanced Context mode(SVM) is not supported!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_workload*)* @prepare_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_mm(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca %struct.execlist_ctx_descriptor_format*, align 8
  %5 = alloca %struct.intel_vgpu_mm*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  %11 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %11, i32 0, i32 3
  store %struct.execlist_ctx_descriptor_format* %12, %struct.execlist_ctx_descriptor_format** %4, align 8
  %13 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %13, i32 0, i32 1
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %14, align 8
  store %struct.intel_vgpu* %15, %struct.intel_vgpu** %6, align 8
  %16 = load i32, i32* @GVT_RING_CTX_NR_PDPS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %4, align 8
  %21 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %27 [
    i32 1, label %23
    i32 3, label %25
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @GTT_TYPE_PPGTT_ROOT_L3_ENTRY, align 4
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @GTT_TYPE_PPGTT_ROOT_L4_ENTRY, align 4
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %1
  %28 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %55

31:                                               ; preds = %25, %23
  %32 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %32, i32 0, i32 1
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %33, align 8
  %35 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast i32* %19 to i8*
  %39 = call i32 @read_guest_pdps(%struct.intel_vgpu* %34, i32 %37, i8* %38)
  %40 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %40, i32 0, i32 1
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.intel_vgpu_mm* @intel_vgpu_get_ppgtt_mm(%struct.intel_vgpu* %42, i32 %43, i32* %19)
  store %struct.intel_vgpu_mm* %44, %struct.intel_vgpu_mm** %5, align 8
  %45 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %46 = call i64 @IS_ERR(%struct.intel_vgpu_mm* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.intel_vgpu_mm* %49)
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %55

51:                                               ; preds = %31
  %52 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %53 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %53, i32 0, i32 0
  store %struct.intel_vgpu_mm* %52, %struct.intel_vgpu_mm** %54, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %48, %27
  %56 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gvt_vgpu_err(i8*) #2

declare dso_local i32 @read_guest_pdps(%struct.intel_vgpu*, i32, i8*) #2

declare dso_local %struct.intel_vgpu_mm* @intel_vgpu_get_ppgtt_mm(%struct.intel_vgpu*, i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_mm*) #2

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu_mm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
