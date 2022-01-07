; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.vc4_dsi = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DSI_PFORMAT_RGB888 = common dso_local global i32 0, align 4
@DSI_PFORMAT_RGB666 = common dso_local global i32 0, align 4
@DSI_PFORMAT_RGB666_PACKED = common dso_local global i32 0, align 4
@DSI_PFORMAT_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown DSI format: %d.\0A\00", align 1
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Only VIDEO mode panels supported currently.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @vc4_dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.vc4_dsi*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %8 = call %struct.vc4_dsi* @host_to_dsi(%struct.mipi_dsi_host* %7)
  store %struct.vc4_dsi* %8, %struct.vc4_dsi** %6, align 8
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %13 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %18 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %23 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %67 [
    i32 128, label %27
    i32 130, label %37
    i32 129, label %47
    i32 131, label %57
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @DSI_PFORMAT_RGB888, align 4
  %29 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %30 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %32 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 24, %33
  %35 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %36 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %76

37:                                               ; preds = %2
  %38 = load i32, i32* @DSI_PFORMAT_RGB666, align 4
  %39 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %40 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %42 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 24, %43
  %45 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %46 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %76

47:                                               ; preds = %2
  %48 = load i32, i32* @DSI_PFORMAT_RGB666_PACKED, align 4
  %49 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %50 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %52 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 18, %53
  %55 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %56 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %76

57:                                               ; preds = %2
  %58 = load i32, i32* @DSI_PFORMAT_RGB565, align 4
  %59 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %60 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %62 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 16, %63
  %65 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %66 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %76

67:                                               ; preds = %2
  %68 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %69 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %73 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 0, i32* %3, align 4
  br label %90

76:                                               ; preds = %57, %47, %37, %27
  %77 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %78 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %85 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

89:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %83, %67
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.vc4_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
