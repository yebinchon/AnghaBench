; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_client_dev = type { i8*, %struct.drm_client_funcs*, %struct.drm_device* }
%struct.drm_client_funcs = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_client_init(%struct.drm_device* %0, %struct.drm_client_dev* %1, i8* %2, %struct.drm_client_funcs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_client_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_client_funcs*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_client_dev* %1, %struct.drm_client_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.drm_client_funcs* %3, %struct.drm_client_funcs** %9, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = load i32, i32* @DRIVER_MODESET, align 4
  %13 = call i32 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15, %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %74

25:                                               ; preds = %15
  %26 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %9, align 8
  %27 = icmp ne %struct.drm_client_funcs* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %9, align 8
  %30 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %74

37:                                               ; preds = %28, %25
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %40 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %39, i32 0, i32 2
  store %struct.drm_device* %38, %struct.drm_device** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %43 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %9, align 8
  %45 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %46 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %45, i32 0, i32 1
  store %struct.drm_client_funcs* %44, %struct.drm_client_funcs** %46, align 8
  %47 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %48 = call i32 @drm_client_modeset_create(%struct.drm_client_dev* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %64

52:                                               ; preds = %37
  %53 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %54 = call i32 @drm_client_open(%struct.drm_client_dev* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = call i32 @drm_dev_get(%struct.drm_device* %59)
  store i32 0, i32* %5, align 4
  br label %74

61:                                               ; preds = %57
  %62 = load %struct.drm_client_dev*, %struct.drm_client_dev** %7, align 8
  %63 = call i32 @drm_client_modeset_free(%struct.drm_client_dev* %62)
  br label %64

64:                                               ; preds = %61, %51
  %65 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %9, align 8
  %66 = icmp ne %struct.drm_client_funcs* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.drm_client_funcs*, %struct.drm_client_funcs** %9, align 8
  %69 = getelementptr inbounds %struct.drm_client_funcs, %struct.drm_client_funcs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @module_put(i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %58, %34, %22
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @drm_client_modeset_create(%struct.drm_client_dev*) #1

declare dso_local i32 @drm_client_open(%struct.drm_client_dev*) #1

declare dso_local i32 @drm_dev_get(%struct.drm_device*) #1

declare dso_local i32 @drm_client_modeset_free(%struct.drm_client_dev*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
