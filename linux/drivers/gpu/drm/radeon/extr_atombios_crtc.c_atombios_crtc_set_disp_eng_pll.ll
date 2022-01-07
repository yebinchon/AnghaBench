; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_disp_eng_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_set_disp_eng_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.set_pixel_clock = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@SetPixelClock = common dso_local global i32 0, align 4
@ATOM_CRTC_INVALID = common dso_local global i32 0, align 4
@ATOM_DCPLL = common dso_local global i8* null, align 8
@ATOM_EXT_PLL1 = common dso_local global i8* null, align 8
@ATOM_PPLL0 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @atombios_crtc_set_disp_eng_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_crtc_set_disp_eng_pll(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.set_pixel_clock, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%union.set_pixel_clock* %8, i32 0, i32 16)
  %10 = load i32, i32* @COMMAND, align 4
  %11 = load i32, i32* @SetPixelClock, align 4
  %12 = call i32 @GetIndexIntoMasterTable(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @atom_parse_cmd_header(i32 %16, i32 %17, i32* %5, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %83

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %71 [
    i32 1, label %23
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %66 [
    i32 5, label %25
    i32 6, label %36
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @ATOM_CRTC_INVALID, align 4
  %27 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @ATOM_DCPLL, align 8
  %34 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %70

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @ASIC_IS_DCE61(%struct.radeon_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = call i32 @ASIC_IS_DCE8(%struct.radeon_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %36
  %49 = load i8*, i8** @ATOM_EXT_PLL1, align 8
  %50 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %65

52:                                               ; preds = %44
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** @ATOM_PPLL0, align 8
  %58 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %64

60:                                               ; preds = %52
  %61 = load i8*, i8** @ATOM_DCPLL, align 8
  %62 = bitcast %union.set_pixel_clock* %8 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %48
  br label %70

66:                                               ; preds = %23
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %83

70:                                               ; preds = %65, %25
  br label %75

71:                                               ; preds = %21
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %83

75:                                               ; preds = %70
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = bitcast %union.set_pixel_clock* %8 to i32*
  %82 = call i32 @atom_execute_table(i32 %79, i32 %80, i32* %81)
  br label %83

83:                                               ; preds = %75, %71, %66, %20
  ret void
}

declare dso_local i32 @memset(%union.set_pixel_clock*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
