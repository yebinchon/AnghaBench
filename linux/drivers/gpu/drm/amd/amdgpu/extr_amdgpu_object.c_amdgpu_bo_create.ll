; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_param = type { i32, i32, i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AMDGPU_GEM_CREATE_SHADOW = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device* %0, %struct.amdgpu_bo_param* %1, %struct.amdgpu_bo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_bo_param*, align 8
  %7 = alloca %struct.amdgpu_bo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_bo_param* %1, %struct.amdgpu_bo_param** %6, align 8
  store %struct.amdgpu_bo** %2, %struct.amdgpu_bo*** %7, align 8
  %10 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AMDGPU_GEM_CREATE_SHADOW, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %22 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %23 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %24 = call i32 @amdgpu_bo_do_create(%struct.amdgpu_device* %21, %struct.amdgpu_bo_param* %22, %struct.amdgpu_bo** %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AMDGPU_GEM_CREATE_SHADOW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %29
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AMD_IS_APU, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %82, label %41

41:                                               ; preds = %34
  %42 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %47, align 8
  %49 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_resv_lock(i32 %52, i32* null)
  %54 = call i32 @WARN_ON(i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %57 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %60, align 8
  %62 = call i32 @amdgpu_bo_create_shadow(%struct.amdgpu_device* %56, i32 %59, %struct.amdgpu_bo* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %64 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %55
  %68 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %69 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %68, align 8
  %70 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dma_resv_unlock(i32 %73)
  br label %75

75:                                               ; preds = %67, %55
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  %80 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %34, %29
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %27
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @amdgpu_bo_do_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_resv_lock(i32, i32*) #1

declare dso_local i32 @amdgpu_bo_create_shadow(%struct.amdgpu_device*, i32, %struct.amdgpu_bo*) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
