; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_cu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_cu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.kfd_cu_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_cu_info }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.amdgpu_cu_info = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_get_cu_info(%struct.kgd_dev* %0, %struct.kfd_cu_info* %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca %struct.kfd_cu_info*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_cu_info, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store %struct.kfd_cu_info* %1, %struct.kfd_cu_info** %4, align 8
  %7 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %8 = bitcast %struct.kgd_dev* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = bitcast %struct.amdgpu_cu_info* %6 to i8*
  %13 = bitcast %struct.amdgpu_cu_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 40, i1 false)
  %14 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %15 = call i32 @memset(%struct.kfd_cu_info* %14, i32 0, i32 48)
  %16 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %19 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %23 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %25 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @memcpy(i32* %27, i32* %30, i32 8)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %38 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %45 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %52 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %56 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %60 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %64 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %68 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.amdgpu_cu_info, %struct.amdgpu_cu_info* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kfd_cu_info*, %struct.kfd_cu_info** %4, align 8
  %72 = getelementptr inbounds %struct.kfd_cu_info, %struct.kfd_cu_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.kfd_cu_info*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
