; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_timing_calculation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_timing_calculation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mdfld_dsi_dpi_timing = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_dpi_timing_calculation(%struct.drm_display_mode* %0, %struct.mdfld_dsi_dpi_timing* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.mdfld_dsi_dpi_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %5, align 8
  store %struct.mdfld_dsi_dpi_timing* %1, %struct.mdfld_dsi_dpi_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %66 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %72 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %78 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %84 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %90 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %91, i32 %92, i32 %93)
  %95 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %96 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i8* @mdfld_dsi_dpi_to_byte_clock_count(i32 %97, i32 %98, i32 %99)
  %101 = load %struct.mdfld_dsi_dpi_timing*, %struct.mdfld_dsi_dpi_timing** %6, align 8
  %102 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  ret i32 0
}

declare dso_local i8* @mdfld_dsi_dpi_to_byte_clock_count(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
