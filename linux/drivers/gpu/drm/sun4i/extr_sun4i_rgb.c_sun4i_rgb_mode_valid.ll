; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_rgb.c_sun4i_rgb_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_rgb.c_sun4i_rgb_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sun4i_rgb = type { i32, i64, %struct.sun4i_tcon* }
%struct.sun4i_tcon = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Validating modes...\0A\00", align 1
@MODE_HSYNC_NARROW = common dso_local global i32 0, align 4
@MODE_HSYNC_WIDE = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_BAD_HVALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Horizontal parameters OK\0A\00", align 1
@MODE_VSYNC_NARROW = common dso_local global i32 0, align 4
@MODE_VSYNC_WIDE = common dso_local global i32 0, align 4
@MODE_V_ILLEGAL = common dso_local global i32 0, align 4
@MODE_BAD_VVALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Vertical parameters OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"RGB panel used, skipping clock rate checks\00", align 1
@SUN4I_RGB_DOTCLOCK_TOLERANCE_PER_MILLE = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Clock rate OK\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* @sun4i_rgb_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_rgb_mode_valid(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.sun4i_rgb*, align 8
  %7 = alloca %struct.sun4i_tcon*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = call %struct.sun4i_rgb* @drm_encoder_to_sun4i_rgb(%struct.drm_encoder* %14)
  store %struct.sun4i_rgb* %15, %struct.sun4i_rgb** %6, align 8
  %16 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %6, align 8
  %17 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %16, i32 0, i32 2
  %18 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %17, align 8
  store %struct.sun4i_tcon* %18, %struct.sun4i_tcon** %7, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  %38 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @MODE_HSYNC_NARROW, align 4
  store i32 %42, i32* %3, align 4
  br label %160

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 1023
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @MODE_HSYNC_WIDE, align 4
  store i32 %47, i32* %3, align 4
  br label %160

48:                                               ; preds = %43
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %59, i32* %3, align 4
  br label %160

60:                                               ; preds = %53
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 2047
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 4095
  br i1 %69, label %70, label %72

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @MODE_BAD_HVALUE, align 4
  store i32 %71, i32* %3, align 4
  br label %160

72:                                               ; preds = %65
  %73 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @MODE_VSYNC_NARROW, align 4
  store i32 %77, i32* %3, align 4
  br label %160

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %79, 1023
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @MODE_VSYNC_WIDE, align 4
  store i32 %82, i32* %3, align 4
  br label %160

83:                                               ; preds = %78
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %94, i32* %3, align 4
  br label %160

95:                                               ; preds = %88
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 2047
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 4095
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @MODE_BAD_VVALUE, align 4
  store i32 %106, i32* %3, align 4
  br label %160

107:                                              ; preds = %100
  %108 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %6, align 8
  %110 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %157

115:                                              ; preds = %107
  %116 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %6, align 8
  %117 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  br label %157

121:                                              ; preds = %115
  %122 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %7, align 8
  %123 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %122, i32 0, i32 0
  store i32 6, i32* %123, align 4
  %124 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %7, align 8
  %125 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %124, i32 0, i32 1
  store i32 127, i32* %125, align 4
  %126 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %7, align 8
  %127 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %10, align 8
  %130 = call i64 @clk_round_rate(i32 %128, i64 %129)
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* @SUN4I_RGB_DOTCLOCK_TOLERANCE_PER_MILLE, align 4
  %133 = sub nsw i32 1000, %132
  %134 = sext i32 %133 to i64
  %135 = mul i64 %131, %134
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @do_div(i64 %136, i32 1000)
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %121
  %142 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %142, i32* %3, align 4
  br label %160

143:                                              ; preds = %121
  %144 = load i64, i64* %10, align 8
  %145 = load i32, i32* @SUN4I_RGB_DOTCLOCK_TOLERANCE_PER_MILLE, align 4
  %146 = add nsw i32 1000, %145
  %147 = sext i32 %146 to i64
  %148 = mul i64 %144, %147
  store i64 %148, i64* %12, align 8
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @do_div(i64 %149, i32 1000)
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %155, i32* %3, align 4
  br label %160

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %120, %113
  %158 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* @MODE_OK, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %154, %141, %105, %93, %81, %76, %70, %58, %46, %41
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.sun4i_rgb* @drm_encoder_to_sun4i_rgb(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
