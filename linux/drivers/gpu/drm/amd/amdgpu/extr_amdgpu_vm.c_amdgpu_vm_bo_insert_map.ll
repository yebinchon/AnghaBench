; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_insert_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_insert_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo_va = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.amdgpu_bo*, %struct.amdgpu_vm* }
%struct.amdgpu_bo = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.amdgpu_vm = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.amdgpu_bo_va_mapping = type { i32, i32, %struct.amdgpu_bo_va* }

@AMDGPU_PTE_PRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va_mapping*)* @amdgpu_vm_bo_insert_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_bo_insert_map(%struct.amdgpu_device* %0, %struct.amdgpu_bo_va* %1, %struct.amdgpu_bo_va_mapping* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_bo_va*, align 8
  %6 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %7 = alloca %struct.amdgpu_vm*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_bo_va* %1, %struct.amdgpu_bo_va** %5, align 8
  store %struct.amdgpu_bo_va_mapping* %2, %struct.amdgpu_bo_va_mapping** %6, align 8
  %9 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %11, align 8
  store %struct.amdgpu_vm* %12, %struct.amdgpu_vm** %7, align 8
  %13 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  store %struct.amdgpu_bo* %16, %struct.amdgpu_bo** %8, align 8
  %17 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %18 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %18, i32 0, i32 2
  store %struct.amdgpu_bo_va* %17, %struct.amdgpu_bo_va** %19, align 8
  %20 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %20, i32 0, i32 1
  %22 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %22, i32 0, i32 1
  %24 = call i32 @list_add(i32* %21, i32* %23)
  %25 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %6, align 8
  %26 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %26, i32 0, i32 2
  %28 = call i32 @amdgpu_vm_it_insert(%struct.amdgpu_bo_va_mapping* %25, i32* %27)
  %29 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AMDGPU_PTE_PRT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = call i32 @amdgpu_vm_prt_get(%struct.amdgpu_device* %36)
  br label %38

38:                                               ; preds = %35, %3
  %39 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %40 = icmp ne %struct.amdgpu_bo* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %46, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %41
  %58 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %68 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %67, i32 0, i32 0
  %69 = call i32 @list_move(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %63, %57, %41, %38
  %71 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %5, align 8
  %72 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %6, align 8
  %73 = call i32 @trace_amdgpu_vm_bo_map(%struct.amdgpu_bo_va* %71, %struct.amdgpu_bo_va_mapping* %72)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @amdgpu_vm_it_insert(%struct.amdgpu_bo_va_mapping*, i32*) #1

declare dso_local i32 @amdgpu_vm_prt_get(%struct.amdgpu_device*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @trace_amdgpu_vm_bo_map(%struct.amdgpu_bo_va*, %struct.amdgpu_bo_va_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
