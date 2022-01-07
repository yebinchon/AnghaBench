; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_placement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_mem_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_bo_device*, i32, %struct.TYPE_3__ }
%struct.ttm_bo_device = type { %struct.TYPE_4__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_4__ = type { i32 }
%struct.ttm_mem_type_manager = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ttm_place = type { i32 }
%struct.ttm_mem_reg = type { i64, i64 }
%struct.ttm_operation_ctx = type { i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEMTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*)* @ttm_bo_mem_placement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mem_placement(%struct.ttm_buffer_object* %0, %struct.ttm_place* %1, %struct.ttm_mem_reg* %2, %struct.ttm_operation_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_place*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_operation_ctx*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ttm_mem_type_manager*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_place* %1, %struct.ttm_place** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_operation_ctx* %3, %struct.ttm_operation_ctx** %9, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 0
  %17 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %16, align 8
  store %struct.ttm_bo_device* %17, %struct.ttm_bo_device** %10, align 8
  %18 = load i64, i64* @TTM_PL_SYSTEM, align 8
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.ttm_place*, %struct.ttm_place** %7, align 8
  %20 = call i32 @ttm_mem_type_from_place(%struct.ttm_place* %19, i64* %11)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %104

25:                                               ; preds = %4
  %26 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %27 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %26, i32 0, i32 1
  %28 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %28, i64 %29
  store %struct.ttm_mem_type_manager* %30, %struct.ttm_mem_type_manager** %12, align 8
  %31 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %104

43:                                               ; preds = %35
  %44 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.ttm_place*, %struct.ttm_place** %7, align 8
  %47 = call i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager* %44, i64 %45, %struct.ttm_place* %46, i64* %13)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %104

52:                                               ; preds = %43
  %53 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @ttm_bo_select_caching(%struct.ttm_mem_type_manager* %53, i32 %57, i64 %58)
  store i64 %59, i64* %13, align 8
  %60 = load %struct.ttm_place*, %struct.ttm_place** %7, align 8
  %61 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @ttm_flag_masked(i64* %13, i32 %62, i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %68 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %71 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %73 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %52
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 1
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %78
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 0
  %86 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %85, align 8
  %87 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %92 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %91)
  %93 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %94 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %95 = call i32 @ttm_bo_add_mem_to_lru(%struct.ttm_buffer_object* %93, %struct.ttm_mem_reg* %94)
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %97 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %96, i32 0, i32 0
  %98 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %97, align 8
  %99 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %83, %78, %52
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %49, %40, %23
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ttm_mem_type_from_place(%struct.ttm_place*, i64*) #1

declare dso_local i32 @ttm_bo_mt_compatible(%struct.ttm_mem_type_manager*, i64, %struct.ttm_place*, i64*) #1

declare dso_local i64 @ttm_bo_select_caching(%struct.ttm_mem_type_manager*, i32, i64) #1

declare dso_local i32 @ttm_flag_masked(i64*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_add_mem_to_lru(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
