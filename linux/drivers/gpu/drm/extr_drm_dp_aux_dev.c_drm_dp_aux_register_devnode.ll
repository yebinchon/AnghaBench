; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_register_devnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_register_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32, i32 }
%struct.drm_dp_aux_dev = type { i32, %struct.drm_dp_aux_dev* }

@drm_dp_aux_dev_class = common dso_local global i32 0, align 4
@drm_dev_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"drm_dp_aux%d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"drm_dp_aux_dev: aux [%s] registered as minor %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_register_devnode(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca %struct.drm_dp_aux_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  %6 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %7 = call %struct.drm_dp_aux_dev* @alloc_drm_dp_aux_dev(%struct.drm_dp_aux* %6)
  store %struct.drm_dp_aux_dev* %7, %struct.drm_dp_aux_dev** %4, align 8
  %8 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %9 = call i64 @IS_ERR(%struct.drm_dp_aux_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.drm_dp_aux_dev* %12)
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load i32, i32* @drm_dp_aux_dev_class, align 4
  %16 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %17 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @drm_dev_major, align 4
  %20 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MKDEV(i32 %19, i32 %22)
  %24 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %25 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.drm_dp_aux_dev* @device_create(i32 %15, i32 %18, i32 %23, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %29 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %28, i32 0, i32 1
  store %struct.drm_dp_aux_dev* %27, %struct.drm_dp_aux_dev** %29, align 8
  %30 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %31 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %30, i32 0, i32 1
  %32 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %31, align 8
  %33 = call i64 @IS_ERR(%struct.drm_dp_aux_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %14
  %36 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %37 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %36, i32 0, i32 1
  %38 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.drm_dp_aux_dev* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %41 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %40, i32 0, i32 1
  store %struct.drm_dp_aux_dev* null, %struct.drm_dp_aux_dev** %41, align 8
  br label %50

42:                                               ; preds = %14
  %43 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %44 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %4, align 8
  %47 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %52 = call i32 @drm_dp_aux_unregister_devnode(%struct.drm_dp_aux* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %42, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.drm_dp_aux_dev* @alloc_drm_dp_aux_dev(%struct.drm_dp_aux*) #1

declare dso_local i64 @IS_ERR(%struct.drm_dp_aux_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_dp_aux_dev*) #1

declare dso_local %struct.drm_dp_aux_dev* @device_create(i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @drm_dp_aux_unregister_devnode(%struct.drm_dp_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
