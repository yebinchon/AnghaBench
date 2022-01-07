; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { i64, %struct.TYPE_2__, %struct.decon_context* }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.decon_context = type { i32, i64 }

@IFTYPE_HDMI = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@VIDOUT_LCD_ON = common dso_local global i32 0, align 4
@VIDOUT_INTERLACE_EN_F = common dso_local global i32 0, align 4
@VIDOUT_COMMAND_IF = common dso_local global i32 0, align 4
@VIDOUT_RGB_IF = common dso_local global i32 0, align 4
@DECON_VIDOUTCON0 = common dso_local global i64 0, align 8
@DECON_VIDTCON2 = common dso_local global i64 0, align 8
@DECON_VIDTCON00 = common dso_local global i64 0, align 8
@DECON_VIDTCON01 = common dso_local global i64 0, align 8
@DECON_VIDTCON10 = common dso_local global i64 0, align 8
@DECON_VIDTCON11 = common dso_local global i64 0, align 8
@DECON_VIDCON0 = common dso_local global i32 0, align 4
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@DECON_UPDATE = common dso_local global i32 0, align 4
@STANDALONE_UPDATE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_commit(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %9 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %9, i32 0, i32 2
  %11 = load %struct.decon_context*, %struct.decon_context** %10, align 8
  store %struct.decon_context* %11, %struct.decon_context** %3, align 8
  %12 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %16 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFTYPE_HDMI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %1
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 10
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 6
  store i64 %25, i64* %27, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 92
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 7
  store i64 %31, i64* %33, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %21
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %56 = call i32 @decon_setup_trigger(%struct.decon_context* %55)
  %57 = load i32, i32* @VIDOUT_LCD_ON, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @VIDOUT_INTERLACE_EN_F, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %66 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @VIDOUT_COMMAND_IF, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @VIDOUT_RGB_IF, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %80 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DECON_VIDOUTCON0, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 2
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @VIDTCON2_LINEVAL(i32 %92)
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = call i32 @VIDTCON2_HOZVAL(i64 %97)
  %99 = or i32 %93, %98
  store i32 %99, i32* %6, align 4
  br label %112

100:                                              ; preds = %77
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @VIDTCON2_LINEVAL(i32 %104)
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 1
  %110 = call i32 @VIDTCON2_HOZVAL(i64 %109)
  %111 = or i32 %105, %110
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %100, %87
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %115 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DECON_VIDTCON2, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %121 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %218, label %124

124:                                              ; preds = %112
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %124
  %142 = load i32, i32* %7, align 4
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %141, %124
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @VIDTCON00_VBPD_F(i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 1
  %151 = call i32 @VIDTCON00_VFPD_F(i32 %150)
  %152 = or i32 %148, %151
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %155 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DECON_VIDTCON00, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %162, %165
  %167 = sub nsw i32 %166, 1
  %168 = call i32 @VIDTCON01_VSPW_F(i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %171 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DECON_VIDTCON01, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  %176 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %177 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %176, i32 0, i32 9
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %178, %181
  %183 = sub nsw i64 %182, 1
  %184 = call i32 @VIDTCON10_HBPD_F(i64 %183)
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %189 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = sub nsw i64 %191, 1
  %193 = call i32 @VIDTCON10_HFPD_F(i64 %192)
  %194 = or i32 %184, %193
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %197 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DECON_VIDTCON10, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 %195, i64 %200)
  %202 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %203 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %206 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = sub nsw i64 %208, 1
  %210 = call i32 @VIDTCON11_HSPW_F(i64 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %213 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @DECON_VIDTCON11, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 %211, i64 %216)
  br label %218

218:                                              ; preds = %145, %112
  %219 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %220 = load i32, i32* @DECON_VIDCON0, align 4
  %221 = load i32, i32* @VIDCON0_ENVID, align 4
  %222 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @decon_set_bits(%struct.decon_context* %219, i32 %220, i32 %223, i32 -1)
  %225 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %226 = load i32, i32* @DECON_UPDATE, align 4
  %227 = load i32, i32* @STANDALONE_UPDATE_F, align 4
  %228 = call i32 @decon_set_bits(%struct.decon_context* %225, i32 %226, i32 %227, i32 -1)
  ret void
}

declare dso_local i32 @decon_setup_trigger(%struct.decon_context*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VIDTCON2_LINEVAL(i32) #1

declare dso_local i32 @VIDTCON2_HOZVAL(i64) #1

declare dso_local i32 @VIDTCON00_VBPD_F(i32) #1

declare dso_local i32 @VIDTCON00_VFPD_F(i32) #1

declare dso_local i32 @VIDTCON01_VSPW_F(i32) #1

declare dso_local i32 @VIDTCON10_HBPD_F(i64) #1

declare dso_local i32 @VIDTCON10_HFPD_F(i64) #1

declare dso_local i32 @VIDTCON11_HSPW_F(i64) #1

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
