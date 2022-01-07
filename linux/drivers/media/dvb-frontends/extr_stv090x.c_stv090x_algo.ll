; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_algo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32, i32, %struct.dvb_frontend }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 (%struct.dvb_frontend*, i32)*, i32, i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32*)* }
%struct.dvb_frontend = type { i32 }

@STV090x_NOCARRIER = common dso_local global i32 0, align 4
@TSCFGH = common dso_local global i32 0, align 4
@RST_HWARE_FIELD = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@CORRELABS = common dso_local global i32 0, align 4
@STV090x_BLIND_SEARCH = common dso_local global i64 0, align 8
@TMGCFG2 = common dso_local global i32 0, align 4
@CORRELMANT = common dso_local global i32 0, align 4
@DMDTOM = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@KREFTMG = common dso_local global i32 0, align 4
@STV090x_COLD_SEARCH = common dso_local global i64 0, align 8
@STV090x_WARM_SEARCH = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Tuner phase locked\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Tuner unlocked\00", align 1
@AGCIQIN1 = common dso_local global i32 0, align 4
@AGCIQIN0 = common dso_local global i32 0, align 4
@POWERI = common dso_local global i32 0, align 4
@POWERQ = common dso_local global i32 0, align 4
@STV090x_IQPOWER_THRESHOLD = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No Signal: POWER_IQ=0x%02x\00", align 1
@STV090x_NOAGC1 = common dso_local global i32 0, align 4
@DEMOD = common dso_local global i32 0, align 4
@SPECINV_CONTROL_FIELD = common dso_local global i32 0, align 4
@MANUAL_SXROLLOFF_FIELD = common dso_local global i32 0, align 4
@MANUAL_S2ROLLOFF_FIELD = common dso_local global i32 0, align 4
@STV090x_RANGEOK = common dso_local global i32 0, align 4
@STV090x_DVBS2 = common dso_local global i64 0, align 8
@PDELCTRL2 = common dso_local global i32 0, align 4
@RESET_UPKO_COUNT = common dso_local global i32 0, align 4
@ERRCTRL1 = common dso_local global i32 0, align 4
@FBERCPT4 = common dso_local global i32 0, align 4
@ERRCTRL2 = common dso_local global i32 0, align 4
@STV090x_NODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_algo(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %12, i32 0, i32 11
  store %struct.dvb_frontend* %13, %struct.dvb_frontend** %4, align 8
  %14 = load i32, i32* @STV090x_NOCARRIER, align 4
  store i32 %14, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %16 = load i32, i32* @TSCFGH, align 4
  %17 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RST_HWARE_FIELD, align 4
  %20 = call i32 @STV090x_SETFIELD_Px(i32 %18, i32 %19, i32 1)
  %21 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %22 = load i32, i32* @TSCFGH, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %21, i32 %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %638

27:                                               ; preds = %1
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = load i32, i32* @DMDISTATE, align 4
  %30 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %28, i32 %29, i32 92)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %638

33:                                               ; preds = %27
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %34, i32 0, i32 6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 32
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 5000000
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %47 = load i32, i32* @CORRELABS, align 4
  %48 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %46, i32 %47, i32 158)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %638

51:                                               ; preds = %45
  br label %59

52:                                               ; preds = %40
  %53 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %54 = load i32, i32* @CORRELABS, align 4
  %55 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %53, i32 %54, i32 130)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %638

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %62 = call i32 @stv090x_get_lock_tmg(%struct.stv090x_state* %61)
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %60
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %69, i32 0, i32 2
  store i32 72000000, i32* %70, align 8
  %71 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %72 = load i32, i32* @TMGCFG2, align 4
  %73 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %71, i32 %72, i32 192)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %638

76:                                               ; preds = %68
  %77 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %78 = load i32, i32* @CORRELMANT, align 4
  %79 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %77, i32 %78, i32 112)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %638

82:                                               ; preds = %76
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %84 = call i64 @stv090x_set_srate(%struct.stv090x_state* %83, i32 1000000)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %638

87:                                               ; preds = %82
  br label %224

88:                                               ; preds = %60
  %89 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %90 = load i32, i32* @DMDTOM, align 4
  %91 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %89, i32 %90, i32 32)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %638

94:                                               ; preds = %88
  %95 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %96 = load i32, i32* @TMGCFG, align 4
  %97 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %95, i32 %96, i32 210)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %638

100:                                              ; preds = %94
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 2000000
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %107 = load i32, i32* @CORRELMANT, align 4
  %108 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %106, i32 %107, i32 99)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %638

