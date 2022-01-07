; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dumb_buffers.c_drm_mode_create_dumb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dumb_buffers.c_drm_mode_create_dumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i64, i64, i64 }
%struct.drm_file = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_create_dumb(%struct.drm_device* %0, %struct.drm_mode_create_dumb* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %1, %struct.drm_mode_create_dumb** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)** %14, align 8
  %16 = icmp ne i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %22 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %25, %20
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %107

38:                                               ; preds = %30
  %39 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %40 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @U32_MAX, align 4
  %43 = sub nsw i32 %42, 8
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %107

48:                                               ; preds = %38
  %49 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %50 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DIV_ROUND_UP(i32 %51, i32 8)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @U32_MAX, align 4
  %55 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %56 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = icmp sgt i32 %53, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %107

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %66 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %70 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @U32_MAX, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sdiv i32 %72, %73
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %107

79:                                               ; preds = %63
  %80 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %81 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @PAGE_ALIGN(i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %107

91:                                               ; preds = %79
  %92 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %93 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %95 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %97 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)*, i32 (%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*)** %101, align 8
  %103 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %106 = call i32 %102(%struct.drm_file* %103, %struct.drm_device* %104, %struct.drm_mode_create_dumb* %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %91, %88, %76, %60, %45, %35, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
