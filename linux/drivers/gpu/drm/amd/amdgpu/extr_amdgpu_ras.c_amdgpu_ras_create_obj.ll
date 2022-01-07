; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_create_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_create_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ras_manager = type { i32, %struct.amdgpu_device*, %struct.ras_common_if }
%struct.ras_common_if = type { i64 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32, %struct.ras_manager* }

@AMDGPU_RAS_BLOCK_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ras_manager* (%struct.amdgpu_device*, %struct.ras_common_if*)* @amdgpu_ras_create_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ras_manager* @amdgpu_ras_create_obj(%struct.amdgpu_device* %0, %struct.ras_common_if* %1) #0 {
  %3 = alloca %struct.ras_manager*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.amdgpu_ras*, align 8
  %7 = alloca %struct.ras_manager*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.ras_common_if* %1, %struct.ras_common_if** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %8)
  store %struct.amdgpu_ras* %9, %struct.amdgpu_ras** %6, align 8
  %10 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %11 = icmp ne %struct.amdgpu_ras* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %15 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AMDGPU_RAS_BLOCK_COUNT, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %49

20:                                               ; preds = %13
  %21 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %21, i32 0, i32 1
  %23 = load %struct.ras_manager*, %struct.ras_manager** %22, align 8
  %24 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %25 = getelementptr inbounds %struct.ras_common_if, %struct.ras_common_if* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %23, i64 %26
  store %struct.ras_manager* %27, %struct.ras_manager** %7, align 8
  %28 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %29 = call i64 @alive_obj(%struct.ras_manager* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store %struct.ras_manager* null, %struct.ras_manager** %3, align 8
  br label %49

32:                                               ; preds = %20
  %33 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %34 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %33, i32 0, i32 2
  %35 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %36 = bitcast %struct.ras_common_if* %34 to i8*
  %37 = bitcast %struct.ras_common_if* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %39 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %40 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %39, i32 0, i32 1
  store %struct.amdgpu_device* %38, %struct.amdgpu_device** %40, align 8
  %41 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %42 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %41, i32 0, i32 0
  %43 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %43, i32 0, i32 0
  %45 = call i32 @list_add(i32* %42, i32* %44)
  %46 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  %47 = call i32 @get_obj(%struct.ras_manager* %46)
  %48 = load %struct.ras_manager*, %struct.ras_manager** %7, align 8
  store %struct.ras_manager* %48, %struct.ras_manager** %3, align 8
  br label %49

49:                                               ; preds = %32, %31, %19, %12
  %50 = load %struct.ras_manager*, %struct.ras_manager** %3, align 8
  ret %struct.ras_manager* %50
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i64 @alive_obj(%struct.ras_manager*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @get_obj(%struct.ras_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
