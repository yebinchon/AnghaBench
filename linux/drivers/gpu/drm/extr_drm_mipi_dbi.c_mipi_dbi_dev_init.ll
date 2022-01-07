; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_simple_display_pipe_funcs = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@mipi_dbi_formats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dbi_dev_init(%struct.mipi_dbi_dev* %0, %struct.drm_simple_display_pipe_funcs* %1, %struct.drm_display_mode* %2, i32 %3) #0 {
  %5 = alloca %struct.mipi_dbi_dev*, align 8
  %6 = alloca %struct.drm_simple_display_pipe_funcs*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mipi_dbi_dev* %0, %struct.mipi_dbi_dev** %5, align 8
  store %struct.drm_simple_display_pipe_funcs* %1, %struct.drm_simple_display_pipe_funcs** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  store i64 %18, i64* %9, align 8
  %19 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 16, i32* %22, align 4
  %23 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %5, align 8
  %24 = load %struct.drm_simple_display_pipe_funcs*, %struct.drm_simple_display_pipe_funcs** %6, align 8
  %25 = load i32, i32* @mipi_dbi_formats, align 4
  %26 = load i32, i32* @mipi_dbi_formats, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @mipi_dbi_dev_init_with_formats(%struct.mipi_dbi_dev* %23, %struct.drm_simple_display_pipe_funcs* %24, i32 %25, i32 %27, %struct.drm_display_mode* %28, i32 %29, i64 %30)
  ret i32 %31
}

declare dso_local i32 @mipi_dbi_dev_init_with_formats(%struct.mipi_dbi_dev*, %struct.drm_simple_display_pipe_funcs*, i32, i32, %struct.drm_display_mode*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
