; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }

@__const.optc1_set_test_pattern.src_color = private unnamed_addr constant [6 x i32] [i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0], align 16
@TEST_PATTERN_COLOR_FORMAT_BPC_12 = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_CEA = common dso_local global i32 0, align 4
@TEST_PATTERN_DYN_RANGE_VESA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_COLORSQUARES_RGB = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_PARAMETERS = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_VRES = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_HRES = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_CONTROL = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_EN = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_MODE = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_COLOR_FORMAT = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_VERTICALBARS = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_HORIZONTALBARS = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_COLOR = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_MASK = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_DATA = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_DUALRAMP_RGB = common dso_local global i32 0, align 4
@TEST_PATTERN_MODE_SINGLERAMP_RGB = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_INC0 = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_INC1 = common dso_local global i32 0, align 4
@OTG_TEST_PATTERN_RAMP0_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, i32, i32)* @optc1_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optc1_set_test_pattern(%struct.timing_generator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.optc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %19)
  store %struct.optc* %20, %struct.optc** %7, align 8
  store i32 16, i32* %13, align 4
  %21 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([6 x i32]* @__const.optc1_set_test_pattern.src_color to i8*), i64 24, i1 false)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %28 [
    i32 138, label %23
    i32 137, label %24
    i32 140, label %25
    i32 139, label %26
  ]

23:                                               ; preds = %3
  store i32 129, i32* %8, align 4
  br label %29

24:                                               ; preds = %3
  store i32 128, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  store i32 130, i32* %8, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @TEST_PATTERN_COLOR_FORMAT_BPC_12, align 4
  store i32 %27, i32* %8, align 4
  br label %29

