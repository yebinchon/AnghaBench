; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.vc4_bo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@VC4_BO_TYPE_DUMB = common dso_local global i32 0, align 4
@VC4_MADV_WILLNEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vc4_bo*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %12 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = call i32 @DIV_ROUND_UP(i32 %17, i32 8)
  store i32 %18, i32* %8, align 4
  store %struct.vc4_bo* null, %struct.vc4_bo** %9, align 8
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %33 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %36 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %42 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %45 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %28
  %51 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %52 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %53 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VC4_BO_TYPE_DUMB, align 4
  %56 = call %struct.vc4_bo* @vc4_bo_create(%struct.drm_device* %51, i32 %54, i32 0, i32 %55)
  store %struct.vc4_bo* %56, %struct.vc4_bo** %9, align 8
  %57 = load %struct.vc4_bo*, %struct.vc4_bo** %9, align 8
  %58 = call i64 @IS_ERR(%struct.vc4_bo* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.vc4_bo*, %struct.vc4_bo** %9, align 8
  %62 = call i32 @PTR_ERR(%struct.vc4_bo* %61)
  store i32 %62, i32* %4, align 4
  br label %79

63:                                               ; preds = %50
  %64 = load i32, i32* @VC4_MADV_WILLNEED, align 4
  %65 = load %struct.vc4_bo*, %struct.vc4_bo** %9, align 8
  %66 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %68 = load %struct.vc4_bo*, %struct.vc4_bo** %9, align 8
  %69 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %72 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %71, i32 0, i32 5
  %73 = call i32 @drm_gem_handle_create(%struct.drm_file* %67, i32* %70, i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.vc4_bo*, %struct.vc4_bo** %9, align 8
  %75 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @drm_gem_object_put_unlocked(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %60
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.vc4_bo* @vc4_bo_create(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
