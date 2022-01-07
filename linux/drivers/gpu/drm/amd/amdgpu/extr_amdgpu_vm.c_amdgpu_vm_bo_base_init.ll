; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_bo_base = type { %struct.amdgpu_vm_bo_base*, i32, %struct.amdgpu_bo*, %struct.amdgpu_vm* }
%struct.amdgpu_vm = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_16__, i64, %struct.amdgpu_vm_bo_base* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ttm_bo_type_kernel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm*, %struct.amdgpu_bo*)* @amdgpu_vm_bo_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_bo_base_init(%struct.amdgpu_vm_bo_base* %0, %struct.amdgpu_vm* %1, %struct.amdgpu_bo* %2) #0 {
  %4 = alloca %struct.amdgpu_vm_bo_base*, align 8
  %5 = alloca %struct.amdgpu_vm*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_vm_bo_base* %0, %struct.amdgpu_vm_bo_base** %4, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %5, align 8
  store %struct.amdgpu_bo* %2, %struct.amdgpu_bo** %6, align 8
  %7 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %8 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %8, i32 0, i32 3
  store %struct.amdgpu_vm* %7, %struct.amdgpu_vm** %9, align 8
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %11 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %11, i32 0, i32 2
  store %struct.amdgpu_bo* %10, %struct.amdgpu_bo** %12, align 8
  %13 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %13, i32 0, i32 0
  store %struct.amdgpu_vm_bo_base* null, %struct.amdgpu_vm_bo_base** %14, align 8
  %15 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %19 = icmp ne %struct.amdgpu_bo* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %22, i32 0, i32 3
  %24 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %23, align 8
  %25 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %25, i32 0, i32 0
  store %struct.amdgpu_vm_bo_base* %24, %struct.amdgpu_vm_bo_base** %26, align 8
  %27 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %28, i32 0, i32 3
  store %struct.amdgpu_vm_bo_base* %27, %struct.amdgpu_vm_bo_base** %29, align 8
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %34, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  br label %82

46:                                               ; preds = %21
  %47 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %50 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ttm_bo_type_kernel, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %62 = call i32 @amdgpu_vm_bo_relocated(%struct.amdgpu_vm_bo_base* %61)
  br label %66

63:                                               ; preds = %55, %46
  %64 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %65 = call i32 @amdgpu_vm_bo_idle(%struct.amdgpu_vm_bo_base* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @amdgpu_mem_type_to_domain(i32 %74)
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %82

79:                                               ; preds = %66
  %80 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %4, align 8
  %81 = call i32 @amdgpu_vm_bo_evicted(%struct.amdgpu_vm_bo_base* %80)
  br label %82

82:                                               ; preds = %79, %78, %45, %20
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @amdgpu_vm_bo_relocated(%struct.amdgpu_vm_bo_base*) #1

declare dso_local i32 @amdgpu_vm_bo_idle(%struct.amdgpu_vm_bo_base*) #1

declare dso_local i32 @amdgpu_mem_type_to_domain(i32) #1

declare dso_local i32 @amdgpu_vm_bo_evicted(%struct.amdgpu_vm_bo_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
