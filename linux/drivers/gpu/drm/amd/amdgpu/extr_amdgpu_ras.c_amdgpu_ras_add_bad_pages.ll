; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_add_bad_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_add_bad_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32, %struct.ras_err_handler_data* }
%struct.ras_err_handler_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_add_bad_pages(%struct.amdgpu_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ras*, align 8
  %9 = alloca %struct.ras_err_handler_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %12)
  store %struct.amdgpu_ras* %13, %struct.amdgpu_ras** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %16 = icmp ne %struct.amdgpu_ras* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %18, i32 0, i32 1
  %20 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %19, align 8
  %21 = icmp ne %struct.ras_err_handler_data* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i64*, i64** %6, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %17, %3
  store i32 0, i32* %4, align 4
  br label %87

29:                                               ; preds = %25
  %30 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %33, i32 0, i32 1
  %35 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %34, align 8
  store %struct.ras_err_handler_data* %35, %struct.ras_err_handler_data** %9, align 8
  %36 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %37 = icmp ne %struct.ras_err_handler_data* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %82

39:                                               ; preds = %29
  %40 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %41 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %47 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @amdgpu_ras_realloc_eh_data_space(%struct.amdgpu_device* %46, %struct.ras_err_handler_data* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %82

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i64*, i64** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %67 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %70 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %65, i64* %75, align 8
  br label %56

76:                                               ; preds = %56
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %9, align 8
  %79 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %51, %38
  %83 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %8, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %28
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @amdgpu_ras_realloc_eh_data_space(%struct.amdgpu_device*, %struct.ras_err_handler_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
