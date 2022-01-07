; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i64, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@MODE_VIRTUAL_X = common dso_local global i32 0, align 4
@MODE_VIRTUAL_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Processing mode %dx%d@%d with pixel clock %d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Pruning mode: Horizontal Back Porch out of range\00", align 1
@MODE_HBLANK_WIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Pruning mode: Horizontal Front Porch out of range\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Pruning mode: Horizontal Sync Width out of range\00", align 1
@MODE_HSYNC_WIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Pruning mode: Vertical Back Porch out of range\00", align 1
@MODE_VBLANK_WIDE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Pruning mode: Vertical Front Porch out of range\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Pruning mode: Vertical Sync Width out of range\00", align 1
@MODE_VSYNC_WIDE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Pruning mode: pixel clock too high\00", align 1
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_BAD_WIDTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Pruning mode: exceeds defined bandwidth limit\00", align 1
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @tilcdc_crtc_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tilcdc_crtc_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.tilcdc_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %17, align 8
  store %struct.tilcdc_drm_private* %18, %struct.tilcdc_drm_private** %6, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %23 = call i32 @tilcdc_crtc_max_width(%struct.drm_crtc* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @MODE_VIRTUAL_X, align 4
  store i32 %26, i32* %3, align 4
  br label %184

27:                                               ; preds = %2
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 15
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MODE_VIRTUAL_X, align 4
  store i32 %34, i32* %3, align 4
  br label %184

35:                                               ; preds = %27
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2048
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @MODE_VIRTUAL_Y, align 4
  store i32 %41, i32* %3, align 4
  br label %184

42:                                               ; preds = %35
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %49)
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %50, i64 %53)
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %98, -1024
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %42
  %102 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @MODE_HBLANK_WIDE, align 4
  store i32 %103, i32* %3, align 4
  br label %184

104:                                              ; preds = %42
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %106, -1024
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @MODE_HBLANK_WIDE, align 4
  store i32 %111, i32* %3, align 4
  br label %184

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %114, -1024
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @MODE_HSYNC_WIDE, align 4
  store i32 %119, i32* %3, align 4
  br label %184

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, -256
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @MODE_VBLANK_WIDE, align 4
  store i32 %126, i32* %3, align 4
  br label %184

127:                                              ; preds = %120
  %128 = load i32, i32* %12, align 4
  %129 = and i32 %128, -256
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @MODE_VBLANK_WIDE, align 4
  store i32 %133, i32* %3, align 4
  br label %184

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %136, -64
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* @MODE_VSYNC_WIDE, align 4
  store i32 %141, i32* %3, align 4
  br label %184

142:                                              ; preds = %134
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %147 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %152, i32* %3, align 4
  br label %184

153:                                              ; preds = %142
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %158 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* @MODE_BAD_WIDTH, align 4
  store i32 %162, i32* %3, align 4
  br label %184

163:                                              ; preds = %153
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %166, %169
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %172 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %171)
  %173 = mul i32 %170, %172
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %176 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp ugt i32 %174, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %181 = load i32, i32* @MODE_BAD, align 4
  store i32 %181, i32* %3, align 4
  br label %184

182:                                              ; preds = %163
  %183 = load i32, i32* @MODE_OK, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %179, %161, %150, %139, %131, %124, %117, %109, %101, %40, %33, %25
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @tilcdc_crtc_max_width(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
