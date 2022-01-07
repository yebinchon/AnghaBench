; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dbi_dev = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @st7586_pipe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st7586_pipe_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.mipi_dbi_dev*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %4 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %5 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32 %7)
  store %struct.mipi_dbi_dev* %8, %struct.mipi_dbi_dev** %3, align 8
  %9 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %16, i32 0, i32 1
  %18 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %19 = call i32 @mipi_dbi_command(i32* %17, i32 %18)
  %20 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mipi_dbi_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
