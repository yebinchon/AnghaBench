; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_step_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_step_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.titsc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@STEPCONFIG_MODE_HWSYNC = common dso_local global i32 0, align 4
@STEPCONFIG_AVG_16 = common dso_local global i32 0, align 4
@STEPCONFIG_INP_AN4 = common dso_local global i32 0, align 4
@TOTAL_STEPS = common dso_local global i32 0, align 4
@STEPCONFIG_OPENDLY = common dso_local global i32 0, align 4
@STEPCONFIG_INM_ADCREFM = common dso_local global i32 0, align 4
@STEPCONFIG_XNP = common dso_local global i32 0, align 4
@STEPCONFIG_YPN = common dso_local global i32 0, align 4
@REG_IDLECONFIG = common dso_local global i32 0, align 4
@REG_CHARGECONFIG = common dso_local global i32 0, align 4
@REG_CHARGEDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.titsc*)* @titsc_step_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @titsc_step_config(%struct.titsc* %0) #0 {
  %2 = alloca %struct.titsc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.titsc* %0, %struct.titsc** %2, align 8
  %9 = load i32, i32* @STEPCONFIG_MODE_HWSYNC, align 4
  %10 = load i32, i32* @STEPCONFIG_AVG_16, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.titsc*, %struct.titsc** %2, align 8
  %13 = getelementptr inbounds %struct.titsc, %struct.titsc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.titsc*, %struct.titsc** %2, align 8
  %17 = getelementptr inbounds %struct.titsc, %struct.titsc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %57 [
    i32 4, label %19
    i32 5, label %30
    i32 8, label %46
  ]

