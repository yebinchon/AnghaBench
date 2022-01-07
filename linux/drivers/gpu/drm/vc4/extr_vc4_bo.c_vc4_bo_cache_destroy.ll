; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Destroying BO cache with %d %s BOs still allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_bo_cache_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %5)
  store %struct.vc4_dev* %6, %struct.vc4_dev** %3, align 8
  %7 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %8 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call i32 @del_timer(i32* %9)
  %11 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @vc4_bo_cache_purge(%struct.drm_device* %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %66, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %17
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %23
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %43 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %41, %struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %33, %23
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @is_user_label(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %57 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %55, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %17

69:                                               ; preds = %17
  %70 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @kfree(%struct.TYPE_5__* %72)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @vc4_bo_cache_purge(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @is_user_label(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
