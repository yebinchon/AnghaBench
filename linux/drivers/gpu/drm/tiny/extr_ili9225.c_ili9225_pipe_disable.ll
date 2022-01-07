; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_ili9225.c_ili9225_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dbi_dev = type { i32, %struct.mipi_dbi }
%struct.mipi_dbi = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ILI9225_DISPLAY_CONTROL_1 = common dso_local global i32 0, align 4
@ILI9225_POWER_CONTROL_2 = common dso_local global i32 0, align 4
@ILI9225_POWER_CONTROL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @ili9225_pipe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ili9225_pipe_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.mipi_dbi_dev*, align 8
  %4 = alloca %struct.mipi_dbi*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %5 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %6 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32 %8)
  store %struct.mipi_dbi_dev* %9, %struct.mipi_dbi_dev** %3, align 8
  %10 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %10, i32 0, i32 1
  store %struct.mipi_dbi* %11, %struct.mipi_dbi** %4, align 8
  %12 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %20 = load i32, i32* @ILI9225_DISPLAY_CONTROL_1, align 4
  %21 = call i32 @ili9225_command(%struct.mipi_dbi* %19, i32 %20, i32 0)
  %22 = call i32 @msleep(i32 50)
  %23 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %24 = load i32, i32* @ILI9225_POWER_CONTROL_2, align 4
  %25 = call i32 @ili9225_command(%struct.mipi_dbi* %23, i32 %24, i32 7)
  %26 = call i32 @msleep(i32 50)
  %27 = load %struct.mipi_dbi*, %struct.mipi_dbi** %4, align 8
  %28 = load i32, i32* @ILI9225_POWER_CONTROL_1, align 4
  %29 = call i32 @ili9225_command(%struct.mipi_dbi* %27, i32 %28, i32 2562)
  %30 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @ili9225_command(%struct.mipi_dbi*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
