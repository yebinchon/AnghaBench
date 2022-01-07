; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.dvb_frontend*)* }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Set %s(%d) to sleep\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR2 = common dso_local global i32 0, align 4
@DISEQC1_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR3 = common dso_local global i32 0, align 4
@ADC2_PON_FIELD = common dso_local global i32 0, align 4
@STV090x_STOPCLK1 = common dso_local global i32 0, align 4
@STOP_CLKPKDT1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKADCI1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKFEC_FIELD = common dso_local global i32 0, align 4
@STV090x_STOPCLK2 = common dso_local global i32 0, align 4
@STOP_CLKSAMP1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKVIT1_FIELD = common dso_local global i32 0, align 4
@STOP_CLKTS_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTTNR4 = common dso_local global i32 0, align 4
@DISEQC2_PON_FIELD = common dso_local global i32 0, align 4
@STOP_CLKPKDT2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKADCI2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKSAMP2_FIELD = common dso_local global i32 0, align 4
@STOP_CLKVIT2_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Wrong demodulator!\00", align 1
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@STANDBY_FIELD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %8, align 8
  store %struct.stv090x_state* %9, %struct.stv090x_state** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %10, i32 1)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %257

14:                                               ; preds = %1
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.dvb_frontend*)*, i64 (%struct.dvb_frontend*)** %18, align 8
  %20 = icmp ne i64 (%struct.dvb_frontend*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %23 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64 (%struct.dvb_frontend*)*, i64 (%struct.dvb_frontend*)** %25, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = call i64 %26(%struct.dvb_frontend* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %248

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %34 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %33, i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %257

37:                                               ; preds = %32
  %38 = load i32, i32* @FE_DEBUG, align 4
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %40 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STV0900, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %47 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %38, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %51 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %222 [
    i32 129, label %58
    i32 128, label %140
  ]

58:                                               ; preds = %37
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %60 = load i32, i32* @STV090x_TSTTNR1, align 4
  %61 = call i32 @stv090x_read_reg(%struct.stv090x_state* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ADC1_PON_FIELD, align 4
  %64 = call i32 @STV090x_SETFIELD(i32 %62, i32 %63, i32 0)
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %66 = load i32, i32* @STV090x_TSTTNR1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @stv090x_write_reg(%struct.stv090x_state* %65, i32 %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %251

71:                                               ; preds = %58
  %72 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %73 = load i32, i32* @STV090x_TSTTNR2, align 4
  %74 = call i32 @stv090x_read_reg(%struct.stv090x_state* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DISEQC1_PON_FIELD, align 4
  %77 = call i32 @STV090x_SETFIELD(i32 %75, i32 %76, i32 0)
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %79 = load i32, i32* @STV090x_TSTTNR2, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @stv090x_write_reg(%struct.stv090x_state* %78, i32 %79, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %251

84:                                               ; preds = %71
  %85 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %86 = load i32, i32* @STV090x_TSTTNR3, align 4
  %87 = call i32 @stv090x_read_reg(%struct.stv090x_state* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @ADC2_PON_FIELD, align 4
  %90 = call i32 @STV090x_GETFIELD(i32 %88, i32 %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %84
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %95 = load i32, i32* @STV090x_STOPCLK1, align 4
  %96 = call i32 @stv090x_read_reg(%struct.stv090x_state* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @STOP_CLKPKDT1_FIELD, align 4
  %99 = call i32 @STV090x_SETFIELD(i32 %97, i32 %98, i32 1)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @STOP_CLKADCI1_FIELD, align 4
  %102 = call i32 @STV090x_SETFIELD(i32 %100, i32 %101, i32 1)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @STOP_CLKFEC_FIELD, align 4
  %108 = call i32 @STV090x_SETFIELD(i32 %106, i32 %107, i32 1)
  br label %109

109:                                              ; preds = %105, %93
  %110 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %111 = load i32, i32* @STV090x_STOPCLK1, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i64 @stv090x_write_reg(%struct.stv090x_state* %110, i32 %111, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %251

116:                                              ; preds = %109
  %117 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %118 = load i32, i32* @STV090x_STOPCLK2, align 4
  %119 = call i32 @stv090x_read_reg(%struct.stv090x_state* %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @STOP_CLKSAMP1_FIELD, align 4
  %122 = call i32 @STV090x_SETFIELD(i32 %120, i32 %121, i32 1)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @STOP_CLKVIT1_FIELD, align 4
  %125 = call i32 @STV090x_SETFIELD(i32 %123, i32 %124, i32 1)
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %116
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @STOP_CLKTS_FIELD, align 4
  %131 = call i32 @STV090x_SETFIELD(i32 %129, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %128, %116
  %133 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %134 = load i32, i32* @STV090x_STOPCLK2, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i64 @stv090x_write_reg(%struct.stv090x_state* %133, i32 %134, i32 %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %251

139:                                              ; preds = %132
  br label %225

140:                                              ; preds = %37
  %141 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %142 = load i32, i32* @STV090x_TSTTNR3, align 4
  %143 = call i32 @stv090x_read_reg(%struct.stv090x_state* %141, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @ADC2_PON_FIELD, align 4
  %146 = call i32 @STV090x_SETFIELD(i32 %144, i32 %145, i32 0)
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %148 = load i32, i32* @STV090x_TSTTNR3, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @stv090x_write_reg(%struct.stv090x_state* %147, i32 %148, i32 %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %251

153:                                              ; preds = %140
  %154 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %155 = load i32, i32* @STV090x_TSTTNR4, align 4
  %156 = call i32 @stv090x_read_reg(%struct.stv090x_state* %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @DISEQC2_PON_FIELD, align 4
  %159 = call i32 @STV090x_SETFIELD(i32 %157, i32 %158, i32 0)
  %160 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %161 = load i32, i32* @STV090x_TSTTNR4, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @stv090x_write_reg(%struct.stv090x_state* %160, i32 %161, i32 %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %251

166:                                              ; preds = %153
  %167 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %168 = load i32, i32* @STV090x_TSTTNR1, align 4
  %169 = call i32 @stv090x_read_reg(%struct.stv090x_state* %167, i32 %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @ADC1_PON_FIELD, align 4
  %172 = call i32 @STV090x_GETFIELD(i32 %170, i32 %171)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i32 1, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %166
  %176 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %177 = load i32, i32* @STV090x_STOPCLK1, align 4
  %178 = call i32 @stv090x_read_reg(%struct.stv090x_state* %176, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @STOP_CLKPKDT2_FIELD, align 4
  %181 = call i32 @STV090x_SETFIELD(i32 %179, i32 %180, i32 1)
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @STOP_CLKADCI2_FIELD, align 4
  %184 = call i32 @STV090x_SETFIELD(i32 %182, i32 %183, i32 1)
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %175
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @STOP_CLKFEC_FIELD, align 4
  %190 = call i32 @STV090x_SETFIELD(i32 %188, i32 %189, i32 1)
  br label %191

191:                                              ; preds = %187, %175
  %192 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %193 = load i32, i32* @STV090x_STOPCLK1, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i64 @stv090x_write_reg(%struct.stv090x_state* %192, i32 %193, i32 %194)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %251

198:                                              ; preds = %191
  %199 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %200 = load i32, i32* @STV090x_STOPCLK2, align 4
  %201 = call i32 @stv090x_read_reg(%struct.stv090x_state* %199, i32 %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @STOP_CLKSAMP2_FIELD, align 4
  %204 = call i32 @STV090x_SETFIELD(i32 %202, i32 %203, i32 1)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @STOP_CLKVIT2_FIELD, align 4
  %207 = call i32 @STV090x_SETFIELD(i32 %205, i32 %206, i32 1)
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %198
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @STOP_CLKTS_FIELD, align 4
  %213 = call i32 @STV090x_SETFIELD(i32 %211, i32 %212, i32 1)
  br label %214

214:                                              ; preds = %210, %198
  %215 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %216 = load i32, i32* @STV090x_STOPCLK2, align 4
  %217 = load i32, i32* %5, align 4
  %218 = call i64 @stv090x_write_reg(%struct.stv090x_state* %215, i32 %216, i32 %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %251

221:                                              ; preds = %214
  br label %225

222:                                              ; preds = %37
  %223 = load i32, i32* @FE_ERROR, align 4
  %224 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %223, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %221, %139
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %230 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %231 = call i32 @stv090x_read_reg(%struct.stv090x_state* %229, i32 %230)
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @STANDBY_FIELD, align 4
  %234 = call i32 @STV090x_SETFIELD(i32 %232, i32 %233, i32 1)
  %235 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %236 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i64 @stv090x_write_reg(%struct.stv090x_state* %235, i32 %236, i32 %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %228
  br label %251

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %241, %225
  %243 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %244 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %243, i32 0, i32 2
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = call i32 @mutex_unlock(i32* %246)
  store i32 0, i32* %2, align 4
  br label %260

248:                                              ; preds = %30
  %249 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %250 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %249, i32 0)
  br label %257

251:                                              ; preds = %240, %220, %197, %165, %152, %138, %115, %83, %70
  %252 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %253 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %252, i32 0, i32 2
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = call i32 @mutex_unlock(i32* %255)
  br label %257

257:                                              ; preds = %251, %248, %36, %13
  %258 = load i32, i32* @FE_ERROR, align 4
  %259 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %258, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %260

260:                                              ; preds = %257, %242
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_GETFIELD(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
