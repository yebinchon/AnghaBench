; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_set_avi_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_set_avi_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@AFMT_AVI_INFO0 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO1 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO2 = common dso_local global i64 0, align 8
@AFMT_AVI_INFO3 = common dso_local global i64 0, align 8
@HDMI_INFOFRAME_CONTROL1 = common dso_local global i64 0, align 8
@HDMI_AVI_INFO_LINE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_set_avi_packet(%struct.radeon_device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* @AFMT_AVI_INFO0, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %18, %22
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = or i32 %28, %32
  %34 = call i32 @WREG32(i64 %15, i32 %33)
  %35 = load i64, i64* @AFMT_AVI_INFO1, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = or i32 %50, %54
  %56 = call i32 @WREG32(i64 %37, i32 %55)
  %57 = load i64, i64* @AFMT_AVI_INFO2, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 10
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 11
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 24
  %77 = or i32 %72, %76
  %78 = call i32 @WREG32(i64 %59, i32 %77)
  %79 = load i64, i64* @AFMT_AVI_INFO3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 13
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %84, %88
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 24
  %95 = or i32 %89, %94
  %96 = call i32 @WREG32(i64 %81, i32 %95)
  %97 = load i64, i64* @HDMI_INFOFRAME_CONTROL1, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @HDMI_AVI_INFO_LINE(i32 2)
  %101 = load i32, i32* @HDMI_AVI_INFO_LINE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = call i32 @WREG32_P(i64 %99, i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @HDMI_AVI_INFO_LINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