111:                                              ; preds = %105
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %114 = load i32, i32* @CORRELMANT, align 4
  %115 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %113, i32 %114, i32 112)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %638

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %111
  %120 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %121 = load i32, i32* @AGC2REF, align 4
  %122 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %120, i32 %121, i32 56)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %638

125:                                              ; preds = %119
  %126 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %127 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %126, i32 0, i32 6
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 32
  br i1 %131, label %132, label %176

132:                                              ; preds = %125
  %133 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %134 = load i32, i32* @KREFTMG, align 4
  %135 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %133, i32 %134, i32 90)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %638

138:                                              ; preds = %132
  %139 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %140 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  %145 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %146 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %149 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @stv090x_car_width(i32 %147, i32 %150)
  %152 = add nsw i32 %151, 10000000
  %153 = mul nsw i32 15, %152
  %154 = sdiv i32 %153, 10
  %155 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %156 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %175

157:                                              ; preds = %138
  %158 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %159 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %165 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %168 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @stv090x_car_width(i32 %166, i32 %169)
  %171 = add nsw i32 %170, 10000000
  %172 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %173 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %163, %157
  br label %175

175:                                              ; preds = %174, %144
  br label %176

176:                                              ; preds = %175, %125
  %177 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %178 = load i32, i32* @TMGCFG2, align 4
  %179 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %177, i32 %178, i32 193)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %638

182:                                              ; preds = %176
  %183 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %184 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %185 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @stv090x_set_srate(%struct.stv090x_state* %183, i32 %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %638

190:                                              ; preds = %182
  %191 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %192 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %193 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %192, i32 0, i32 6
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %198 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @stv090x_set_max_srate(%struct.stv090x_state* %191, i32 %196, i32 %199)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %638

203:                                              ; preds = %190
  %204 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %205 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %206 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %205, i32 0, i32 6
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %211 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @stv090x_set_min_srate(%struct.stv090x_state* %204, i32 %209, i32 %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %638

216:                                              ; preds = %203
  %217 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %218 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %219, 10000000
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 0, i32* %11, align 4
  br label %223

222:                                              ; preds = %216
  store i32 1, i32* %11, align 4
  br label %223

223:                                              ; preds = %222, %221
  br label %224

224:                                              ; preds = %223, %87
  %225 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %226 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %225, i32 1)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %638

229:                                              ; preds = %224
  %230 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %231 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %230, i32 0, i32 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %233, align 8
  %235 = icmp ne i64 (%struct.dvb_frontend*, i32)* %234, null
  br i1 %235, label %236, label %257

236:                                              ; preds = %229
  %237 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %238 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %237, i32 0, i32 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  store i32 10, i32* %6, align 4
  br label %245

245:                                              ; preds = %244, %236
  %246 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %247 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %246, i32 0, i32 8
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %249, align 8
  %251 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i64 %250(%struct.dvb_frontend* %251, i32 %252)
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  br label %635

256:                                              ; preds = %245
  br label %257

257:                                              ; preds = %256, %229
  %258 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %259 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %258, i32 0, i32 8
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  %262 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %261, align 8
  %263 = icmp ne i64 (%struct.dvb_frontend*, i32)* %262, null
  br i1 %263, label %264, label %278

264:                                              ; preds = %257
  %265 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %266 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %265, i32 0, i32 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %268, align 8
  %270 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %271 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %272 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 8
  %274 = call i64 %269(%struct.dvb_frontend* %270, i32 %273)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %635

277:                                              ; preds = %264
  br label %278

278:                                              ; preds = %277, %257
  %279 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %280 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %279, i32 0, i32 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  %283 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %282, align 8
  %284 = icmp ne i64 (%struct.dvb_frontend*, i32)* %283, null
  br i1 %284, label %285, label %299

285:                                              ; preds = %278
  %286 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %287 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %286, i32 0, i32 8
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load i64 (%struct.dvb_frontend*, i32)*, i64 (%struct.dvb_frontend*, i32)** %289, align 8
  %291 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %292 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %293 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i64 %290(%struct.dvb_frontend* %291, i32 %294)
  %296 = icmp slt i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %285
  br label %635

298:                                              ; preds = %285
  br label %299

299:                                              ; preds = %298, %278
  %300 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %301 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %300, i32 0)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  br label %638

304:                                              ; preds = %299
  %305 = call i32 @msleep(i32 50)
  %306 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %307 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %306, i32 0, i32 8
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 4
  %310 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %309, align 8
  %311 = icmp ne i64 (%struct.dvb_frontend*, i32*)* %310, null
  br i1 %311, label %312, label %343

312:                                              ; preds = %304
  %313 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %314 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %313, i32 1)
  %315 = icmp slt i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  br label %638

