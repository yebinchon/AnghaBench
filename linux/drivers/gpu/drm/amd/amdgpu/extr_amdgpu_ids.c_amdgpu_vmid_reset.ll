; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { i32, %struct.amdgpu_vmid* }
%struct.amdgpu_vmid = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vmid_reset(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_vmid_mgr*, align 8
  %8 = alloca %struct.amdgpu_vmid*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %12, i64 %14
  store %struct.amdgpu_vmid_mgr* %15, %struct.amdgpu_vmid_mgr** %7, align 8
  %16 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %18, i64 %20
  store %struct.amdgpu_vmid* %21, %struct.amdgpu_vmid** %8, align 8
  %22 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %28 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %32 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.amdgpu_vmid*, %struct.amdgpu_vmid** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_vmid, %struct.amdgpu_vmid* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
