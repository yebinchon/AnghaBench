; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.TYPE_4__, %struct.decon_context* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.decon_context = type { i64, i32, i64 }

@VIDTCON0 = common dso_local global i64 0, align 8
@VIDTCON1 = common dso_local global i64 0, align 8
@VIDTCON2 = common dso_local global i64 0, align 8
@VIDTCON3 = common dso_local global i64 0, align 8
@VIDTCON4 = common dso_local global i64 0, align 8
@LINECNT_OP_THRESHOLD = common dso_local global i64 0, align 8
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@VIDCON0 = common dso_local global i64 0, align 8
@VCLKCON1 = common dso_local global i64 0, align 8
@VCLKCON2 = common dso_local global i64 0, align 8
@DECON_UPDATE = common dso_local global i64 0, align 8
@DECON_UPDATE_STANDALONE_F = common dso_local global i32 0, align 4
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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %13 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %13, i32 0, i32 1
  %15 = load %struct.decon_context*, %struct.decon_context** %14, align 8
  store %struct.decon_context* %15, %struct.decon_context** %3, align 8
  %16 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.drm_display_mode* %20, %struct.drm_display_mode** %4, align 8
  %21 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %22 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %212

26:                                               ; preds = %1
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  br label %212

37:                                               ; preds = %31
  %38 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %39 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %133, label %42

42:                                               ; preds = %37
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @VIDTCON0_VBPD(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @VIDTCON0_VFPD(i32 %68)
  %70 = or i32 %66, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %73 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VIDTCON0, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @VIDTCON1_VSPW(i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %83 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VIDTCON1, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @VIDTCON2_HBPD(i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @VIDTCON2_HFPD(i32 %113)
  %115 = or i32 %111, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %118 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @VIDTCON2, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @VIDTCON3_HSPW(i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %128 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VIDTCON3, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  br label %133

133:                                              ; preds = %42, %37
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = call i32 @VIDTCON4_LINEVAL(i32 %137)
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 11
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = call i32 @VIDTCON4_HOZVAL(i64 %142)
  %144 = or i32 %138, %143
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %147 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @VIDTCON4, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %157 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @LINECNT_OP_THRESHOLD, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load i32, i32* @VIDCON0_ENVID, align 4
  %163 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %167 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VIDCON0, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writel(i32 %165, i64 %170)
  %172 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %174 = call i32 @decon_calc_clkdiv(%struct.decon_context* %172, %struct.drm_display_mode* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %195

177:                                              ; preds = %133
  %178 = load i32, i32* %6, align 4
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @VCLKCON1_CLKVAL_NUM_VCLK(i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %183 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @VCLKCON1, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 %181, i64 %186)
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %190 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VCLKCON2, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel(i32 %188, i64 %193)
  br label %195

195:                                              ; preds = %177, %133
  %196 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %197 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DECON_UPDATE, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @readl(i64 %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* @DECON_UPDATE_STANDALONE_F, align 4
  %203 = load i32, i32* %5, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %207 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @DECON_UPDATE, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writel(i32 %205, i64 %210)
  br label %212

212:                                              ; preds = %195, %36, %25
  ret void
}

declare dso_local i32 @VIDTCON0_VBPD(i32) #1

declare dso_local i32 @VIDTCON0_VFPD(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @VIDTCON1_VSPW(i32) #1

declare dso_local i32 @VIDTCON2_HBPD(i32) #1

declare dso_local i32 @VIDTCON2_HFPD(i32) #1

declare dso_local i32 @VIDTCON3_HSPW(i32) #1

declare dso_local i32 @VIDTCON4_LINEVAL(i32) #1

declare dso_local i32 @VIDTCON4_HOZVAL(i64) #1

declare dso_local i32 @decon_calc_clkdiv(%struct.decon_context*, %struct.drm_display_mode*) #1

declare dso_local i32 @VCLKCON1_CLKVAL_NUM_VCLK(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
