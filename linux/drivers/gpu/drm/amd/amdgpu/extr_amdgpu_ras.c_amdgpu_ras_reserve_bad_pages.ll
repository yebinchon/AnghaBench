; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_reserve_bad_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_reserve_bad_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32, %struct.ras_err_handler_data* }
%struct.ras_err_handler_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RAS ERROR: reserve vram %llx fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_reserve_bad_pages(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  %5 = alloca %struct.ras_err_handler_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %9)
  store %struct.amdgpu_ras* %10, %struct.amdgpu_ras** %4, align 8
  %11 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %12 = icmp ne %struct.amdgpu_ras* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %14, i32 0, i32 1
  %16 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %15, align 8
  %17 = icmp ne %struct.ras_err_handler_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %79

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %23, i32 0, i32 1
  %25 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %24, align 8
  store %struct.ras_err_handler_data* %25, %struct.ras_err_handler_data** %5, align 8
  %26 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %27 = icmp ne %struct.ras_err_handler_data* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %75

29:                                               ; preds = %19
  %30 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %31 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %71, %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %36 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %41 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i64 @amdgpu_ras_reserve_vram(%struct.amdgpu_device* %48, i32 %51, i32 %52, %struct.amdgpu_bo** %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %39
  %59 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %60 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %61 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store %struct.amdgpu_bo* %59, %struct.amdgpu_bo** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %70 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %33

74:                                               ; preds = %33
  br label %75

75:                                               ; preds = %74, %28
  %76 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @amdgpu_ras_reserve_vram(%struct.amdgpu_device*, i32, i32, %struct.amdgpu_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