317:                                              ; preds = %312
  %318 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %319 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %318, i32 0, i32 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 4
  %322 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %321, align 8
  %323 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %324 = call i64 %322(%struct.dvb_frontend* %323, i32* %6)
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %317
  br label %635

327:                                              ; preds = %317
  %328 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %329 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %328, i32 0)
  %330 = icmp slt i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  br label %638

332:                                              ; preds = %327
  %333 = load i32, i32* %6, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332
  %336 = load i32, i32* @FE_DEBUG, align 4
  %337 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %336, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %342

338:                                              ; preds = %332
  %339 = load i32, i32* @FE_DEBUG, align 4
  %340 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %339, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %341 = load i32, i32* @STV090x_NOCARRIER, align 4
  store i32 %341, i32* %2, align 4
  br label %641

342:                                              ; preds = %335
  br label %343

343:                                              ; preds = %342, %304
  %344 = call i32 @msleep(i32 10)
  %345 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %346 = load i32, i32* @AGCIQIN1, align 4
  %347 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %345, i32 %346)
  %348 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %349 = load i32, i32* @AGCIQIN0, align 4
  %350 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %348, i32 %349)
  %351 = call i64 @MAKEWORD16(i32 %347, i32 %350)
  store i64 %351, i64* %7, align 8
  %352 = load i64, i64* %7, align 8
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %376

354:                                              ; preds = %343
  store i64 0, i64* %9, align 8
  br label %355

355:                                              ; preds = %370, %354
  %356 = load i64, i64* %9, align 8
  %357 = icmp slt i64 %356, 5
  br i1 %357, label %358, label %373

358:                                              ; preds = %355
  %359 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %360 = load i32, i32* @POWERI, align 4
  %361 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %359, i32 %360)
  %362 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %363 = load i32, i32* @POWERQ, align 4
  %364 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %362, i32 %363)
  %365 = add nsw i32 %361, %364
  %366 = ashr i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = load i64, i64* %8, align 8
  %369 = add nsw i64 %368, %367
  store i64 %369, i64* %8, align 8
  br label %370

370:                                              ; preds = %358
  %371 = load i64, i64* %9, align 8
  %372 = add nsw i64 %371, 1
  store i64 %372, i64* %9, align 8
  br label %355

373:                                              ; preds = %355
  %374 = load i64, i64* %8, align 8
  %375 = sdiv i64 %374, 5
  store i64 %375, i64* %8, align 8
  br label %376

376:                                              ; preds = %373, %343
  %377 = load i64, i64* %7, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %376
  %380 = load i64, i64* %8, align 8
  %381 = load i64, i64* @STV090x_IQPOWER_THRESHOLD, align 8
  %382 = icmp slt i64 %380, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %379
  %384 = load i32, i32* @FE_ERROR, align 4
  %385 = load i64, i64* %8, align 8
  %386 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %384, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %385)
  store i32 0, i32* %10, align 4
  %387 = load i32, i32* @STV090x_NOAGC1, align 4
  store i32 %387, i32* %5, align 4
  br label %437

388:                                              ; preds = %379, %376
  %389 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %390 = load i32, i32* @DEMOD, align 4
  %391 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %389, i32 %390)
  store i32 %391, i32* %6, align 4
  %392 = load i32, i32* %6, align 4
  %393 = load i32, i32* @SPECINV_CONTROL_FIELD, align 4
  %394 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %395 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @STV090x_SETFIELD_Px(i32 %392, i32 %393, i32 %396)
  %398 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %399 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %398, i32 0, i32 6
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp sle i32 %402, 32
  br i1 %403, label %404, label %408

404:                                              ; preds = %388
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* @MANUAL_SXROLLOFF_FIELD, align 4
  %407 = call i32 @STV090x_SETFIELD_Px(i32 %405, i32 %406, i32 1)
  br label %412

408:                                              ; preds = %388
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* @MANUAL_S2ROLLOFF_FIELD, align 4
  %411 = call i32 @STV090x_SETFIELD_Px(i32 %409, i32 %410, i32 1)
  br label %412

412:                                              ; preds = %408, %404
  %413 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %414 = load i32, i32* @DEMOD, align 4
  %415 = load i32, i32* %6, align 4
  %416 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %413, i32 %414, i32 %415)
  %417 = icmp slt i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %412
  br label %638

419:                                              ; preds = %412
  %420 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %421 = call i64 @stv090x_delivery_search(%struct.stv090x_state* %420)
  %422 = icmp slt i64 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  br label %638

424:                                              ; preds = %419
  %425 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %426 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %429 = icmp ne i64 %427, %428
  br i1 %429, label %430, label %436

