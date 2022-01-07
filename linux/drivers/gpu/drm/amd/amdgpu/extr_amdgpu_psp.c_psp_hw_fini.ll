; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.psp_context }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.psp_context = type { i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@PSP_RING_TYPE__KM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @psp_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_hw_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  store %struct.psp_context* %10, %struct.psp_context** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %19 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %18, i32 0, i32 16
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %25 = call i32 @psp_xgmi_terminate(%struct.psp_context* %24)
  br label %26

26:                                               ; preds = %23, %17, %1
  %27 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %28 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %27, i32 0, i32 15
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %36 = call i32 @psp_ras_terminate(%struct.psp_context* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %39 = load i32, i32* @PSP_RING_TYPE__KM, align 4
  %40 = call i32 @psp_ring_destroy(%struct.psp_context* %38, i32 %39)
  %41 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %42 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %41, i32 0, i32 15
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = call i64 @amdgpu_sriov_vf(%struct.TYPE_10__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %46
  %49 = phi i8** [ %5, %46 ], [ null, %47 ]
  store i8** %49, i8*** %6, align 8
  %50 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %51 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %50, i32 0, i32 14
  %52 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %53 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %52, i32 0, i32 13
  %54 = load i8**, i8*** %6, align 8
  %55 = call i32 @amdgpu_bo_free_kernel(i32* %51, i32* %53, i8** %54)
  %56 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %57 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %56, i32 0, i32 12
  %58 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %59 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %58, i32 0, i32 11
  %60 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %61 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %60, i32 0, i32 0
  %62 = call i32 @amdgpu_bo_free_kernel(i32* %57, i32* %59, i8** %61)
  %63 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %64 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %63, i32 0, i32 10
  %65 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %66 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %65, i32 0, i32 9
  %67 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %68 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %67, i32 0, i32 1
  %69 = call i32 @amdgpu_bo_free_kernel(i32* %64, i32* %66, i8** %68)
  %70 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %71 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %70, i32 0, i32 8
  %72 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %73 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %72, i32 0, i32 7
  %74 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %75 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %74, i32 0, i32 2
  %76 = call i32 @amdgpu_bo_free_kernel(i32* %71, i32* %73, i8** %75)
  %77 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %78 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %77, i32 0, i32 6
  %79 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %80 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %79, i32 0, i32 5
  %81 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %82 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %81, i32 0, i32 4
  %83 = bitcast i32* %82 to i8**
  %84 = call i32 @amdgpu_bo_free_kernel(i32* %78, i32* %80, i8** %83)
  %85 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %86 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %90 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  ret i32 0
}

declare dso_local i32 @psp_xgmi_terminate(%struct.psp_context*) #1

declare dso_local i32 @psp_ras_terminate(%struct.psp_context*) #1

declare dso_local i32 @psp_ring_destroy(%struct.psp_context*, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.TYPE_10__*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i8**) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
