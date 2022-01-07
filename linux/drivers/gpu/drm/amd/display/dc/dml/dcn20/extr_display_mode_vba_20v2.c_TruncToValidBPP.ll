; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_TruncToValidBPP.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20v2.c_TruncToValidBPP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_hdmi = common dso_local global i32 0, align 4
@dm_420 = common dso_local global i32 0, align 4
@BPP_INVALID = common dso_local global i32 0, align 4
@dm_444 = common dso_local global i32 0, align 4
@dm_n422 = common dso_local global i32 0, align 4
@dm_s422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i32, i32, i32, i32)* @TruncToValidBPP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TruncToValidBPP(double %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @dm_hdmi, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @dm_420, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load double, double* %7, align 8
  %21 = fcmp oge double %20, 1.800000e+01
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 18, i32* %6, align 4
  br label %209

23:                                               ; preds = %19
  %24 = load double, double* %7, align 8
  %25 = fcmp oge double %24, 1.500000e+01
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 15, i32* %6, align 4
  br label %209

27:                                               ; preds = %23
  %28 = load double, double* %7, align 8
  %29 = fcmp oge double %28, 1.200000e+01
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 12, i32* %6, align 4
  br label %209

31:                                               ; preds = %27
  %32 = load i32, i32* @BPP_INVALID, align 4
  store i32 %32, i32* %6, align 4
  br label %209

33:                                               ; preds = %15
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @dm_444, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load double, double* %7, align 8
  %39 = fcmp oge double %38, 3.600000e+01
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 36, i32* %6, align 4
  br label %209

41:                                               ; preds = %37
  %42 = load double, double* %7, align 8
  %43 = fcmp oge double %42, 3.000000e+01
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 30, i32* %6, align 4
  br label %209

45:                                               ; preds = %41
  %46 = load double, double* %7, align 8
  %47 = fcmp oge double %46, 2.400000e+01
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 24, i32* %6, align 4
  br label %209

49:                                               ; preds = %45
  %50 = load double, double* %7, align 8
  %51 = fcmp oge double %50, 1.800000e+01
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 18, i32* %6, align 4
  br label %209

53:                                               ; preds = %49
  %54 = load i32, i32* @BPP_INVALID, align 4
  store i32 %54, i32* %6, align 4
  br label %209

55:                                               ; preds = %33
  %56 = load double, double* %7, align 8
  %57 = fdiv double %56, 1.500000e+00
  %58 = fcmp oge double %57, 2.400000e+01
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 24, i32* %6, align 4
  br label %209

60:                                               ; preds = %55
  %61 = load double, double* %7, align 8
  %62 = fdiv double %61, 1.500000e+00
  %63 = fcmp oge double %62, 2.000000e+01
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 20, i32* %6, align 4
  br label %209

65:                                               ; preds = %60
  %66 = load double, double* %7, align 8
  %67 = fdiv double %66, 1.500000e+00
  %68 = fcmp oge double %67, 1.600000e+01
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 16, i32* %6, align 4
  br label %209

70:                                               ; preds = %65
  %71 = load i32, i32* @BPP_INVALID, align 4
  store i32 %71, i32* %6, align 4
  br label %209

72:                                               ; preds = %5
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %151

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @dm_420, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load double, double* %7, align 8
  %81 = fcmp olt double %80, 6.000000e+00
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @BPP_INVALID, align 4
  store i32 %83, i32* %6, align 4
  br label %209

84:                                               ; preds = %79
  %85 = load double, double* %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = uitofp i32 %86 to double
  %88 = fmul double 1.500000e+00, %87
  %89 = fsub double %88, 0.000000e+00
  %90 = fcmp oge double %85, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = uitofp i32 %92 to double
  %94 = fmul double 1.500000e+00, %93
  %95 = fsub double %94, 0.000000e+00
  %96 = fptoui double %95 to i32
  store i32 %96, i32* %6, align 4
  br label %209

97:                                               ; preds = %84
  %98 = load double, double* %7, align 8
  %99 = fmul double 1.600000e+01, %98
  %100 = fptosi double %99 to i32
  %101 = call i32 @dml_floor(i32 %100, i32 1)
  %102 = sdiv i32 %101, 16
  store i32 %102, i32* %6, align 4
  br label %209

103:                                              ; preds = %75
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @dm_n422, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %103
  %108 = load double, double* %7, align 8
  %109 = fcmp olt double %108, 7.000000e+00
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @BPP_INVALID, align 4
  store i32 %111, i32* %6, align 4
  br label %209

112:                                              ; preds = %107
  %113 = load double, double* %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = mul i32 2, %114
  %116 = sub i32 %115, 0
  %117 = uitofp i32 %116 to double
  %118 = fcmp oge double %113, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = mul i32 2, %120
  %122 = sub i32 %121, 0
  store i32 %122, i32* %6, align 4
  br label %209

123:                                              ; preds = %112
  %124 = load double, double* %7, align 8
  %125 = fmul double 1.600000e+01, %124
  %126 = fptosi double %125 to i32
  %127 = call i32 @dml_floor(i32 %126, i32 1)
  %128 = sdiv i32 %127, 16
  store i32 %128, i32* %6, align 4
  br label %209

129:                                              ; preds = %103
  %130 = load double, double* %7, align 8
  %131 = fcmp olt double %130, 8.000000e+00
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @BPP_INVALID, align 4
  store i32 %133, i32* %6, align 4
  br label %209

134:                                              ; preds = %129
  %135 = load double, double* %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = mul i32 3, %136
  %138 = sub i32 %137, 0
  %139 = uitofp i32 %138 to double
  %140 = fcmp oge double %135, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* %11, align 4
  %143 = mul i32 3, %142
  %144 = sub i32 %143, 0
  store i32 %144, i32* %6, align 4
  br label %209

145:                                              ; preds = %134
  %146 = load double, double* %7, align 8
  %147 = fmul double 1.600000e+01, %146
  %148 = fptosi double %147 to i32
  %149 = call i32 @dml_floor(i32 %148, i32 1)
  %150 = sdiv i32 %149, 16
  store i32 %150, i32* %6, align 4
  br label %209

151:                                              ; preds = %72
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @dm_420, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load double, double* %7, align 8
  %157 = fcmp oge double %156, 1.800000e+01
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 18, i32* %6, align 4
  br label %209

159:                                              ; preds = %155
  %160 = load double, double* %7, align 8
  %161 = fcmp oge double %160, 1.500000e+01
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 15, i32* %6, align 4
  br label %209

163:                                              ; preds = %159
  %164 = load double, double* %7, align 8
  %165 = fcmp oge double %164, 1.200000e+01
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 12, i32* %6, align 4
  br label %209

167:                                              ; preds = %163
  %168 = load i32, i32* @BPP_INVALID, align 4
  store i32 %168, i32* %6, align 4
  br label %209

169:                                              ; preds = %151
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @dm_s422, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @dm_n422, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173, %169
  %178 = load double, double* %7, align 8
  %179 = fcmp oge double %178, 2.400000e+01
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 24, i32* %6, align 4
  br label %209

181:                                              ; preds = %177
  %182 = load double, double* %7, align 8
  %183 = fcmp oge double %182, 2.000000e+01
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 20, i32* %6, align 4
  br label %209

185:                                              ; preds = %181
  %186 = load double, double* %7, align 8
  %187 = fcmp oge double %186, 1.600000e+01
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 16, i32* %6, align 4
  br label %209

189:                                              ; preds = %185
  %190 = load i32, i32* @BPP_INVALID, align 4
  store i32 %190, i32* %6, align 4
  br label %209

191:                                              ; preds = %173
  %192 = load double, double* %7, align 8
  %193 = fcmp oge double %192, 3.600000e+01
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 36, i32* %6, align 4
  br label %209

195:                                              ; preds = %191
  %196 = load double, double* %7, align 8
  %197 = fcmp oge double %196, 3.000000e+01
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 30, i32* %6, align 4
  br label %209

199:                                              ; preds = %195
  %200 = load double, double* %7, align 8
  %201 = fcmp oge double %200, 2.400000e+01
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store i32 24, i32* %6, align 4
  br label %209

203:                                              ; preds = %199
  %204 = load double, double* %7, align 8
  %205 = fcmp oge double %204, 1.800000e+01
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 18, i32* %6, align 4
  br label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @BPP_INVALID, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %207, %206, %202, %198, %194, %189, %188, %184, %180, %167, %166, %162, %158, %145, %141, %132, %123, %119, %110, %97, %91, %82, %70, %69, %64, %59, %53, %52, %48, %44, %40, %31, %30, %26, %22
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @dml_floor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
