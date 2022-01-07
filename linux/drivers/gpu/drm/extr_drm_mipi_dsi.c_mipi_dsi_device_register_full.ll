; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_register_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_register_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_host = type { %struct.device* }
%struct.device = type { i32 }
%struct.mipi_dsi_device_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"invalid mipi_dsi_device_info pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid virtual channel: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to allocate DSI device %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to add DSI device %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device_info* %1) #0 {
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device_info*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device_info* %1, %struct.mipi_dsi_device_info** %5, align 8
  %9 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %13 = icmp ne %struct.mipi_dsi_device_info* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mipi_dsi_device* @ERR_PTR(i32 %18)
  store %struct.mipi_dsi_device* %19, %struct.mipi_dsi_device** %3, align 8
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.mipi_dsi_device* @ERR_PTR(i32 %32)
  store %struct.mipi_dsi_device* %33, %struct.mipi_dsi_device** %3, align 8
  br label %79

34:                                               ; preds = %20
  %35 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %36 = call %struct.mipi_dsi_device* @mipi_dsi_device_alloc(%struct.mipi_dsi_host* %35)
  store %struct.mipi_dsi_device* %36, %struct.mipi_dsi_device** %6, align 8
  %37 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %38 = call i64 @IS_ERR(%struct.mipi_dsi_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %43 = call i32 @PTR_ERR(%struct.mipi_dsi_device* %42)
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  store %struct.mipi_dsi_device* %45, %struct.mipi_dsi_device** %3, align 8
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %48 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %51 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %54 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %57 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %59 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mipi_dsi_device_info*, %struct.mipi_dsi_device_info** %5, align 8
  %62 = getelementptr inbounds %struct.mipi_dsi_device_info, %struct.mipi_dsi_device_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strlcpy(i32 %60, i32 %63, i32 4)
  %65 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %66 = call i32 @mipi_dsi_device_add(%struct.mipi_dsi_device* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %46
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %74 = call i32 @kfree(%struct.mipi_dsi_device* %73)
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.mipi_dsi_device* @ERR_PTR(i32 %75)
  store %struct.mipi_dsi_device* %76, %struct.mipi_dsi_device** %3, align 8
  br label %79

77:                                               ; preds = %46
  %78 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  store %struct.mipi_dsi_device* %78, %struct.mipi_dsi_device** %3, align 8
  br label %79

79:                                               ; preds = %77, %69, %40, %25, %14
  %80 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  ret %struct.mipi_dsi_device* %80
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mipi_dsi_device* @ERR_PTR(i32) #1

declare dso_local %struct.mipi_dsi_device* @mipi_dsi_device_alloc(%struct.mipi_dsi_host*) #1

declare dso_local i64 @IS_ERR(%struct.mipi_dsi_device*) #1

declare dso_local i32 @PTR_ERR(%struct.mipi_dsi_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mipi_dsi_device_add(%struct.mipi_dsi_device*) #1

declare dso_local i32 @kfree(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