430:                                              ; preds = %424
  %431 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %432 = call i64 @stv090x_start_search(%struct.stv090x_state* %431)
  %433 = icmp slt i64 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %430
  br label %638

435:                                              ; preds = %430
  br label %436

436:                                              ; preds = %435, %424
  br label %437

437:                                              ; preds = %436, %383
  %438 = load i32, i32* %5, align 4
  %439 = load i32, i32* @STV090x_NOAGC1, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %437
  %442 = load i32, i32* %5, align 4
  store i32 %442, i32* %2, align 4
  br label %641

443:                                              ; preds = %437
  %444 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %445 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %443
  %450 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %451 = call i32 @stv090x_blind_search(%struct.stv090x_state* %450)
  store i32 %451, i32* %10, align 4
  br label %478

452:                                              ; preds = %443
  %453 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %454 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %464

458:                                              ; preds = %452
  %459 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %460 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %461 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @stv090x_get_coldlock(%struct.stv090x_state* %459, i32 %462)
  store i32 %463, i32* %10, align 4
  br label %477

464:                                              ; preds = %452
  %465 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %466 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %476

470:                                              ; preds = %464
  %471 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %472 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %473 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %472, i32 0, i32 7
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %471, i32 %474)
  store i32 %475, i32* %10, align 4
  br label %476

476:                                              ; preds = %470, %464
  br label %477

477:                                              ; preds = %476, %458
  br label %478

478:                                              ; preds = %477, %449
  %479 = load i32, i32* %10, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %499, label %481

481:                                              ; preds = %478
  %482 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %483 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @STV090x_COLD_SEARCH, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %499

487:                                              ; preds = %481
  %488 = load i32, i32* %11, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %487
  %491 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %492 = call i64 @stv090x_chk_tmg(%struct.stv090x_state* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %490
  %495 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %496 = call i32 @stv090x_sw_algo(%struct.stv090x_state* %495)
  store i32 %496, i32* %10, align 4
  br label %497

497:                                              ; preds = %494, %490
  br label %498

498:                                              ; preds = %497, %487
  br label %499

499:                                              ; preds = %498, %481, %478
  %500 = load i32, i32* %10, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %499
  %503 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %504 = call i32 @stv090x_get_sig_params(%struct.stv090x_state* %503)
  store i32 %504, i32* %5, align 4
  br label %505

505:                                              ; preds = %502, %499
  %506 = load i32, i32* %10, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %633

508:                                              ; preds = %505
  %509 = load i32, i32* %5, align 4
  %510 = load i32, i32* @STV090x_RANGEOK, align 4
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %633

512:                                              ; preds = %508
  %513 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %514 = call i32 @stv090x_optimize_track(%struct.stv090x_state* %513)
  %515 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %516 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %515, i32 0, i32 6
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 4
  %520 = icmp sge i32 %519, 32
  br i1 %520, label %521, label %556

521:                                              ; preds = %512
  %522 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %523 = load i32, i32* @TSCFGH, align 4
  %524 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %522, i32 %523)
  store i32 %524, i32* %6, align 4
  %525 = load i32, i32* %6, align 4
  %526 = load i32, i32* @RST_HWARE_FIELD, align 4
  %527 = call i32 @STV090x_SETFIELD_Px(i32 %525, i32 %526, i32 0)
  %528 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %529 = load i32, i32* @TSCFGH, align 4
  %530 = load i32, i32* %6, align 4
  %531 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %528, i32 %529, i32 %530)
  %532 = icmp slt i64 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %521
  br label %638

534:                                              ; preds = %521
  %535 = call i32 @msleep(i32 3)
  %536 = load i32, i32* %6, align 4
  %537 = load i32, i32* @RST_HWARE_FIELD, align 4
  %538 = call i32 @STV090x_SETFIELD_Px(i32 %536, i32 %537, i32 1)
  %539 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %540 = load i32, i32* @TSCFGH, align 4
  %541 = load i32, i32* %6, align 4
  %542 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %539, i32 %540, i32 %541)
  %543 = icmp slt i64 %542, 0
  br i1 %543, label %544, label %545

544:                                              ; preds = %534
  br label %638

545:                                              ; preds = %534
  %546 = load i32, i32* %6, align 4
  %547 = load i32, i32* @RST_HWARE_FIELD, align 4
  %548 = call i32 @STV090x_SETFIELD_Px(i32 %546, i32 %547, i32 0)
  %549 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %550 = load i32, i32* @TSCFGH, align 4
  %551 = load i32, i32* %6, align 4
  %552 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %549, i32 %550, i32 %551)
  %553 = icmp slt i64 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %545
  br label %638

