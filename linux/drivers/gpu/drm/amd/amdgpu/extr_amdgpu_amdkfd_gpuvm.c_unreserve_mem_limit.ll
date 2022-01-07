; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_unreserve_mem_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_unreserve_mem_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@kfd_mem_limit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"kfd VRAM memory accounting unbalanced\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"kfd system memory accounting unbalanced\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"kfd TTM memory accounting unbalanced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64, i32)* @unreserve_mem_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unreserve_mem_limit(%struct.amdgpu_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @ttm_bo_dma_acc_size(i32* %12, i64 %13, i32 4)
  store i64 %14, i64* %9, align 8
  %15 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 2))
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @AMDGPU_GEM_DOMAIN_GTT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  br label %72

30:                                               ; preds = %4
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @AMDGPU_GEM_DOMAIN_CPU, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  br label %71

46:                                               ; preds = %34, %30
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @AMDGPU_GEM_DOMAIN_VRAM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %46
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ONCE(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %56, %46
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %19
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 0), align 8
  %74 = icmp slt i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ONCE(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 1), align 8
  %78 = icmp slt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ONCE(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kfd_mem_limit, i32 0, i32 2))
  ret void
}

declare dso_local i64 @ttm_bo_dma_acc_size(i32*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
