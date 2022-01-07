; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_alloc_memory_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_alloc_memory_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_table_context, %struct.amdgpu_device* }
%struct.smu_table_context = type { %struct.smu_table }
%struct.smu_table = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@SMU_MEMORY_POOL_SIZE_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_alloc_memory_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_alloc_memory_pool(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.smu_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %9 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  %12 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 1
  store %struct.smu_table_context* %13, %struct.smu_table_context** %5, align 8
  %14 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %15 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %14, i32 0, i32 0
  store %struct.smu_table* %15, %struct.smu_table** %6, align 8
  %16 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SMU_MEMORY_POOL_SIZE_ZERO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %27 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %30 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %32 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %33 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %53 [
    i32 130, label %35
    i32 128, label %35
    i32 131, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %24, %24, %24, %24
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %38 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %41 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %44 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %47 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %46, i32 0, i32 3
  %48 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %49 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %48, i32 0, i32 2
  %50 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %51 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %50, i32 0, i32 1
  %52 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %36, i32 %39, i32 %42, i32 %45, i32* %47, i32* %49, i32* %51)
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
