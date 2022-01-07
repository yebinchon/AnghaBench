; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_pass1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_pass1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.amdgpu_bo_va_mapping = type { i32 }
%struct.amdgpu_bo = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Can't find BO for addr 0x%08Lx\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*)* @amdgpu_uvd_cs_pass1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_pass1(%struct.amdgpu_uvd_cs_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %4 = alloca %struct.ttm_operation_ctx, align 4
  %5 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %11 = bitcast %struct.ttm_operation_ctx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %13 = call i32 @amdgpu_uvd_get_addr_from_ctx(%struct.amdgpu_uvd_cs_ctx* %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @amdgpu_cs_find_mapping(%struct.TYPE_7__* %16, i32 %17, %struct.amdgpu_bo** %6, %struct.amdgpu_bo_va_mapping** %5)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %25
  %36 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @amdgpu_get_ib_value(%struct.TYPE_7__* %38, i32 %41, i32 %44)
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %35
  %53 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %59 = call i32 @amdgpu_uvd_force_into_uvd_segment(%struct.amdgpu_bo* %58)
  %60 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %60, i32 0, i32 1
  %62 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %62, i32 0, i32 0
  %64 = call i32 @ttm_bo_validate(i32* %61, i32* %63, %struct.ttm_operation_ctx* %4)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %57, %25
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_uvd_get_addr_from_ctx(%struct.amdgpu_uvd_cs_ctx*) #2

declare dso_local i32 @amdgpu_cs_find_mapping(%struct.TYPE_7__*, i32, %struct.amdgpu_bo**, %struct.amdgpu_bo_va_mapping**) #2

declare dso_local i32 @DRM_ERROR(i8*, i32) #2

declare dso_local i32 @amdgpu_get_ib_value(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #2

declare dso_local i32 @amdgpu_uvd_force_into_uvd_segment(%struct.amdgpu_bo*) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32*, %struct.ttm_operation_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
