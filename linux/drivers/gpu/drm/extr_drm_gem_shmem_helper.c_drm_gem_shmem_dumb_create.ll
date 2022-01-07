; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_shmem_helper.c_drm_gem_shmem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_shmem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_shmem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_gem_shmem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %9 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %10 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = call i64 @DIV_ROUND_UP(i32 %15, i32 8)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21, %3
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %39 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %75

40:                                               ; preds = %21
  %41 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %42 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %51 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %54 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %57 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %60 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %66 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %69 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %73 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %52
  br label %75

75:                                               ; preds = %74, %26
  %76 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %79 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %82 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %81, i32 0, i32 5
  %83 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_create_with_handle(%struct.drm_file* %76, %struct.drm_device* %77, i32 %80, i32* %82)
  store %struct.drm_gem_shmem_object* %83, %struct.drm_gem_shmem_object** %8, align 8
  %84 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %8, align 8
  %85 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_gem_shmem_object* %84)
  ret i32 %85
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create_with_handle(%struct.drm_file*, %struct.drm_device*, i32, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.drm_gem_shmem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
