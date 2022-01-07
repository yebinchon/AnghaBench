; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_SetQamSize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367cab_SetQamSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32 }

@F367CAB_QAM_MODE = common dso_local global i32 0, align 4
@R367CAB_IQDEM_ADJ_AGC_REF = common dso_local global i32 0, align 4
@R367CAB_AGC_PWR_REF_L = common dso_local global i32 0, align 4
@R367CAB_FSM_STATE = common dso_local global i32 0, align 4
@R367CAB_EQU_CTR_LPF_GAIN = common dso_local global i32 0, align 4
@R367CAB_EQU_CRL_LPF_GAIN = common dso_local global i32 0, align 4
@R367CAB_EQU_CRL_LD_SEN = common dso_local global i32 0, align 4
@R367CAB_EQU_CRL_LIMITER = common dso_local global i32 0, align 4
@R367CAB_EQU_PNT_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0367_state*, i32, i32)* @stv0367cab_SetQamSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367cab_SetQamSize(%struct.stv0367_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv0367_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0367_state* %0, %struct.stv0367_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %8 = load i32, i32* @F367CAB_QAM_MODE, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @stv0367_writebits(%struct.stv0367_state* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %209 [
    i32 130, label %12
    i32 133, label %16
    i32 131, label %41
    i32 128, label %66
    i32 134, label %119
    i32 132, label %160
    i32 129, label %201
    i32 135, label %205
  ]

12:                                               ; preds = %3
  %13 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %14 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %15 = call i32 @stv0367_writereg(%struct.stv0367_state* %13, i32 %14, i32 0)
  br label %210

16:                                               ; preds = %3
  %17 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %18 = load i32, i32* @R367CAB_AGC_PWR_REF_L, align 4
  %19 = call i32 @stv0367_writereg(%struct.stv0367_state* %17, i32 %18, i32 100)
  %20 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %21 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %22 = call i32 @stv0367_writereg(%struct.stv0367_state* %20, i32 %21, i32 0)
  %23 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %24 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %25 = call i32 @stv0367_writereg(%struct.stv0367_state* %23, i32 %24, i32 144)
  %26 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %27 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %28 = call i32 @stv0367_writereg(%struct.stv0367_state* %26, i32 %27, i32 193)
  %29 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %30 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %31 = call i32 @stv0367_writereg(%struct.stv0367_state* %29, i32 %30, i32 167)
  %32 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %33 = load i32, i32* @R367CAB_EQU_CRL_LD_SEN, align 4
  %34 = call i32 @stv0367_writereg(%struct.stv0367_state* %32, i32 %33, i32 149)
  %35 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %36 = load i32, i32* @R367CAB_EQU_CRL_LIMITER, align 4
  %37 = call i32 @stv0367_writereg(%struct.stv0367_state* %35, i32 %36, i32 64)
  %38 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %39 = load i32, i32* @R367CAB_EQU_PNT_GAIN, align 4
  %40 = call i32 @stv0367_writereg(%struct.stv0367_state* %38, i32 %39, i32 138)
  br label %210

41:                                               ; preds = %3
  %42 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %43 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %44 = call i32 @stv0367_writereg(%struct.stv0367_state* %42, i32 %43, i32 0)
  %45 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %46 = load i32, i32* @R367CAB_AGC_PWR_REF_L, align 4
  %47 = call i32 @stv0367_writereg(%struct.stv0367_state* %45, i32 %46, i32 110)
  %48 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %49 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %50 = call i32 @stv0367_writereg(%struct.stv0367_state* %48, i32 %49, i32 176)
  %51 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %52 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %53 = call i32 @stv0367_writereg(%struct.stv0367_state* %51, i32 %52, i32 193)
  %54 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %55 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %56 = call i32 @stv0367_writereg(%struct.stv0367_state* %54, i32 %55, i32 183)
  %57 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %58 = load i32, i32* @R367CAB_EQU_CRL_LD_SEN, align 4
  %59 = call i32 @stv0367_writereg(%struct.stv0367_state* %57, i32 %58, i32 157)
  %60 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %61 = load i32, i32* @R367CAB_EQU_CRL_LIMITER, align 4
  %62 = call i32 @stv0367_writereg(%struct.stv0367_state* %60, i32 %61, i32 127)
  %63 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %64 = load i32, i32* @R367CAB_EQU_PNT_GAIN, align 4
  %65 = call i32 @stv0367_writereg(%struct.stv0367_state* %63, i32 %64, i32 167)
  br label %210

66:                                               ; preds = %3
  %67 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %68 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %69 = call i32 @stv0367_writereg(%struct.stv0367_state* %67, i32 %68, i32 130)
  %70 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %71 = load i32, i32* @R367CAB_AGC_PWR_REF_L, align 4
  %72 = call i32 @stv0367_writereg(%struct.stv0367_state* %70, i32 %71, i32 90)
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 4500000
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %77 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %78 = call i32 @stv0367_writereg(%struct.stv0367_state* %76, i32 %77, i32 176)
  %79 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %80 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %81 = call i32 @stv0367_writereg(%struct.stv0367_state* %79, i32 %80, i32 193)
  %82 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %83 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %84 = call i32 @stv0367_writereg(%struct.stv0367_state* %82, i32 %83, i32 165)
  br label %109

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 2500000
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %90 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %91 = call i32 @stv0367_writereg(%struct.stv0367_state* %89, i32 %90, i32 160)
  %92 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %93 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %94 = call i32 @stv0367_writereg(%struct.stv0367_state* %92, i32 %93, i32 193)
  %95 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %96 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %97 = call i32 @stv0367_writereg(%struct.stv0367_state* %95, i32 %96, i32 166)
  br label %108

98:                                               ; preds = %85
  %99 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %100 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %101 = call i32 @stv0367_writereg(%struct.stv0367_state* %99, i32 %100, i32 160)
  %102 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %103 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %104 = call i32 @stv0367_writereg(%struct.stv0367_state* %102, i32 %103, i32 209)
  %105 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %106 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %107 = call i32 @stv0367_writereg(%struct.stv0367_state* %105, i32 %106, i32 167)
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108, %75
  %110 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %111 = load i32, i32* @R367CAB_EQU_CRL_LD_SEN, align 4
  %112 = call i32 @stv0367_writereg(%struct.stv0367_state* %110, i32 %111, i32 149)
  %113 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %114 = load i32, i32* @R367CAB_EQU_CRL_LIMITER, align 4
  %115 = call i32 @stv0367_writereg(%struct.stv0367_state* %113, i32 %114, i32 64)
  %116 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %117 = load i32, i32* @R367CAB_EQU_PNT_GAIN, align 4
  %118 = call i32 @stv0367_writereg(%struct.stv0367_state* %116, i32 %117, i32 153)
  br label %210

119:                                              ; preds = %3
  %120 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %121 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %122 = call i32 @stv0367_writereg(%struct.stv0367_state* %120, i32 %121, i32 0)
  %123 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %124 = load i32, i32* @R367CAB_AGC_PWR_REF_L, align 4
  %125 = call i32 @stv0367_writereg(%struct.stv0367_state* %123, i32 %124, i32 118)
  %126 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %127 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %128 = call i32 @stv0367_writereg(%struct.stv0367_state* %126, i32 %127, i32 144)
  %129 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %130 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %131 = call i32 @stv0367_writereg(%struct.stv0367_state* %129, i32 %130, i32 177)
  %132 = load i32, i32* %5, align 4
  %133 = icmp sgt i32 %132, 4500000
  br i1 %133, label %134, label %138

134:                                              ; preds = %119
  %135 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %136 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %137 = call i32 @stv0367_writereg(%struct.stv0367_state* %135, i32 %136, i32 167)
  br label %150

138:                                              ; preds = %119
  %139 = load i32, i32* %5, align 4
  %140 = icmp sgt i32 %139, 2500000
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %143 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %144 = call i32 @stv0367_writereg(%struct.stv0367_state* %142, i32 %143, i32 166)
  br label %149

145:                                              ; preds = %138
  %146 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %147 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %148 = call i32 @stv0367_writereg(%struct.stv0367_state* %146, i32 %147, i32 151)
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %152 = load i32, i32* @R367CAB_EQU_CRL_LD_SEN, align 4
  %153 = call i32 @stv0367_writereg(%struct.stv0367_state* %151, i32 %152, i32 142)
  %154 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %155 = load i32, i32* @R367CAB_EQU_CRL_LIMITER, align 4
  %156 = call i32 @stv0367_writereg(%struct.stv0367_state* %154, i32 %155, i32 127)
  %157 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %158 = load i32, i32* @R367CAB_EQU_PNT_GAIN, align 4
  %159 = call i32 @stv0367_writereg(%struct.stv0367_state* %157, i32 %158, i32 167)
  br label %210

160:                                              ; preds = %3
  %161 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %162 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %163 = call i32 @stv0367_writereg(%struct.stv0367_state* %161, i32 %162, i32 148)
  %164 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %165 = load i32, i32* @R367CAB_AGC_PWR_REF_L, align 4
  %166 = call i32 @stv0367_writereg(%struct.stv0367_state* %164, i32 %165, i32 90)
  %167 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %168 = load i32, i32* @R367CAB_FSM_STATE, align 4
  %169 = call i32 @stv0367_writereg(%struct.stv0367_state* %167, i32 %168, i32 160)
  %170 = load i32, i32* %5, align 4
  %171 = icmp sgt i32 %170, 4500000
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %174 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %175 = call i32 @stv0367_writereg(%struct.stv0367_state* %173, i32 %174, i32 193)
  br label %188

176:                                              ; preds = %160
  %177 = load i32, i32* %5, align 4
  %178 = icmp sgt i32 %177, 2500000
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %181 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %182 = call i32 @stv0367_writereg(%struct.stv0367_state* %180, i32 %181, i32 193)
  br label %187

183:                                              ; preds = %176
  %184 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %185 = load i32, i32* @R367CAB_EQU_CTR_LPF_GAIN, align 4
  %186 = call i32 @stv0367_writereg(%struct.stv0367_state* %184, i32 %185, i32 209)
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %172
  %189 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %190 = load i32, i32* @R367CAB_EQU_CRL_LPF_GAIN, align 4
  %191 = call i32 @stv0367_writereg(%struct.stv0367_state* %189, i32 %190, i32 167)
  %192 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %193 = load i32, i32* @R367CAB_EQU_CRL_LD_SEN, align 4
  %194 = call i32 @stv0367_writereg(%struct.stv0367_state* %192, i32 %193, i32 133)
  %195 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %196 = load i32, i32* @R367CAB_EQU_CRL_LIMITER, align 4
  %197 = call i32 @stv0367_writereg(%struct.stv0367_state* %195, i32 %196, i32 64)
  %198 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %199 = load i32, i32* @R367CAB_EQU_PNT_GAIN, align 4
  %200 = call i32 @stv0367_writereg(%struct.stv0367_state* %198, i32 %199, i32 167)
  br label %210

201:                                              ; preds = %3
  %202 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %203 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %204 = call i32 @stv0367_writereg(%struct.stv0367_state* %202, i32 %203, i32 0)
  br label %210

205:                                              ; preds = %3
  %206 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %207 = load i32, i32* @R367CAB_IQDEM_ADJ_AGC_REF, align 4
  %208 = call i32 @stv0367_writereg(%struct.stv0367_state* %206, i32 %207, i32 0)
  br label %210

209:                                              ; preds = %3
  br label %210

210:                                              ; preds = %209, %205, %201, %188, %150, %109, %41, %16, %12
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @stv0367_writebits(%struct.stv0367_state*, i32, i32) #1

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
