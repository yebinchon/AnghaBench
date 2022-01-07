; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32 }
%struct.mtk_dsi = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to register component %pOF: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register DSI host: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Encoder create failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @mtk_dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.mtk_dsi*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.drm_device*
  store %struct.drm_device* %12, %struct.drm_device** %9, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.mtk_dsi* @dev_get_drvdata(%struct.device* %13)
  store %struct.mtk_dsi* %14, %struct.mtk_dsi** %10, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %16 = load %struct.mtk_dsi*, %struct.mtk_dsi** %10, align 8
  %17 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %16, i32 0, i32 0
  %18 = call i32 @mtk_ddp_comp_register(%struct.drm_device* %15, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %3
  %30 = load %struct.mtk_dsi*, %struct.mtk_dsi** %10, align 8
  %31 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %30, i32 0, i32 1
  %32 = call i32 @mipi_dsi_host_register(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %53

39:                                               ; preds = %29
  %40 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %41 = load %struct.mtk_dsi*, %struct.mtk_dsi** %10, align 8
  %42 = call i32 @mtk_dsi_create_conn_enc(%struct.drm_device* %40, %struct.mtk_dsi* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %59

49:                                               ; preds = %45
  %50 = load %struct.mtk_dsi*, %struct.mtk_dsi** %10, align 8
  %51 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %50, i32 0, i32 1
  %52 = call i32 @mipi_dsi_host_unregister(i32* %51)
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %55 = load %struct.mtk_dsi*, %struct.mtk_dsi** %10, align 8
  %56 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %55, i32 0, i32 0
  %57 = call i32 @mtk_ddp_comp_unregister(%struct.drm_device* %54, i32* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %48, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.mtk_dsi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mtk_ddp_comp_register(%struct.drm_device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mipi_dsi_host_register(i32*) #1

declare dso_local i32 @mtk_dsi_create_conn_enc(%struct.drm_device*, %struct.mtk_dsi*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @mipi_dsi_host_unregister(i32*) #1

declare dso_local i32 @mtk_ddp_comp_unregister(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