28:                                               ; preds = %3
  store i32 128, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %26, %25, %24, %23
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %200 [
    i32 135, label %31
    i32 134, label %31
    i32 132, label %54
    i32 133, label %54
    i32 136, label %131
    i32 131, label %193
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 134
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @TEST_PATTERN_DYN_RANGE_CEA, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @TEST_PATTERN_DYN_RANGE_VESA, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @TEST_PATTERN_MODE_COLORSQUARES_RGB, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %42 = load i32, i32* @OTG_TEST_PATTERN_VRES, align 4
  %43 = load i32, i32* @OTG_TEST_PATTERN_HRES, align 4
  %44 = call i32 @REG_UPDATE_2(i32 %41, i32 %42, i32 6, i32 %43, i32 6)
  %45 = load i32, i32* @OTG_TEST_PATTERN_CONTROL, align 4
  %46 = load i32, i32* @OTG_TEST_PATTERN_EN, align 4
  %47 = load i32, i32* @OTG_TEST_PATTERN_MODE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @OTG_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @OTG_TEST_PATTERN_COLOR_FORMAT, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @REG_UPDATE_4(i32 %45, i32 %46, i32 1, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  br label %201

54:                                               ; preds = %29, %29
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @TEST_PATTERN_MODE_VERTICALBARS, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @TEST_PATTERN_MODE_HORIZONTALBARS, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %67 [
    i32 129, label %64
    i32 128, label %65
    i32 130, label %66
  ]

64:                                               ; preds = %61
  store i32 6, i32* %14, align 4
  br label %68

65:                                               ; preds = %61
  store i32 8, i32* %14, align 4
  br label %68

66:                                               ; preds = %61
  store i32 10, i32* %14, align 4
  br label %68

67:                                               ; preds = %61
  store i32 8, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %66, %65, %64
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 6
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %77, %78
  %80 = ashr i32 %76, %79
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 16, %84
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, %85
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %69

94:                                               ; preds = %69
  %95 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %96 = call i32 @REG_WRITE(i32 %95, i32 0)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %113, %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 6
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = shl i32 1, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* @OTG_TEST_PATTERN_COLOR, align 4
  %104 = load i32, i32* @OTG_TEST_PATTERN_MASK, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @OTG_TEST_PATTERN_DATA, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @REG_SET_2(i32 %103, i32 0, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %97

116:                                              ; preds = %97
  %117 = load i32, i32* @OTG_TEST_PATTERN_COLOR, align 4
  %118 = load i32, i32* @OTG_TEST_PATTERN_MASK, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @OTG_TEST_PATTERN_DATA, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @REG_SET_2(i32 %117, i32 0, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @OTG_TEST_PATTERN_CONTROL, align 4
  %124 = load i32, i32* @OTG_TEST_PATTERN_EN, align 4
  %125 = load i32, i32* @OTG_TEST_PATTERN_MODE, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @OTG_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %128 = load i32, i32* @OTG_TEST_PATTERN_COLOR_FORMAT, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @REG_UPDATE_4(i32 %123, i32 %124, i32 1, i32 %125, i32 %126, i32 %127, i32 0, i32 %128, i32 %129)
  br label %201

131:                                              ; preds = %29
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @TEST_PATTERN_MODE_DUALRAMP_RGB, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @TEST_PATTERN_MODE_SINGLERAMP_RGB, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %144 [
    i32 129, label %141
    i32 128, label %142
    i32 130, label %143
  ]

141:                                              ; preds = %138
  store i32 6, i32* %14, align 4
  br label %145

142:                                              ; preds = %138
  store i32 8, i32* %14, align 4
  br label %145

143:                                              ; preds = %138
  store i32 10, i32* %14, align 4
  br label %145

144:                                              ; preds = %138
  store i32 8, i32* %14, align 4
  br label %145

145:                                              ; preds = %144, %143, %142, %141
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %8, align 4
  switch i32 %149, label %179 [
    i32 129, label %150
    i32 128, label %159
    i32 130, label %168
  ]

150:                                              ; preds = %145
  %151 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %152 = load i32, i32* @OTG_TEST_PATTERN_INC0, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* @OTG_TEST_PATTERN_INC1, align 4
  %155 = load i32, i32* @OTG_TEST_PATTERN_HRES, align 4
  %156 = load i32, i32* @OTG_TEST_PATTERN_VRES, align 4
  %157 = load i32, i32* @OTG_TEST_PATTERN_RAMP0_OFFSET, align 4
  %158 = call i32 @REG_UPDATE_5(i32 %151, i32 %152, i32 %153, i32 %154, i32 0, i32 %155, i32 6, i32 %156, i32 6, i32 %157, i32 0)
  br label %180

159:                                              ; preds = %145
  %160 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %161 = load i32, i32* @OTG_TEST_PATTERN_INC0, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @OTG_TEST_PATTERN_INC1, align 4
  %164 = load i32, i32* @OTG_TEST_PATTERN_HRES, align 4
  %165 = load i32, i32* @OTG_TEST_PATTERN_VRES, align 4
  %166 = load i32, i32* @OTG_TEST_PATTERN_RAMP0_OFFSET, align 4
  %167 = call i32 @REG_UPDATE_5(i32 %160, i32 %161, i32 %162, i32 %163, i32 0, i32 %164, i32 8, i32 %165, i32 6, i32 %166, i32 0)
  br label %180

168:                                              ; preds = %145
  %169 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %170 = load i32, i32* @OTG_TEST_PATTERN_INC0, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @OTG_TEST_PATTERN_INC1, align 4
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 2
  %175 = load i32, i32* @OTG_TEST_PATTERN_HRES, align 4
  %176 = load i32, i32* @OTG_TEST_PATTERN_VRES, align 4
  %177 = load i32, i32* @OTG_TEST_PATTERN_RAMP0_OFFSET, align 4
  %178 = call i32 @REG_UPDATE_5(i32 %169, i32 %170, i32 %171, i32 %172, i32 %174, i32 %175, i32 8, i32 %176, i32 5, i32 %177, i32 24576)
  br label %180

179:                                              ; preds = %145
  br label %180

180:                                              ; preds = %179, %168, %159, %150
  %181 = load i32, i32* @OTG_TEST_PATTERN_COLOR, align 4
  %182 = call i32 @REG_WRITE(i32 %181, i32 0)
  %183 = load i32, i32* @OTG_TEST_PATTERN_CONTROL, align 4
  %184 = call i32 @REG_WRITE(i32 %183, i32 0)
  %185 = load i32, i32* @OTG_TEST_PATTERN_CONTROL, align 4
  %186 = load i32, i32* @OTG_TEST_PATTERN_EN, align 4
  %187 = load i32, i32* @OTG_TEST_PATTERN_MODE, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @OTG_TEST_PATTERN_DYNAMIC_RANGE, align 4
  %190 = load i32, i32* @OTG_TEST_PATTERN_COLOR_FORMAT, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @REG_SET_4(i32 %185, i32 0, i32 %186, i32 1, i32 %187, i32 %188, i32 %189, i32 0, i32 %190, i32 %191)
  br label %201

193:                                              ; preds = %29
  %194 = load i32, i32* @OTG_TEST_PATTERN_CONTROL, align 4
  %195 = call i32 @REG_WRITE(i32 %194, i32 0)
  %196 = load i32, i32* @OTG_TEST_PATTERN_COLOR, align 4
  %197 = call i32 @REG_WRITE(i32 %196, i32 0)
  %198 = load i32, i32* @OTG_TEST_PATTERN_PARAMETERS, align 4
  %199 = call i32 @REG_WRITE(i32 %198, i32 0)
  br label %201

200:                                              ; preds = %29
  br label %201

201:                                              ; preds = %200, %193, %180, %116, %38
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
