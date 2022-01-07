; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_need_pipeline_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_need_pipeline_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_4__*, i64, %struct.amdgpu_device* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { %struct.amdgpu_vmid* }
%struct.amdgpu_vmid = type { i64, i64, i64, i64, i64, i64 }
%struct.amdgpu_job = type { i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_need_pipeline_sync(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_job*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_vmid_mgr*, align 8
  %9 = alloca %struct.amdgpu_vmid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %5, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %6, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %23, i64 %25
  store %struct.amdgpu_vmid_mgr* %26, %struct.amdgpu_vmid_mgr** %8, align 8
  %27 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %2
  %37 = phi i1 [ true, %2 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %125

44:                                               ; preds = %36
  %45 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %8, align 8
  %46 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %45, i32 0, i32 0
  %47 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %46, align 8
  %48 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %47, i64 %50
  store %struct.amdgpu_vmid* %51, %struct.amdgpu_vmid** %9, align 8
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %44
  %59 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %60 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %106, label %66

66:                                               ; preds = %58
  %67 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %106, label %74

74:                                               ; preds = %66
  %75 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %76 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %79 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %106, label %82

82:                                               ; preds = %74
  %83 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %84 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %87 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %92 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %95 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %100 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.amdgpu_job*, %struct.amdgpu_job** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br label %106

106:                                              ; preds = %98, %90, %82, %74, %66, %58
  %107 = phi i1 [ true, %90 ], [ true, %82 ], [ true, %74 ], [ true, %66 ], [ true, %58 ], [ %105, %98 ]
  br label %108

108:                                              ; preds = %106, %44
  %109 = phi i1 [ false, %44 ], [ %107, %106 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %112 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %9, align 8
  %113 = call i64 @amdgpu_vmid_had_gpu_reset(%struct.amdgpu_device* %111, %struct.amdgpu_vmid* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %125

116:                                              ; preds = %108
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i1 [ true, %116 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %115, %43
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @amdgpu_vmid_had_gpu_reset(%struct.amdgpu_device*, %struct.amdgpu_vmid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
