; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_reap_surface_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_reap_surface_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, i32)* @qxl_reap_surface_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_reap_surface_id(%struct.qxl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %13 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %83, %2
  %16 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %17 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 2
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %74, %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %31 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %29, %34
  %36 = icmp slt i32 %28, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %40 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %38, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %46 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %45, i32 0, i32 2
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %49 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %48, i32 0, i32 3
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @idr_find(i32* %49, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %53 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %37
  br label %74

58:                                               ; preds = %37
  %59 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @qxl_reap_surf(%struct.qxl_device* %59, i8* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %77

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %27

77:                                               ; preds = %72, %27
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  br label %15

84:                                               ; preds = %80, %77
  %85 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %86 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 @usleep_range(i32 500, i32 1000)
  %92 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %93 = call i32 @qxl_queue_garbage_collect(%struct.qxl_device* %92, i32 1)
  br label %94

94:                                               ; preds = %90, %84
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @idr_find(i32*, i32) #1

declare dso_local i32 @qxl_reap_surf(%struct.qxl_device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @qxl_queue_garbage_collect(%struct.qxl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
