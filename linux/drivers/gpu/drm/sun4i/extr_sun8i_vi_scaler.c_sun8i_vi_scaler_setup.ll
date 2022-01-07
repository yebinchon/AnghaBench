; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.drm_format_info = type { i32, i32 }

@SUN8I_VI_SCALER_PHASE_FRAC = common dso_local global i32 0, align 4
@SUN8I_VI_SCALER_SCALE_FRAC = common dso_local global i32 0, align 4
@SUN50I_SCALER_VSU_SCALE_MODE_UI = common dso_local global i32 0, align 4
@SUN50I_SCALER_VSU_SCALE_MODE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun8i_vi_scaler_setup(%struct.sun8i_mixer* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.drm_format_info* %10) #0 {
  %12 = alloca %struct.sun8i_mixer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.drm_format_info*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.drm_format_info* %10, %struct.drm_format_info** %22, align 8
  %29 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @sun8i_vi_scaler_base(%struct.sun8i_mixer* %29, i32 %30)
  store i32 %31, i32* %27, align 4
  %32 = load i32, i32* @SUN8I_VI_SCALER_PHASE_FRAC, align 4
  %33 = sub nsw i32 %32, 16
  %34 = load i32, i32* %20, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* @SUN8I_VI_SCALER_PHASE_FRAC, align 4
  %37 = sub nsw i32 %36, 16
  %38 = load i32, i32* %21, align 4
  %39 = shl i32 %38, %37
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* @SUN8I_VI_SCALER_SCALE_FRAC, align 4
  %41 = sub nsw i32 %40, 16
  %42 = load i32, i32* %18, align 4
  %43 = shl i32 %42, %41
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* @SUN8I_VI_SCALER_SCALE_FRAC, align 4
  %45 = sub nsw i32 %44, 16
  %46 = load i32, i32* %19, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @SUN8I_VI_SCALER_SIZE(i32 %48, i32 %49)
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @SUN8I_VI_SCALER_SIZE(i32 %51, i32 %52)
  store i32 %53, i32* %26, align 4
  %54 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %55 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %75

58:                                               ; preds = %11
  %59 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %60 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32, i32* %20, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %21, align 4
  %67 = ashr i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* @SUN8I_VI_SCALER_SCALE_FRAC, align 4
  %70 = sub nsw i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = sub i64 %68, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %24, align 4
  br label %78

75:                                               ; preds = %58, %11
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %21, align 4
  store i32 %77, i32* %24, align 4
  br label %78

78:                                               ; preds = %75, %63
  %79 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %80 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %78
  %86 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %87 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %92 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @SUN50I_SCALER_VSU_SCALE_MODE_UI, align 4
  store i32 %96, i32* %28, align 4
  br label %99

97:                                               ; preds = %90, %85
  %98 = load i32, i32* @SUN50I_SCALER_VSU_SCALE_MODE_NORMAL, align 4
  store i32 %98, i32* %28, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %101 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %27, align 4
  %105 = call i32 @SUN50I_SCALER_VSU_SCALE_MODE(i32 %104)
  %106 = load i32, i32* %28, align 4
  %107 = call i32 @regmap_write(i32 %103, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %78
  %109 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %110 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %27, align 4
  %114 = call i32 @SUN8I_SCALER_VSU_OUTSIZE(i32 %113)
  %115 = load i32, i32* %26, align 4
  %116 = call i32 @regmap_write(i32 %112, i32 %114, i32 %115)
  %117 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %118 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %27, align 4
  %122 = call i32 @SUN8I_SCALER_VSU_YINSIZE(i32 %121)
  %123 = load i32, i32* %25, align 4
  %124 = call i32 @regmap_write(i32 %120, i32 %122, i32 %123)
  %125 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %126 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @SUN8I_SCALER_VSU_YHSTEP(i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @regmap_write(i32 %128, i32 %130, i32 %131)
  %133 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %134 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %27, align 4
  %138 = call i32 @SUN8I_SCALER_VSU_YVSTEP(i32 %137)
  %139 = load i32, i32* %19, align 4
  %140 = call i32 @regmap_write(i32 %136, i32 %138, i32 %139)
  %141 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %142 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %27, align 4
  %146 = call i32 @SUN8I_SCALER_VSU_YHPHASE(i32 %145)
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @regmap_write(i32 %144, i32 %146, i32 %147)
  %149 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %150 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %27, align 4
  %154 = call i32 @SUN8I_SCALER_VSU_YVPHASE(i32 %153)
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @regmap_write(i32 %152, i32 %154, i32 %155)
  %157 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %158 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %27, align 4
  %162 = call i32 @SUN8I_SCALER_VSU_CINSIZE(i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %165 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sdiv i32 %163, %166
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %170 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %168, %171
  %173 = call i32 @SUN8I_VI_SCALER_SIZE(i32 %167, i32 %172)
  %174 = call i32 @regmap_write(i32 %160, i32 %162, i32 %173)
  %175 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %176 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @SUN8I_SCALER_VSU_CHSTEP(i32 %179)
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %183 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %181, %184
  %186 = call i32 @regmap_write(i32 %178, i32 %180, i32 %185)
  %187 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %188 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @SUN8I_SCALER_VSU_CVSTEP(i32 %191)
  %193 = load i32, i32* %19, align 4
  %194 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %195 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %193, %196
  %198 = call i32 @regmap_write(i32 %190, i32 %192, i32 %197)
  %199 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %200 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %27, align 4
  %204 = call i32 @SUN8I_SCALER_VSU_CHPHASE(i32 %203)
  %205 = load i32, i32* %23, align 4
  %206 = call i32 @regmap_write(i32 %202, i32 %204, i32 %205)
  %207 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %208 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %27, align 4
  %212 = call i32 @SUN8I_SCALER_VSU_CVPHASE(i32 %211)
  %213 = load i32, i32* %24, align 4
  %214 = call i32 @regmap_write(i32 %210, i32 %212, i32 %213)
  %215 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %12, align 8
  %216 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %27, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = load %struct.drm_format_info*, %struct.drm_format_info** %22, align 8
  %223 = call i32 @sun8i_vi_scaler_set_coeff(i32 %218, i32 %219, i32 %220, i32 %221, %struct.drm_format_info* %222)
  ret void
}

declare dso_local i32 @sun8i_vi_scaler_base(%struct.sun8i_mixer*, i32) #1

declare dso_local i32 @SUN8I_VI_SCALER_SIZE(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN50I_SCALER_VSU_SCALE_MODE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_OUTSIZE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YINSIZE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YHSTEP(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YVSTEP(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YHPHASE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_YVPHASE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CINSIZE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CHSTEP(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CVSTEP(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CHPHASE(i32) #1

declare dso_local i32 @SUN8I_SCALER_VSU_CVPHASE(i32) #1

declare dso_local i32 @sun8i_vi_scaler_set_coeff(i32, i32, i32, i32, %struct.drm_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