19:                                               ; preds = %1
  %20 = load %struct.titsc*, %struct.titsc** %2, align 8
  %21 = getelementptr inbounds %struct.titsc, %struct.titsc* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @STEPCONFIG_INP(i32 %22)
  %24 = load %struct.titsc*, %struct.titsc** %2, align 8
  %25 = getelementptr inbounds %struct.titsc, %struct.titsc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %1
  %31 = load %struct.titsc*, %struct.titsc** %2, align 8
  %32 = getelementptr inbounds %struct.titsc, %struct.titsc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STEPCONFIG_INP_AN4, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.titsc*, %struct.titsc** %2, align 8
  %37 = getelementptr inbounds %struct.titsc, %struct.titsc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load %struct.titsc*, %struct.titsc** %2, align 8
  %41 = getelementptr inbounds %struct.titsc, %struct.titsc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %1
  %47 = load %struct.titsc*, %struct.titsc** %2, align 8
  %48 = getelementptr inbounds %struct.titsc, %struct.titsc* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @STEPCONFIG_INP(i32 %49)
  %51 = load %struct.titsc*, %struct.titsc** %2, align 8
  %52 = getelementptr inbounds %struct.titsc, %struct.titsc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %1, %46, %30, %19
  %58 = load %struct.titsc*, %struct.titsc** %2, align 8
  %59 = getelementptr inbounds %struct.titsc, %struct.titsc* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @TOTAL_STEPS, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.titsc*, %struct.titsc** %2, align 8
  %71 = getelementptr inbounds %struct.titsc, %struct.titsc* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %89, %57
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.titsc*, %struct.titsc** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @REG_STEPCONFIG(i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @titsc_writel(%struct.titsc* %79, i32 %81, i32 %82)
  %84 = load %struct.titsc*, %struct.titsc** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @REG_STEPDELAY(i32 %85)
  %87 = load i32, i32* @STEPCONFIG_OPENDLY, align 4
  %88 = call i32 @titsc_writel(%struct.titsc* %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %74

92:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  %93 = load i32, i32* @STEPCONFIG_MODE_HWSYNC, align 4
  %94 = load i32, i32* @STEPCONFIG_AVG_16, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.titsc*, %struct.titsc** %2, align 8
  %97 = getelementptr inbounds %struct.titsc, %struct.titsc* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = load i32, i32* @STEPCONFIG_INM_ADCREFM, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %3, align 4
  %102 = load %struct.titsc*, %struct.titsc** %2, align 8
  %103 = getelementptr inbounds %struct.titsc, %struct.titsc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %139 [
    i32 4, label %105
    i32 5, label %116
    i32 8, label %128
  ]

105:                                              ; preds = %92
  %106 = load %struct.titsc*, %struct.titsc** %2, align 8
  %107 = getelementptr inbounds %struct.titsc, %struct.titsc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.titsc*, %struct.titsc** %2, align 8
  %110 = getelementptr inbounds %struct.titsc, %struct.titsc* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @STEPCONFIG_INP(i32 %111)
  %113 = or i32 %108, %112
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %139

116:                                              ; preds = %92
  %117 = load %struct.titsc*, %struct.titsc** %2, align 8
  %118 = getelementptr inbounds %struct.titsc, %struct.titsc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @STEPCONFIG_INP_AN4, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @STEPCONFIG_XNP, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @STEPCONFIG_YPN, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  br label %139

128:                                              ; preds = %92
  %129 = load %struct.titsc*, %struct.titsc** %2, align 8
  %130 = getelementptr inbounds %struct.titsc, %struct.titsc* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.titsc*, %struct.titsc** %2, align 8
  %133 = getelementptr inbounds %struct.titsc, %struct.titsc* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @STEPCONFIG_INP(i32 %134)
  %136 = or i32 %131, %135
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %92, %128, %116, %105
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.titsc*, %struct.titsc** %2, align 8
  %142 = getelementptr inbounds %struct.titsc, %struct.titsc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %161, %139
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load %struct.titsc*, %struct.titsc** %2, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @REG_STEPCONFIG(i32 %152)
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @titsc_writel(%struct.titsc* %151, i32 %153, i32 %154)
  %156 = load %struct.titsc*, %struct.titsc** %2, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @REG_STEPDELAY(i32 %157)
  %159 = load i32, i32* @STEPCONFIG_OPENDLY, align 4
  %160 = call i32 @titsc_writel(%struct.titsc* %156, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %146

164:                                              ; preds = %146
  %165 = load %struct.titsc*, %struct.titsc** %2, align 8
  %166 = load i32, i32* @REG_IDLECONFIG, align 4
  %167 = call i32 @titsc_readl(%struct.titsc* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  %168 = load %struct.titsc*, %struct.titsc** %2, align 8
  %169 = load i32, i32* @REG_CHARGECONFIG, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @titsc_writel(%struct.titsc* %168, i32 %169, i32 %170)
  %172 = load %struct.titsc*, %struct.titsc** %2, align 8
  %173 = load i32, i32* @REG_CHARGEDELAY, align 4
  %174 = load %struct.titsc*, %struct.titsc** %2, align 8
  %175 = getelementptr inbounds %struct.titsc, %struct.titsc* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @titsc_writel(%struct.titsc* %172, i32 %173, i32 %176)
  %178 = load i32, i32* @STEPCONFIG_MODE_HWSYNC, align 4
  %179 = load i32, i32* @STEPCONFIG_AVG_16, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.titsc*, %struct.titsc** %2, align 8
  %182 = getelementptr inbounds %struct.titsc, %struct.titsc* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %180, %183
  %185 = load %struct.titsc*, %struct.titsc** %2, align 8
  %186 = getelementptr inbounds %struct.titsc, %struct.titsc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %184, %187
  %189 = load i32, i32* @STEPCONFIG_INM_ADCREFM, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.titsc*, %struct.titsc** %2, align 8
  %192 = getelementptr inbounds %struct.titsc, %struct.titsc* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @STEPCONFIG_INP(i32 %193)
  %195 = or i32 %190, %194
  store i32 %195, i32* %3, align 4
  %196 = load %struct.titsc*, %struct.titsc** %2, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @REG_STEPCONFIG(i32 %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @titsc_writel(%struct.titsc* %196, i32 %198, i32 %199)
  %201 = load %struct.titsc*, %struct.titsc** %2, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @REG_STEPDELAY(i32 %202)
  %204 = load i32, i32* @STEPCONFIG_OPENDLY, align 4
  %205 = call i32 @titsc_writel(%struct.titsc* %201, i32 %203, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  %208 = load %struct.titsc*, %struct.titsc** %2, align 8
  %209 = getelementptr inbounds %struct.titsc, %struct.titsc* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @STEPCONFIG_INP(i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %3, align 4
  %214 = load %struct.titsc*, %struct.titsc** %2, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @REG_STEPCONFIG(i32 %215)
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @titsc_writel(%struct.titsc* %214, i32 %216, i32 %217)
  %219 = load %struct.titsc*, %struct.titsc** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @REG_STEPDELAY(i32 %220)
  %222 = load i32, i32* @STEPCONFIG_OPENDLY, align 4
  %223 = call i32 @titsc_writel(%struct.titsc* %219, i32 %221, i32 %222)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %236, %164
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %229, %230
  %232 = add nsw i32 %231, 1
  %233 = shl i32 1, %232
  %234 = load i32, i32* %8, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %4, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %4, align 4
  br label %224

239:                                              ; preds = %224
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.titsc*, %struct.titsc** %2, align 8
  %242 = getelementptr inbounds %struct.titsc, %struct.titsc* %241, i32 0, i32 7
  store i32 %240, i32* %242, align 4
  %243 = load %struct.titsc*, %struct.titsc** %2, align 8
  %244 = getelementptr inbounds %struct.titsc, %struct.titsc* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.titsc*, %struct.titsc** %2, align 8
  %247 = getelementptr inbounds %struct.titsc, %struct.titsc* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @am335x_tsc_se_set_cache(i32 %245, i32 %248)
  ret void
}

declare dso_local i32 @STEPCONFIG_INP(i32) #1

declare dso_local i32 @titsc_writel(%struct.titsc*, i32, i32) #1

declare dso_local i32 @REG_STEPCONFIG(i32) #1

declare dso_local i32 @REG_STEPDELAY(i32) #1

declare dso_local i32 @titsc_readl(%struct.titsc*, i32) #1

declare dso_local i32 @am335x_tsc_se_set_cache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
