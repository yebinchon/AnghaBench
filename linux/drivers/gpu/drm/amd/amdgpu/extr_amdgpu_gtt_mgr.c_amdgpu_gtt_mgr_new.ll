; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gtt_mgr.c_amdgpu_gtt_mgr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { %struct.amdgpu_gtt_mgr* }
%struct.amdgpu_gtt_mgr = type { i32, i32 }
%struct.ttm_buffer_object = type { %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i64, i64, i32, %struct.amdgpu_gtt_node* }
%struct.amdgpu_gtt_node = type { %struct.TYPE_2__, %struct.ttm_buffer_object* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ttm_place = type { i32, i64, i64 }

@TTM_PL_TT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_BO_INVALID_OFFSET = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TOPDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @amdgpu_gtt_mgr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_gtt_mgr_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.amdgpu_gtt_mgr*, align 8
  %11 = alloca %struct.amdgpu_gtt_node*, align 8
  %12 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %14, align 8
  store %struct.amdgpu_gtt_mgr* %15, %struct.amdgpu_gtt_mgr** %10, align 8
  %16 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %17 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 0
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %22 = icmp eq %struct.ttm_mem_reg* %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TTM_PL_TT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %23, %4
  %31 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %32 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %31, i32 0, i32 0
  %33 = call i64 @atomic64_read(i32* %32)
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %40 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  store i32 0, i32* %5, align 4
  br label %123

42:                                               ; preds = %30, %23
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %47 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %46, i32 0, i32 0
  %48 = call i32 @atomic64_sub(i64 %45, i32* %47)
  %49 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %50 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.amdgpu_gtt_node* @kzalloc(i32 24, i32 %52)
  store %struct.amdgpu_gtt_node* %53, %struct.amdgpu_gtt_node** %11, align 8
  %54 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %55 = icmp ne %struct.amdgpu_gtt_node* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %115

59:                                               ; preds = %42
  %60 = load i32, i32* @AMDGPU_BO_INVALID_OFFSET, align 4
  %61 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %62 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %65 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %68 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %71 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %72 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %71, i32 0, i32 1
  store %struct.ttm_buffer_object* %70, %struct.ttm_buffer_object** %72, align 8
  %73 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %74 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %75 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %74, i32 0, i32 3
  store %struct.amdgpu_gtt_node* %73, %struct.amdgpu_gtt_node** %75, align 8
  %76 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %77 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %59
  %81 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %82 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %87 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TTM_PL_FLAG_TOPDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85, %80, %59
  %93 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %94 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %95 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %96 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %97 = call i32 @amdgpu_gtt_mgr_alloc(%struct.ttm_mem_type_manager* %93, %struct.ttm_buffer_object* %94, %struct.ttm_place* %95, %struct.ttm_mem_reg* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %103 = call i32 @kfree(%struct.amdgpu_gtt_node* %102)
  %104 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %105 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %104, i32 0, i32 3
  store %struct.amdgpu_gtt_node* null, %struct.amdgpu_gtt_node** %105, align 8
  store i32 0, i32* %12, align 4
  br label %115

106:                                              ; preds = %92
  br label %114

107:                                              ; preds = %85
  %108 = load %struct.amdgpu_gtt_node*, %struct.amdgpu_gtt_node** %11, align 8
  %109 = getelementptr inbounds %struct.amdgpu_gtt_node, %struct.amdgpu_gtt_node* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %113 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %107, %106
  store i32 0, i32* %5, align 4
  br label %123

115:                                              ; preds = %101, %56
  %116 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %117 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.amdgpu_gtt_mgr*, %struct.amdgpu_gtt_mgr** %10, align 8
  %120 = getelementptr inbounds %struct.amdgpu_gtt_mgr, %struct.amdgpu_gtt_mgr* %119, i32 0, i32 0
  %121 = call i32 @atomic64_add(i64 %118, i32* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %115, %114, %38
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

declare dso_local %struct.amdgpu_gtt_node* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_gtt_mgr_alloc(%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.amdgpu_gtt_node*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
