; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vclk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vclk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.meson_drm = type { i32 }

@MESON_VCLK_TARGET_CVBS = common dso_local global i32 0, align 4
@MESON_VCLK_TARGET_DMT = common dso_local global i32 0, align 4
@VID_PLL_DIV_5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fatal Error, invalid HDMI-TX freq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Fatal Error, invalid HDMI venc freq %d\0A\00", align 1
@params = common dso_local global %struct.TYPE_2__* null, align 8
@MESON_VCLK_HDMI_ENCI_54000 = common dso_local global i32 0, align 4
@MESON_VCLK_HDMI_DDR_54000 = common dso_local global i32 0, align 4
@MESON_VCLK_HDMI_DDR_148500 = common dso_local global i32 0, align 4
@MESON_VCLK_HDMI_148500 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Fatal Error, invalid HDMI vclk freq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_vclk_setup(%struct.meson_drm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.meson_drm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MESON_VCLK_TARGET_CVBS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %22 = call i32 @meson_venci_cvbs_clock_config(%struct.meson_drm* %21)
  br label %184

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MESON_VCLK_TARGET_DMT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %29, 10
  %31 = load i32, i32* @VID_PLL_DIV_5, align 4
  %32 = call i32 @meson_vclk_set(%struct.meson_drm* %28, i32 %30, i32 0, i32 0, i32 0, i32 %31, i32 2, i32 1, i32 1, i32 0, i32 0)
  br label %184

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = udiv i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %184

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = udiv i32 %44, %45
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %184

52:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %127, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %130

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FREQ_1000_1001(i32 %77)
  %79 = icmp eq i32 %71, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %70, %61
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %81, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 1, i32* %13, align 4
  br label %91

90:                                               ; preds = %80
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @MESON_VCLK_HDMI_ENCI_54000, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %127

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @MESON_VCLK_HDMI_DDR_54000, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %127

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @MESON_VCLK_HDMI_DDR_148500, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %127

116:                                              ; preds = %111, %107
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @MESON_VCLK_HDMI_148500, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %127

125:                                              ; preds = %120, %116
  br label %130

126:                                              ; preds = %70
  br label %127

127:                                              ; preds = %126, %124, %115, %106, %98
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %53

130:                                              ; preds = %125, %53
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %184

141:                                              ; preds = %130
  %142 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %156 = load i32, i32* %14, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %162 = load i32, i32* %14, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %168 = load i32, i32* %14, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @params, align 8
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @meson_vclk_set(%struct.meson_drm* %142, i32 %148, i32 %154, i32 %160, i32 %166, i32 %172, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %141, %138, %49, %40, %27, %20
  ret void
}

declare dso_local i32 @meson_venci_cvbs_clock_config(%struct.meson_drm*) #1

declare dso_local i32 @meson_vclk_set(%struct.meson_drm*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @FREQ_1000_1001(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
