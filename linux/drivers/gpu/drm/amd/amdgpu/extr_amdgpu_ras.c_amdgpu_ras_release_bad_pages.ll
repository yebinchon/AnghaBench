; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_release_bad_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_release_bad_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { i32, %struct.ras_err_handler_data* }
%struct.ras_err_handler_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_ras_release_bad_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_release_bad_pages(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  %5 = alloca %struct.ras_err_handler_data*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %8)
  store %struct.amdgpu_ras* %9, %struct.amdgpu_ras** %4, align 8
  %10 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %11 = icmp ne %struct.amdgpu_ras* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %13, i32 0, i32 1
  %15 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %14, align 8
  %16 = icmp ne %struct.ras_err_handler_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %12
  %19 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %22, i32 0, i32 1
  %24 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %23, align 8
  store %struct.ras_err_handler_data* %24, %struct.ras_err_handler_data** %5, align 8
  %25 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %26 = icmp ne %struct.ras_err_handler_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %30 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %58, %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %38 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %43, align 8
  store %struct.amdgpu_bo* %44, %struct.amdgpu_bo** %6, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @amdgpu_ras_release_vram(%struct.amdgpu_device* %45, %struct.amdgpu_bo** %6)
  %47 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %48 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %49 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.amdgpu_bo* %47, %struct.amdgpu_bo** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %5, align 8
  %57 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_ras_release_vram(%struct.amdgpu_device*, %struct.amdgpu_bo**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
