; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_add_monitors_config_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_add_monitors_config_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.qxl_head* }
%struct.qxl_head = type { i32, i32 }
%struct.qxl_output = type { i32 }

@qxl_num_crtc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"head %d is %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @qxl_add_monitors_config_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_add_monitors_config_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qxl_head*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.qxl_device*, %struct.qxl_device** %13, align 8
  store %struct.qxl_device* %14, %struct.qxl_device** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector* %15)
  store %struct.qxl_output* %16, %struct.qxl_output** %6, align 8
  %17 = load %struct.qxl_output*, %struct.qxl_output** %6, align 8
  %18 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %21 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @qxl_num_crtc, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %70

30:                                               ; preds = %25
  %31 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %32 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %70

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %39 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %70

45:                                               ; preds = %36
  %46 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %47 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.qxl_head*, %struct.qxl_head** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %50, i64 %52
  store %struct.qxl_head* %53, %struct.qxl_head** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.qxl_head*, %struct.qxl_head** %8, align 8
  %56 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qxl_head*, %struct.qxl_head** %8, align 8
  %59 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %63 = load %struct.qxl_head*, %struct.qxl_head** %8, align 8
  %64 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qxl_head*, %struct.qxl_head** %8, align 8
  %67 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qxl_add_mode(%struct.drm_connector* %62, i32 %65, i32 %68, i32 1)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %45, %44, %35, %29, %24
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @qxl_add_mode(%struct.drm_connector*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
