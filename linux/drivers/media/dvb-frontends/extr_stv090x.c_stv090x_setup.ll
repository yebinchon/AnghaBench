; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_reg = type { i32, i32 }
%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, %struct.TYPE_2__*, %struct.stv090x_config* }
%struct.TYPE_2__ = type { i32 }
%struct.stv090x_config = type { i32, i64, i64, i32 }

@STV0900 = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Initializing STV0900\00", align 1
@stv0900_initval = common dso_local global %struct.stv090x_reg* null, align 8
@stv0900_cut20_val = common dso_local global %struct.stv090x_reg* null, align 8
@STV0903 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Initializing STV0903\00", align 1
@stv0903_initval = common dso_local global %struct.stv090x_reg* null, align 8
@stv0903_cut20_val = common dso_local global %struct.stv090x_reg* null, align 8
@STV090x_P1_DMDISTATE = common dso_local global i32 0, align 4
@STV090x_P2_DMDISTATE = common dso_local global i32 0, align 4
@STV090x_P1_TNRCFG = common dso_local global i32 0, align 4
@STV090x_P2_TNRCFG = common dso_local global i32 0, align 4
@ENARPT_LEVEL_FIELD = common dso_local global i32 0, align 4
@STV090x_P1_I2CRPT = common dso_local global i32 0, align 4
@STV090x_P2_I2CRPT = common dso_local global i32 0, align 4
@STV090x_NCOARSE = common dso_local global i32 0, align 4
@STV090x_I2CCFG = common dso_local global i32 0, align 4
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Setting up initial values\00", align 1
@STV090x_MID = common dso_local global i32 0, align 4
@STV090x_TSGENERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Setting up Cut 2.0 initial values\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Unsupported Cut: 0x%02x!\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"INFO: Cut: 0x%02x probably incomplete support!\00", align 1
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_INMODE_FIELD = common dso_local global i32 0, align 4
@STV090x_ADC_1Vpp = common dso_local global i64 0, align 8
@STV090x_TSTTNR3 = common dso_local global i32 0, align 4
@ADC2_INMODE_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTRES0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_setup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca %struct.stv090x_config*, align 8
  %6 = alloca %struct.stv090x_reg*, align 8
  %7 = alloca %struct.stv090x_reg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %13, align 8
  store %struct.stv090x_state* %14, %struct.stv090x_state** %4, align 8
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 2
  %17 = load %struct.stv090x_config*, %struct.stv090x_config** %16, align 8
  store %struct.stv090x_config* %17, %struct.stv090x_config** %5, align 8
  store %struct.stv090x_reg* null, %struct.stv090x_reg** %6, align 8
  store %struct.stv090x_reg* null, %struct.stv090x_reg** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STV0900, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @FE_DEBUG, align 4
  %25 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %24, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_initval, align 8
  store %struct.stv090x_reg* %26, %struct.stv090x_reg** %6, align 8
  %27 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_initval, align 8
  %28 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_cut20_val, align 8
  store %struct.stv090x_reg* %29, %struct.stv090x_reg** %7, align 8
  %30 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_cut20_val, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %30)
  store i64 %31, i64* %9, align 8
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %34 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STV0903, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @FE_DEBUG, align 4
  %40 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %39, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_initval, align 8
  store %struct.stv090x_reg* %41, %struct.stv090x_reg** %6, align 8
  %42 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_initval, align 8
  %43 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %42)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_cut20_val, align 8
  store %struct.stv090x_reg* %44, %struct.stv090x_reg** %7, align 8
  %45 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_cut20_val, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47, %23
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %50 = load i32, i32* @STV090x_P1_DMDISTATE, align 4
  %51 = call i64 @stv090x_write_reg(%struct.stv090x_state* %49, i32 %50, i32 92)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %305

54:                                               ; preds = %48
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STV0900, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %62 = load i32, i32* @STV090x_P2_DMDISTATE, align 4
  %63 = call i64 @stv090x_write_reg(%struct.stv090x_state* %61, i32 %62, i32 92)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %305

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %54
  %68 = call i32 @msleep(i32 5)
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %70 = load i32, i32* @STV090x_P1_TNRCFG, align 4
  %71 = call i64 @stv090x_write_reg(%struct.stv090x_state* %69, i32 %70, i32 108)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %305

