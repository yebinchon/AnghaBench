; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_io_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_4__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_4__ = type { {}* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_io_reserve(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_bo_device*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 1
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %11 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i64 %13
  store %struct.ttm_mem_type_manager* %14, %struct.ttm_mem_type_manager** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)**
  %20 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %19, align 8
  %21 = icmp ne i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %31 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)**
  %35 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %34, align 8
  %36 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %38 = call i32 %35(%struct.ttm_bo_device* %36, %struct.ttm_mem_reg* %37)
  store i32 %38, i32* %3, align 4
  br label %79

39:                                               ; preds = %23
  %40 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)**
  %45 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %44, align 8
  %46 = icmp ne i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %74, %54
  %56 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %57 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)**
  %61 = load i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)*, i32 (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)** %60, align 8
  %62 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %4, align 8
  %63 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %64 = call i32 %61(%struct.ttm_bo_device* %62, %struct.ttm_mem_reg* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %71 = call i32 @ttm_mem_io_evict(%struct.ttm_mem_type_manager* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %55

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %47, %39
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %29, %22
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_mem_io_evict(%struct.ttm_mem_type_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
