; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_dumb_create_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_dumb_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_cma_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_gem_cma_object*, align 8
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
  %16 = call i32 @DIV_ROUND_UP(i32 %15, i32 8)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %31 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %34 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %32, %35
  %37 = icmp ult i32 %29, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %40 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %43 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %41, %44
  %46 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %47 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %26
  %49 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %52 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %55 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %54, i32 0, i32 5
  %56 = call %struct.drm_gem_cma_object* @drm_gem_cma_create_with_handle(%struct.drm_file* %49, %struct.drm_device* %50, i32 %53, i32* %55)
  store %struct.drm_gem_cma_object* %56, %struct.drm_gem_cma_object** %8, align 8
  %57 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %58 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_gem_cma_object* %57)
  ret i32 %58
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_gem_cma_create_with_handle(%struct.drm_file*, %struct.drm_device*, i32, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.drm_gem_cma_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
