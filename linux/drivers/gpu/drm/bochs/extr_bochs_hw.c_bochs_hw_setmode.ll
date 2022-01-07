; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%dx%d @ %d bpp, vy %d\0A\00", align 1
@VBE_DISPI_INDEX_ENABLE = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_BPP = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_XRES = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_YRES = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_BANK = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_VIRT_WIDTH = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_VIRT_HEIGHT = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_X_OFFSET = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_Y_OFFSET = common dso_local global i32 0, align 4
@VBE_DISPI_ENABLED = common dso_local global i32 0, align 4
@VBE_DISPI_LFB_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bochs_hw_setmode(%struct.bochs_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.bochs_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.bochs_device* %0, %struct.bochs_device** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %9 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %14 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %16 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %15, i32 0, i32 2
  store i32 32, i32* %16, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %21 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 8
  %24 = mul nsw i32 %19, %23
  %25 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %26 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %28 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %31 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %35 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %37 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %40 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %43 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %46 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %50 = call i32 @bochs_vga_writeb(%struct.bochs_device* %49, i32 960, i32 32)
  %51 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %52 = load i32, i32* @VBE_DISPI_INDEX_ENABLE, align 4
  %53 = call i32 @bochs_dispi_write(%struct.bochs_device* %51, i32 %52, i32 0)
  %54 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %55 = load i32, i32* @VBE_DISPI_INDEX_BPP, align 4
  %56 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %57 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bochs_dispi_write(%struct.bochs_device* %54, i32 %55, i32 %58)
  %60 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %61 = load i32, i32* @VBE_DISPI_INDEX_XRES, align 4
  %62 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %63 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bochs_dispi_write(%struct.bochs_device* %60, i32 %61, i32 %64)
  %66 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %67 = load i32, i32* @VBE_DISPI_INDEX_YRES, align 4
  %68 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %69 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bochs_dispi_write(%struct.bochs_device* %66, i32 %67, i32 %70)
  %72 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %73 = load i32, i32* @VBE_DISPI_INDEX_BANK, align 4
  %74 = call i32 @bochs_dispi_write(%struct.bochs_device* %72, i32 %73, i32 0)
  %75 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %76 = load i32, i32* @VBE_DISPI_INDEX_VIRT_WIDTH, align 4
  %77 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %78 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bochs_dispi_write(%struct.bochs_device* %75, i32 %76, i32 %79)
  %81 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %82 = load i32, i32* @VBE_DISPI_INDEX_VIRT_HEIGHT, align 4
  %83 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %84 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bochs_dispi_write(%struct.bochs_device* %81, i32 %82, i32 %85)
  %87 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %88 = load i32, i32* @VBE_DISPI_INDEX_X_OFFSET, align 4
  %89 = call i32 @bochs_dispi_write(%struct.bochs_device* %87, i32 %88, i32 0)
  %90 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %91 = load i32, i32* @VBE_DISPI_INDEX_Y_OFFSET, align 4
  %92 = call i32 @bochs_dispi_write(%struct.bochs_device* %90, i32 %91, i32 0)
  %93 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %94 = load i32, i32* @VBE_DISPI_INDEX_ENABLE, align 4
  %95 = load i32, i32* @VBE_DISPI_ENABLED, align 4
  %96 = load i32, i32* @VBE_DISPI_LFB_ENABLED, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @bochs_dispi_write(%struct.bochs_device* %93, i32 %94, i32 %97)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bochs_vga_writeb(%struct.bochs_device*, i32, i32) #1

declare dso_local i32 @bochs_dispi_write(%struct.bochs_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
