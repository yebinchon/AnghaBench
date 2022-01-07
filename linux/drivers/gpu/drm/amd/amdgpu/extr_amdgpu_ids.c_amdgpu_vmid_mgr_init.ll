; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ids.c_amdgpu_vmid_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_vmid_mgr* }
%struct.amdgpu_vmid_mgr = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AMDGPU_MAX_VMHUBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vmid_mgr_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_vmid_mgr*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %60, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AMDGPU_MAX_VMHUBS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %63

10:                                               ; preds = %6
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %14, i64 %16
  store %struct.amdgpu_vmid_mgr* %17, %struct.amdgpu_vmid_mgr** %5, align 8
  %18 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %18, i32 0, i32 4
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %24, i32 0, i32 3
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %56, %10
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @amdgpu_vmid_reset(%struct.amdgpu_device* %34, i32 %35, i32 %36)
  %38 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @amdgpu_sync_create(i32* %44)
  %46 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_vmid_mgr*, %struct.amdgpu_vmid_mgr** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_vmid_mgr, %struct.amdgpu_vmid_mgr* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %27

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %6

63:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @amdgpu_vmid_reset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_sync_create(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
