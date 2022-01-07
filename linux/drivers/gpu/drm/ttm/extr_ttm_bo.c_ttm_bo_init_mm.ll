; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_3__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_3__ = type { i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)* }
%struct.ttm_mem_type_manager = type { i32, i32, i32, i32, i64, i32*, i32*, %struct.TYPE_4__*, %struct.ttm_bo_device*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ttm_mem_type_manager*, i64)* }

@TTM_NUM_MEM_TYPES = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init_mm(%struct.ttm_bo_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_type_manager*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TTM_NUM_MEM_TYPES, align 4
  %13 = icmp uge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 1
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %20
  store %struct.ttm_mem_type_manager* %21, %struct.ttm_mem_type_manager** %9, align 8
  %22 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 11
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %33, i32 0, i32 10
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %36, i32 0, i32 9
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %40 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)*, i32 (%struct.ttm_bo_device*, i32, %struct.ttm_mem_type_manager*)** %42, align 8
  %44 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %47 = call i32 %43(%struct.ttm_bo_device* %44, i32 %45, %struct.ttm_mem_type_manager* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %99

52:                                               ; preds = %3
  %53 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %54 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %55 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %54, i32 0, i32 8
  store %struct.ttm_bo_device* %53, %struct.ttm_bo_device** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %61 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ttm_mem_type_manager*, i64)*, i32 (%struct.ttm_mem_type_manager*, i64)** %63, align 8
  %65 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 %64(%struct.ttm_mem_type_manager* %65, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %99

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %75 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %77 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %80 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %93, %73
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %87 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %98 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %70, %50
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