74:                                               ; preds = %67
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %76 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @STV0900, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %82 = load i32, i32* @STV090x_P2_TNRCFG, align 4
  %83 = call i64 @stv090x_write_reg(%struct.stv090x_state* %81, i32 %82, i32 108)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %305

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @ENARPT_LEVEL_FIELD, align 4
  %90 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %91 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @STV090x_SETFIELD_Px(i32 %88, i32 %89, i32 %92)
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %95 = load i32, i32* @STV090x_P1_I2CRPT, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @stv090x_write_reg(%struct.stv090x_state* %94, i32 %95, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %305

100:                                              ; preds = %87
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @STV0900, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %108 = load i32, i32* @STV090x_P2_I2CRPT, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @stv090x_write_reg(%struct.stv090x_state* %107, i32 %108, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %305

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %100
  %115 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %116 = load i32, i32* @STV090x_NCOARSE, align 4
  %117 = call i64 @stv090x_write_reg(%struct.stv090x_state* %115, i32 %116, i32 19)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %305

120:                                              ; preds = %114
  %121 = call i32 @msleep(i32 5)
  %122 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %123 = load i32, i32* @STV090x_I2CCFG, align 4
  %124 = call i64 @stv090x_write_reg(%struct.stv090x_state* %122, i32 %123, i32 8)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %305

127:                                              ; preds = %120
  %128 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %129 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %130 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %131 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 32, %132
  %134 = call i64 @stv090x_write_reg(%struct.stv090x_state* %128, i32 %129, i32 %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %305

137:                                              ; preds = %127
  %138 = call i32 @msleep(i32 5)
  %139 = load i32, i32* @FE_DEBUG, align 4
  %140 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %139, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %164, %137
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %8, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %141
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %148 = load %struct.stv090x_reg*, %struct.stv090x_reg** %6, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %148, i64 %150
  %152 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.stv090x_reg*, %struct.stv090x_reg** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %154, i64 %156
  %158 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @stv090x_write_reg(%struct.stv090x_state* %147, i32 %153, i32 %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %146
  br label %305

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %141

167:                                              ; preds = %141
  %168 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %169 = load i32, i32* @STV090x_MID, align 4
  %170 = call i8* @stv090x_read_reg(%struct.stv090x_state* %168, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %173 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 4
  %176 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %177 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %180, 32
  br i1 %181, label %182, label %218

182:                                              ; preds = %167
  %183 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %184 = load i32, i32* @STV090x_TSGENERAL, align 4
  %185 = call i64 @stv090x_write_reg(%struct.stv090x_state* %183, i32 %184, i32 12)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %305

188:                                              ; preds = %182
  %189 = load i32, i32* @FE_DEBUG, align 4
  %190 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %189, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %214, %188
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %9, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %198 = load %struct.stv090x_reg*, %struct.stv090x_reg** %7, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %198, i64 %200
  %202 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.stv090x_reg*, %struct.stv090x_reg** %7, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %204, i64 %206
  %208 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @stv090x_write_reg(%struct.stv090x_state* %197, i32 %203, i32 %209)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %196
  br label %305

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %191

217:                                              ; preds = %191
  br label %250

218:                                              ; preds = %167
  %219 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %220 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %223, 32
  br i1 %224, label %225, label %233

225:                                              ; preds = %218
  %226 = load i32, i32* @FE_ERROR, align 4
  %227 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %228 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %227, i32 0, i32 1
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %226, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  br label %305

233:                                              ; preds = %218
  %234 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %235 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %234, i32 0, i32 1
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 48
  br i1 %239, label %240, label %248

240:                                              ; preds = %233
  %241 = load i32, i32* @FE_ERROR, align 4
  %242 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %243 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %242, i32 0, i32 1
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %241, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %240, %233
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249, %217
  %251 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %252 = load i32, i32* @STV090x_TSTTNR1, align 4
  %253 = call i8* @stv090x_read_reg(%struct.stv090x_state* %251, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @ADC1_INMODE_FIELD, align 4
  %257 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %258 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @STV090x_ADC_1Vpp, align 8
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 0, i32 1
  %264 = call i32 @STV090x_SETFIELD(i32 %255, i32 %256, i32 %263)
  %265 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %266 = load i32, i32* @STV090x_TSTTNR1, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i64 @stv090x_write_reg(%struct.stv090x_state* %265, i32 %266, i32 %267)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %250
  br label %305

271:                                              ; preds = %250
  %272 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %273 = load i32, i32* @STV090x_TSTTNR3, align 4
  %274 = call i8* @stv090x_read_reg(%struct.stv090x_state* %272, i32 %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @ADC2_INMODE_FIELD, align 4
  %278 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %279 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @STV090x_ADC_1Vpp, align 8
  %282 = icmp eq i64 %280, %281
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 0, i32 1
  %285 = call i32 @STV090x_SETFIELD(i32 %276, i32 %277, i32 %284)
  %286 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %287 = load i32, i32* @STV090x_TSTTNR3, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call i64 @stv090x_write_reg(%struct.stv090x_state* %286, i32 %287, i32 %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %271
  br label %305

292:                                              ; preds = %271
  %293 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %294 = load i32, i32* @STV090x_TSTRES0, align 4
  %295 = call i64 @stv090x_write_reg(%struct.stv090x_state* %293, i32 %294, i32 128)
  %296 = icmp slt i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %305

298:                                              ; preds = %292
  %299 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %300 = load i32, i32* @STV090x_TSTRES0, align 4
  %301 = call i64 @stv090x_write_reg(%struct.stv090x_state* %299, i32 %300, i32 0)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %305

304:                                              ; preds = %298
  store i32 0, i32* %2, align 4
  br label %308

305:                                              ; preds = %303, %297, %291, %270, %225, %212, %187, %162, %136, %126, %119, %112, %99, %85, %73, %65, %53
  %306 = load i32, i32* @FE_ERROR, align 4
  %307 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %306, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %308

308:                                              ; preds = %305, %304
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.stv090x_reg*) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i8* @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
