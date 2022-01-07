; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32, i32, i32 }
%struct.mcde_dsi = type { %struct.TYPE_2__*, %struct.mipi_dsi_device*, i32 }
%struct.TYPE_2__ = type { %struct.mipi_dsi_device* }

@.str = private unnamed_addr constant [51 x i8] c"dsi device params invalid, 1 or 2 lanes supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"attached DSI device with %d lanes\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"format %08x, %dbpp\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mode flags: %08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @mcde_dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.mcde_dsi*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %8 = call %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host* %7)
  store %struct.mcde_dsi* %8, %struct.mcde_dsi** %6, align 8
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %2
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %13
  %23 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %24 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %31 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %38)
  %40 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %42 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %45 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %49 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %50 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %49, i32 0, i32 1
  store %struct.mipi_dsi_device* %48, %struct.mipi_dsi_device** %50, align 8
  %51 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %52 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %22
  %56 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %57 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %58 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.mipi_dsi_device* %56, %struct.mipi_dsi_device** %60, align 8
  br label %61

61:                                               ; preds = %55, %22
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
