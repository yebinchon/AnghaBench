; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_attach_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_attach_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device_info = type { i8*, i32*, i32 }
%struct.adv7511 = type { i32, %struct.mipi_dsi_device*, i32, %struct.TYPE_2__* }
%struct.mipi_dsi_device = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mipi_dsi_host = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"adv7533\00", align 1
@__const.adv7533_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32* null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to find dsi host\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create dsi device\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to attach dsi to host\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv7533_attach_dsi(%struct.adv7511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mipi_dsi_host*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mipi_dsi_device_info, align 8
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  %9 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %10 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = bitcast %struct.mipi_dsi_device_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.mipi_dsi_device_info* @__const.adv7533_attach_dsi.info to i8*), i64 24, i1 false)
  %14 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %15 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(i32 %16)
  store %struct.mipi_dsi_host* %17, %struct.mipi_dsi_host** %5, align 8
  %18 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %5, align 8
  %19 = icmp ne %struct.mipi_dsi_host* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %5, align 8
  %27 = call %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host* %26, %struct.mipi_dsi_device_info* %8)
  store %struct.mipi_dsi_device* %27, %struct.mipi_dsi_device** %6, align 8
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %29 = call i64 @IS_ERR(%struct.mipi_dsi_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.mipi_dsi_device* %34)
  store i32 %35, i32* %7, align 4
  br label %68

36:                                               ; preds = %25
  %37 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %38 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %39 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %38, i32 0, i32 1
  store %struct.mipi_dsi_device* %37, %struct.mipi_dsi_device** %39, align 8
  %40 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %41 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %44 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %46 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %49 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %56 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %58 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %36
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %65

64:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %70

65:                                               ; preds = %61
  %66 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %67 = call i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device* %66)
  br label %68

68:                                               ; preds = %65, %31
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %64, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host*, %struct.mipi_dsi_device_info*) #2

declare dso_local i64 @IS_ERR(%struct.mipi_dsi_device*) #2

declare dso_local i32 @PTR_ERR(%struct.mipi_dsi_device*) #2

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #2

declare dso_local i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
