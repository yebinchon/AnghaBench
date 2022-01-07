; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_sti_vid_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_sti_vid_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_vid = type { i64 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64 }

@VID_CTL = common dso_local global i64 0, align 8
@VID_CTL_IGNORE = common dso_local global i32 0, align 4
@VID_VPO = common dso_local global i64 0, align 8
@VID_VPS = common dso_local global i64 0, align 8
@VID_MIN_HD_HEIGHT = common dso_local global i32 0, align 4
@VID_MPR0_BT709 = common dso_local global i32 0, align 4
@VID_MPR0 = common dso_local global i64 0, align 8
@VID_MPR1_BT709 = common dso_local global i32 0, align 4
@VID_MPR1 = common dso_local global i64 0, align 8
@VID_MPR2_BT709 = common dso_local global i32 0, align 4
@VID_MPR2 = common dso_local global i64 0, align 8
@VID_MPR3_BT709 = common dso_local global i32 0, align 4
@VID_MPR3 = common dso_local global i64 0, align 8
@VID_MPR0_BT601 = common dso_local global i32 0, align 4
@VID_MPR1_BT601 = common dso_local global i32 0, align 4
@VID_MPR2_BT601 = common dso_local global i32 0, align 4
@VID_MPR3_BT601 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_vid_commit(%struct.sti_vid* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.sti_vid*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sti_vid* %0, %struct.sti_vid** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 5
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  store %struct.drm_crtc* %19, %struct.drm_crtc** %5, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %6, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = call i32 @clamp_val(i32 %30, i32 0, i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  %47 = call i32 @clamp_val(i32 %40, i32 0, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 16
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ALIGN(i32 %52, i32 2)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ALIGN(i32 %54, i32 2)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %57 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VID_CTL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @VID_CTL_IGNORE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %68 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VID_CTL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = bitcast %struct.drm_display_mode* %73 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @sti_vtg_get_line_number(i64 %77, i64 %79, i32 %74)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = bitcast %struct.drm_display_mode* %81 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @sti_vtg_get_line_number(i64 %88, i64 %90, i32 %85)
  store i32 %91, i32* %15, align 4
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = bitcast %struct.drm_display_mode* %92 to { i64, i64 }*
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @sti_vtg_get_pixel_number(i64 %96, i64 %98, i32 %93)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = bitcast %struct.drm_display_mode* %100 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @sti_vtg_get_pixel_number(i64 %107, i64 %109, i32 %104)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 %111, 16
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %116 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VID_VPO, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %126 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VID_VPS, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @VID_MIN_HD_HEIGHT, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %2
  %135 = load i32, i32* @VID_MPR0_BT709, align 4
  %136 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %137 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @VID_MPR0, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load i32, i32* @VID_MPR1_BT709, align 4
  %143 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %144 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VID_MPR1, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load i32, i32* @VID_MPR2_BT709, align 4
  %150 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %151 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VID_MPR2, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load i32, i32* @VID_MPR3_BT709, align 4
  %157 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %158 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VID_MPR3, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel(i32 %156, i64 %161)
  br label %192

163:                                              ; preds = %2
  %164 = load i32, i32* @VID_MPR0_BT601, align 4
  %165 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %166 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @VID_MPR0, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %164, i64 %169)
  %171 = load i32, i32* @VID_MPR1_BT601, align 4
  %172 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %173 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @VID_MPR1, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i32 %171, i64 %176)
  %178 = load i32, i32* @VID_MPR2_BT601, align 4
  %179 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %180 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VID_MPR2, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  %185 = load i32, i32* @VID_MPR3_BT601, align 4
  %186 = load %struct.sti_vid*, %struct.sti_vid** %3, align 8
  %187 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @VID_MPR3, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i32 %185, i64 %190)
  br label %192

192:                                              ; preds = %163, %134
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sti_vtg_get_line_number(i64, i64, i32) #1

declare dso_local i32 @sti_vtg_get_pixel_number(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
