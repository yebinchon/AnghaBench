; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_9__, %struct.amdgpu_vm_bo_base*, %struct.amdgpu_bo*, %struct.amdgpu_bo* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.amdgpu_vm_bo_base = type { i32, %struct.amdgpu_vm*, %struct.amdgpu_vm_bo_base* }
%struct.amdgpu_vm = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@ttm_bo_type_kernel = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vm_bo_invalidate(%struct.amdgpu_device* %0, %struct.amdgpu_bo* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_vm_bo_base*, align 8
  %8 = alloca %struct.amdgpu_vm*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %12 = icmp ne %struct.amdgpu_bo* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %14, i32 0, i32 2
  %16 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %15, align 8
  %17 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %16, i32 0, i32 3
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %17, align 8
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %20 = icmp eq %struct.amdgpu_bo* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %22, i32 0, i32 2
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %23, align 8
  store %struct.amdgpu_bo* %24, %struct.amdgpu_bo** %5, align 8
  br label %25

25:                                               ; preds = %21, %13, %3
  %26 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %26, i32 0, i32 1
  %28 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %27, align 8
  store %struct.amdgpu_vm_bo_base* %28, %struct.amdgpu_vm_bo_base** %7, align 8
  br label %29

29:                                               ; preds = %99, %25
  %30 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %31 = icmp ne %struct.amdgpu_vm_bo_base* %30, null
  br i1 %31, label %32, label %103

32:                                               ; preds = %29
  %33 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %33, i32 0, i32 1
  %35 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %34, align 8
  store %struct.amdgpu_vm* %35, %struct.amdgpu_vm** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %40 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %43, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %56 = call i32 @amdgpu_vm_bo_evicted(%struct.amdgpu_vm_bo_base* %55)
  br label %99

57:                                               ; preds = %38, %32
  %58 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %59 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %99

63:                                               ; preds = %57
  %64 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %65 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ttm_bo_type_kernel, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %74 = call i32 @amdgpu_vm_bo_relocated(%struct.amdgpu_vm_bo_base* %73)
  br label %98

75:                                               ; preds = %63
  %76 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %8, align 8
  %82 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %80, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %93 = call i32 @amdgpu_vm_bo_moved(%struct.amdgpu_vm_bo_base* %92)
  br label %97

94:                                               ; preds = %75
  %95 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %96 = call i32 @amdgpu_vm_bo_invalidated(%struct.amdgpu_vm_bo_base* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %72
  br label %99

99:                                               ; preds = %98, %62, %54
  %100 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %7, align 8
  %101 = getelementptr inbounds %struct.amdgpu_vm_bo_base, %struct.amdgpu_vm_bo_base* %100, i32 0, i32 2
  %102 = load %struct.amdgpu_vm_bo_base*, %struct.amdgpu_vm_bo_base** %101, align 8
  store %struct.amdgpu_vm_bo_base* %102, %struct.amdgpu_vm_bo_base** %7, align 8
  br label %29

103:                                              ; preds = %29
  ret void
}

declare dso_local i32 @amdgpu_vm_bo_evicted(%struct.amdgpu_vm_bo_base*) #1

declare dso_local i32 @amdgpu_vm_bo_relocated(%struct.amdgpu_vm_bo_base*) #1

declare dso_local i32 @amdgpu_vm_bo_moved(%struct.amdgpu_vm_bo_base*) #1

declare dso_local i32 @amdgpu_vm_bo_invalidated(%struct.amdgpu_vm_bo_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
