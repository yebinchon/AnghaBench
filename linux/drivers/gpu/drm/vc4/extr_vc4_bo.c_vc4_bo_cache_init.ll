; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@VC4_BO_TYPE_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bo_type_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"bo_stats\00", align 1
@vc4_bo_stats_debugfs = common dso_local global i32 0, align 4
@vc4_bo_cache_time_work = common dso_local global i32 0, align 4
@vc4_bo_cache_time_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_bo_cache_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %6)
  store %struct.vc4_dev* %7, %struct.vc4_dev** %4, align 8
  %8 = load i32, i32* @VC4_BO_TYPE_COUNT, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__* @kcalloc(i32 %8, i32 4, i32 %9)
  %11 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %12 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %11, i32 0, i32 3
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %12, align 8
  %13 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load i32, i32* @VC4_BO_TYPE_COUNT, align 4
  %22 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %23 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** @bo_type_names, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = load i32, i32* @VC4_BO_TYPE_COUNT, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUILD_BUG_ON(i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VC4_BO_TYPE_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32*, i32** @bo_type_names, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %41 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %52 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %51, i32 0, i32 2
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = load i32, i32* @vc4_bo_stats_debugfs, align 4
  %56 = call i32 @vc4_debugfs_add_file(%struct.drm_device* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %55, i32* null)
  %57 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %58 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %62 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* @vc4_bo_cache_time_work, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %67 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* @vc4_bo_cache_time_timer, align 4
  %70 = call i32 @timer_setup(i32* %68, i32 %69, i32 0)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %50, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vc4_debugfs_add_file(%struct.drm_device*, i8*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