555:                                              ; preds = %545
  br label %556

556:                                              ; preds = %555, %512
  %557 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %558 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %559 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %558, i32 0, i32 5
  %560 = load i32, i32* %559, align 8
  %561 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %562 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %561, i32 0, i32 5
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @stv090x_get_lock(%struct.stv090x_state* %557, i32 %560, i32 %563)
  store i32 %564, i32* %10, align 4
  %565 = load i32, i32* %10, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %628

567:                                              ; preds = %556
  %568 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %569 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @STV090x_DVBS2, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %608

573:                                              ; preds = %567
  %574 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %575 = call i32 @stv090x_set_s2rolloff(%struct.stv090x_state* %574)
  %576 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %577 = load i32, i32* @PDELCTRL2, align 4
  %578 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %576, i32 %577)
  store i32 %578, i32* %6, align 4
  %579 = load i32, i32* %6, align 4
  %580 = load i32, i32* @RESET_UPKO_COUNT, align 4
  %581 = call i32 @STV090x_SETFIELD_Px(i32 %579, i32 %580, i32 1)
  %582 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %583 = load i32, i32* @PDELCTRL2, align 4
  %584 = load i32, i32* %6, align 4
  %585 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %582, i32 %583, i32 %584)
  %586 = icmp slt i64 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %573
  br label %638

588:                                              ; preds = %573
  %589 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %590 = load i32, i32* @PDELCTRL2, align 4
  %591 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %589, i32 %590)
  store i32 %591, i32* %6, align 4
  %592 = load i32, i32* %6, align 4
  %593 = load i32, i32* @RESET_UPKO_COUNT, align 4
  %594 = call i32 @STV090x_SETFIELD_Px(i32 %592, i32 %593, i32 0)
  %595 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %596 = load i32, i32* @PDELCTRL2, align 4
  %597 = load i32, i32* %6, align 4
  %598 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %595, i32 %596, i32 %597)
  %599 = icmp slt i64 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %588
  br label %638

601:                                              ; preds = %588
  %602 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %603 = load i32, i32* @ERRCTRL1, align 4
  %604 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %602, i32 %603, i32 103)
  %605 = icmp slt i64 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %601
  br label %638

607:                                              ; preds = %601
  br label %615

608:                                              ; preds = %567
  %609 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %610 = load i32, i32* @ERRCTRL1, align 4
  %611 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %609, i32 %610, i32 117)
  %612 = icmp slt i64 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %608
  br label %638

614:                                              ; preds = %608
  br label %615

615:                                              ; preds = %614, %607
  %616 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %617 = load i32, i32* @FBERCPT4, align 4
  %618 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %616, i32 %617, i32 0)
  %619 = icmp slt i64 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %615
  br label %638

621:                                              ; preds = %615
  %622 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %623 = load i32, i32* @ERRCTRL2, align 4
  %624 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %622, i32 %623, i32 193)
  %625 = icmp slt i64 %624, 0
  br i1 %625, label %626, label %627

626:                                              ; preds = %621
  br label %638

627:                                              ; preds = %621
  br label %632

628:                                              ; preds = %556
  %629 = load i32, i32* @STV090x_NODATA, align 4
  store i32 %629, i32* %5, align 4
  %630 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %631 = call i32 @stv090x_chk_signal(%struct.stv090x_state* %630)
  br label %632

632:                                              ; preds = %628, %627
  br label %633

633:                                              ; preds = %632, %508, %505
  %634 = load i32, i32* %5, align 4
  store i32 %634, i32* %2, align 4
  br label %641

635:                                              ; preds = %326, %297, %276, %255
  %636 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %637 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %636, i32 0)
  br label %638

638:                                              ; preds = %635, %626, %620, %613, %606, %600, %587, %554, %544, %533, %434, %423, %418, %331, %316, %303, %228, %215, %202, %189, %181, %137, %124, %117, %110, %99, %93, %86, %81, %75, %57, %50, %32, %26
  %639 = load i32, i32* @FE_ERROR, align 4
  %640 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %639, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %641

641:                                              ; preds = %638, %633, %441, %338
  %642 = load i32, i32* %2, align 4
  ret i32 %642
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_lock_tmg(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_set_srate(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_set_max_srate(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_set_min_srate(%struct.stv090x_state*, i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i64 @MAKEWORD16(i32, i32) #1

declare dso_local i64 @stv090x_delivery_search(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_start_search(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_blind_search(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_coldlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_chk_tmg(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_sw_algo(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_sig_params(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_optimize_track(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_lock(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_set_s2rolloff(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_chk_signal(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
