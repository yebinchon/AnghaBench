; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_reserve_mem_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_reserve_mem_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }
%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@amdgpu_amdkfd_total_mem_size = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@kfd_mem_limit = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i64, i64, i32)* @amdgpu_amdkfd_reserve_mem_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_amdkfd_reserve_mem_limit(%struct.amdgpu_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @amdgpu_amdkfd_total_mem_size, align 4
  %16 = ashr i32 %15, 9
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ttm_bo_dma_acc_size(i32* %20, i64 %21, i32 4)
  store i64 %22, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @AMDGPU_GEM_DOMAIN_GTT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %11, align 8
  br label %55

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @AMDGPU_GEM_DOMAIN_CPU, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %11, align 8
  br label %54

45:                                               ; preds = %37, %33
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @AMDGPU_GEM_DOMAIN_VRAM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %26
  %56 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 4))
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 0), align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 1), align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %82, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 2), align 8
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 3), align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %78, %79
  %81 = icmp ugt i64 %74, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %68, %62, %55
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %98

85:                                               ; preds = %68
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 0), align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 0), align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 2), align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 2), align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %92
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %85, %82
  %99 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kfd_mem_limit, i32 0, i32 4))
  %100 = load i32, i32* %14, align 4
  ret i32 %100
}

declare dso_local i64 @ttm_bo_dma_acc_size(i32*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
