; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32 }
%struct.exynos_ppmu = type { i32 }

@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT0_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT1_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT2_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT3_MASK = common dso_local global i32 0, align 4
@PPMU_V2_FLAG = common dso_local global i32 0, align 4
@PPMU_V2_INTENC = common dso_local global i32 0, align 4
@PPMU_V2_CNTENC = common dso_local global i32 0, align 4
@PPMU_V2_CNT_RESET = common dso_local global i32 0, align 4
@PPMU_V2_CIG_CFG0 = common dso_local global i32 0, align 4
@PPMU_V2_CIG_CFG1 = common dso_local global i32 0, align 4
@PPMU_V2_CIG_CFG2 = common dso_local global i32 0, align 4
@PPMU_V2_CIG_RESULT = common dso_local global i32 0, align 4
@PPMU_V2_CNT_AUTO = common dso_local global i32 0, align 4
@PPMU_V2_CH_EV0_TYPE = common dso_local global i32 0, align 4
@PPMU_V2_CH_EV1_TYPE = common dso_local global i32 0, align 4
@PPMU_V2_CH_EV2_TYPE = common dso_local global i32 0, align 4
@PPMU_V2_CH_EV3_TYPE = common dso_local global i32 0, align 4
@PPMU_V2_SM_ID_V = common dso_local global i32 0, align 4
@PPMU_V2_SM_ID_A = common dso_local global i32 0, align 4
@PPMU_V2_SM_OTHERS_V = common dso_local global i32 0, align 4
@PPMU_V2_SM_OTHERS_A = common dso_local global i32 0, align 4
@PPMU_V2_INTERRUPT_RESET = common dso_local global i32 0, align 4
@PPMU_V2_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*)* @exynos_ppmu_v2_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_v2_disable(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.exynos_ppmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %8 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %9 = call %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %8)
  store %struct.exynos_ppmu* %9, %struct.exynos_ppmu** %4, align 8
  %10 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %11 = load i32, i32* @PPMU_PMCNT0_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PPMU_PMCNT1_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PPMU_PMCNT2_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PPMU_PMCNT3_MASK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %20 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PPMU_V2_FLAG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @regmap_write(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %228

29:                                               ; preds = %1
  %30 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PPMU_V2_INTENC, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %228

40:                                               ; preds = %29
  %41 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PPMU_V2_CNTENC, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @regmap_write(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %228

51:                                               ; preds = %40
  %52 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %53 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PPMU_V2_CNT_RESET, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %228

62:                                               ; preds = %51
  %63 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %64 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PPMU_V2_CIG_CFG0, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %228

72:                                               ; preds = %62
  %73 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %74 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PPMU_V2_CIG_CFG1, align 4
  %77 = call i32 @regmap_write(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %228

82:                                               ; preds = %72
  %83 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %84 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PPMU_V2_CIG_CFG2, align 4
  %87 = call i32 @regmap_write(i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %228

92:                                               ; preds = %82
  %93 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %94 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PPMU_V2_CIG_RESULT, align 4
  %97 = call i32 @regmap_write(i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %228

102:                                              ; preds = %92
  %103 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %104 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PPMU_V2_CNT_AUTO, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 0)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %228

112:                                              ; preds = %102
  %113 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %114 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PPMU_V2_CH_EV0_TYPE, align 4
  %117 = call i32 @regmap_write(i32 %115, i32 %116, i32 0)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %228

122:                                              ; preds = %112
  %123 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %124 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PPMU_V2_CH_EV1_TYPE, align 4
  %127 = call i32 @regmap_write(i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %228

132:                                              ; preds = %122
  %133 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %134 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PPMU_V2_CH_EV2_TYPE, align 4
  %137 = call i32 @regmap_write(i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %228

142:                                              ; preds = %132
  %143 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %144 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PPMU_V2_CH_EV3_TYPE, align 4
  %147 = call i32 @regmap_write(i32 %145, i32 %146, i32 0)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %228

152:                                              ; preds = %142
  %153 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %154 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PPMU_V2_SM_ID_V, align 4
  %157 = call i32 @regmap_write(i32 %155, i32 %156, i32 0)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %228

162:                                              ; preds = %152
  %163 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %164 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @PPMU_V2_SM_ID_A, align 4
  %167 = call i32 @regmap_write(i32 %165, i32 %166, i32 0)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %228

172:                                              ; preds = %162
  %173 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %174 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @PPMU_V2_SM_OTHERS_V, align 4
  %177 = call i32 @regmap_write(i32 %175, i32 %176, i32 0)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = load i32, i32* %5, align 4
  store i32 %181, i32* %2, align 4
  br label %228

182:                                              ; preds = %172
  %183 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %184 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PPMU_V2_SM_OTHERS_A, align 4
  %187 = call i32 @regmap_write(i32 %185, i32 %186, i32 0)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %228

192:                                              ; preds = %182
  %193 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %194 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @PPMU_V2_INTERRUPT_RESET, align 4
  %197 = call i32 @regmap_write(i32 %195, i32 %196, i32 0)
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* %5, align 4
  store i32 %201, i32* %2, align 4
  br label %228

202:                                              ; preds = %192
  %203 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %204 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PPMU_V2_PMNC, align 4
  %207 = call i32 @regmap_read(i32 %205, i32 %206, i32* %6)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i32, i32* %5, align 4
  store i32 %211, i32* %2, align 4
  br label %228

212:                                              ; preds = %202
  %213 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %6, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %6, align 4
  %217 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %218 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @PPMU_V2_PMNC, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @regmap_write(i32 %219, i32 %220, i32 %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %212
  %226 = load i32, i32* %5, align 4
  store i32 %226, i32* %2, align 4
  br label %228

227:                                              ; preds = %212
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %225, %210, %200, %190, %180, %170, %160, %150, %140, %130, %120, %110, %100, %90, %80, %70, %60, %49, %38, %27
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
