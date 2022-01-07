; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_optimize_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_optimize_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i64, i32, i64, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.dvb_frontend }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.dvb_frontend*, i64)* }
%struct.dvb_frontend = type { i32 }

@STV090x_SEARCH_AUTO = common dso_local global i64 0, align 8
@DMDCFGMD = common dso_local global i32 0, align 4
@DVBS1_ENABLE_FIELD = common dso_local global i32 0, align 4
@DVBS2_ENABLE_FIELD = common dso_local global i32 0, align 4
@DEMOD = common dso_local global i32 0, align 4
@ROLLOFF_CONTROL_FIELD = common dso_local global i32 0, align 4
@MANUAL_SXROLLOFF_FIELD = common dso_local global i32 0, align 4
@STV090x_PR12 = common dso_local global i32 0, align 4
@GAUSSR0 = common dso_local global i32 0, align 4
@CCIR0 = common dso_local global i32 0, align 4
@ERRCTRL1 = common dso_local global i32 0, align 4
@ACLC = common dso_local global i32 0, align 4
@BCLC = common dso_local global i32 0, align 4
@STV090x_LONG_FRAME = common dso_local global i32 0, align 4
@DMDMODCOD = common dso_local global i32 0, align 4
@DEMOD_MODCOD_FIELD = common dso_local global i32 0, align 4
@DEMOD_TYPE_FIELD = common dso_local global i32 0, align 4
@STV090x_QPSK_910 = common dso_local global i32 0, align 4
@ACLC2S2Q = common dso_local global i32 0, align 4
@STV090x_8PSK_910 = common dso_local global i32 0, align 4
@ACLC2S28 = common dso_local global i32 0, align 4
@STV090x_SINGLE = common dso_local global i32 0, align 4
@STV090x_16APSK_910 = common dso_local global i32 0, align 4
@ACLC2S216A = common dso_local global i32 0, align 4
@ACLC2S232A = common dso_local global i32 0, align 4
@STV090x_QPSK = common dso_local global i32 0, align 4
@STV090x_8PSK = common dso_local global i32 0, align 4
@STV090x_16APSK = common dso_local global i32 0, align 4
@STV090x_32APSK = common dso_local global i32 0, align 4
@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@TMGOBS = common dso_local global i32 0, align 4
@STV090x_BLIND_SEARCH = common dso_local global i64 0, align 8
@SFRSTEP = common dso_local global i32 0, align 4
@SCAN_ENABLE_FIELD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@TMGCFG2 = common dso_local global i32 0, align 4
@STV090x_SEARCH_DVBS1 = common dso_local global i64 0, align 8
@STV090x_SEARCH_DSS = common dso_local global i64 0, align 8
@VAVSRVIT = common dso_local global i32 0, align 4
@VITSCALE = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@STV090x_WARM_SEARCH = common dso_local global i64 0, align 8
@DMDISTATE = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_optimize_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_optimize_track(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 13
  store %struct.dvb_frontend* %15, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 6
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @stv090x_get_srate(%struct.stv090x_state* %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @stv090x_get_tmgoffst(%struct.stv090x_state* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %31 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %340 [
    i32 130, label %33
    i32 131, label %33
    i32 129, label %127
    i32 128, label %339
  ]

33:                                               ; preds = %1, %1
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %35 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STV090x_SEARCH_AUTO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %41 = load i32, i32* @DMDCFGMD, align 4
  %42 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %45 = call i32 @STV090x_SETFIELD_Px(i32 %43, i32 %44, i32 1)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %48 = call i32 @STV090x_SETFIELD_Px(i32 %46, i32 %47, i32 0)
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %50 = load i32, i32* @DMDCFGMD, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %49, i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %679

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %58 = load i32, i32* @DEMOD, align 4
  %59 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @ROLLOFF_CONTROL_FIELD, align 4
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %63 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @STV090x_SETFIELD_Px(i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @MANUAL_SXROLLOFF_FIELD, align 4
  %68 = call i32 @STV090x_SETFIELD_Px(i32 %66, i32 %67, i32 1)
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @DEMOD, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %69, i32 %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %679

75:                                               ; preds = %56
  %76 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %77 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %76, i32 0, i32 6
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 48
  br i1 %81, label %82, label %120

82:                                               ; preds = %75
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %84 = call i32 @stv090x_get_viterbi(%struct.stv090x_state* %83)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %679

87:                                               ; preds = %82
  %88 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %89 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @STV090x_PR12, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %95 = load i32, i32* @GAUSSR0, align 4
  %96 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %94, i32 %95, i32 152)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %679

99:                                               ; preds = %93
  %100 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %101 = load i32, i32* @CCIR0, align 4
  %102 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %100, i32 %101, i32 24)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %679

105:                                              ; preds = %99
  br label %119

106:                                              ; preds = %87
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = load i32, i32* @GAUSSR0, align 4
  %109 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %107, i32 %108, i32 24)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %679

112:                                              ; preds = %106
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %114 = load i32, i32* @CCIR0, align 4
  %115 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %113, i32 %114, i32 24)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %679

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %75
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = load i32, i32* @ERRCTRL1, align 4
  %123 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %121, i32 %122, i32 117)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %679

126:                                              ; preds = %120
  br label %357

127:                                              ; preds = %1
  %128 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %129 = load i32, i32* @DMDCFGMD, align 4
  %130 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %128, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %133 = call i32 @STV090x_SETFIELD_Px(i32 %131, i32 %132, i32 0)
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %136 = call i32 @STV090x_SETFIELD_Px(i32 %134, i32 %135, i32 1)
  %137 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %138 = load i32, i32* @DMDCFGMD, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %137, i32 %138, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  br label %679

143:                                              ; preds = %127
  %144 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %145 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %144, i32 0, i32 6
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp sge i32 %148, 48
  br i1 %149, label %150, label %163

150:                                              ; preds = %143
  %151 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %152 = load i32, i32* @ACLC, align 4
  %153 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %151, i32 %152, i32 0)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %679

156:                                              ; preds = %150
  %157 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %158 = load i32, i32* @BCLC, align 4
  %159 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %157, i32 %158, i32 0)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %679

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %143
  %164 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %165 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @STV090x_LONG_FRAME, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %255

169:                                              ; preds = %163
  %170 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %171 = load i32, i32* @DMDMODCOD, align 4
  %172 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %170, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @DEMOD_MODCOD_FIELD, align 4
  %175 = call i32 @STV090x_GETFIELD_Px(i32 %173, i32 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @DEMOD_TYPE_FIELD, align 4
  %178 = call i32 @STV090x_GETFIELD_Px(i32 %176, i32 %177)
  %179 = and i32 %178, 1
  store i32 %179, i32* %7, align 4
  %180 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @stv090x_optimize_carloop(%struct.stv090x_state* %180, i32 %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @STV090x_QPSK_910, align 4
  %186 = icmp ule i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %169
  %188 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %189 = load i32, i32* @ACLC2S2Q, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %188, i32 %189, i32 %190)
  br label %211

192:                                              ; preds = %169
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @STV090x_8PSK_910, align 4
  %195 = icmp ule i32 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %192
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %198 = load i32, i32* @ACLC2S2Q, align 4
  %199 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %197, i32 %198, i32 42)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %679

202:                                              ; preds = %196
  %203 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %204 = load i32, i32* @ACLC2S28, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %203, i32 %204, i32 %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %679

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %209, %192
  br label %211

211:                                              ; preds = %210, %187
  %212 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %213 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @STV090x_SINGLE, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %254

217:                                              ; preds = %211
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @STV090x_8PSK_910, align 4
  %220 = icmp ugt i32 %218, %219
  br i1 %220, label %221, label %254

221:                                              ; preds = %217
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @STV090x_16APSK_910, align 4
  %224 = icmp ule i32 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %221
  %226 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %227 = load i32, i32* @ACLC2S2Q, align 4
  %228 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %226, i32 %227, i32 42)
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %679

231:                                              ; preds = %225
  %232 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %233 = load i32, i32* @ACLC2S216A, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %232, i32 %233, i32 %234)
  %236 = icmp slt i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %679

238:                                              ; preds = %231
  br label %253

239:                                              ; preds = %221
  %240 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %241 = load i32, i32* @ACLC2S2Q, align 4
  %242 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %240, i32 %241, i32 42)
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %679

245:                                              ; preds = %239
  %246 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %247 = load i32, i32* @ACLC2S232A, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %246, i32 %247, i32 %248)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %679

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %238
  br label %254

254:                                              ; preds = %253, %217, %211
  br label %335

255:                                              ; preds = %163
  %256 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %257 = call i32 @stv090x_optimize_carloop_short(%struct.stv090x_state* %256)
  store i32 %257, i32* %8, align 4
  %258 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %259 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %258, i32 0, i32 9
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @STV090x_QPSK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %255
  %264 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %265 = load i32, i32* @ACLC2S2Q, align 4
  %266 = load i32, i32* %8, align 4
  %267 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %264, i32 %265, i32 %266)
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  br label %679

270:                                              ; preds = %263
  br label %334

271:                                              ; preds = %255
  %272 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %273 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %272, i32 0, i32 9
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @STV090x_8PSK, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %271
  %278 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %279 = load i32, i32* @ACLC2S2Q, align 4
  %280 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %278, i32 %279, i32 42)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %679

283:                                              ; preds = %277
  %284 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %285 = load i32, i32* @ACLC2S28, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %284, i32 %285, i32 %286)
  %288 = icmp slt i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %283
  br label %679

290:                                              ; preds = %283
  br label %333

291:                                              ; preds = %271
  %292 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %293 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @STV090x_16APSK, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %291
  %298 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %299 = load i32, i32* @ACLC2S2Q, align 4
  %300 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %298, i32 %299, i32 42)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %297
  br label %679

303:                                              ; preds = %297
  %304 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %305 = load i32, i32* @ACLC2S216A, align 4
  %306 = load i32, i32* %8, align 4
  %307 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %304, i32 %305, i32 %306)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  br label %679

310:                                              ; preds = %303
  br label %332

311:                                              ; preds = %291
  %312 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %313 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @STV090x_32APSK, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %331

317:                                              ; preds = %311
  %318 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %319 = load i32, i32* @ACLC2S2Q, align 4
  %320 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %318, i32 %319, i32 42)
  %321 = icmp slt i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %679

323:                                              ; preds = %317
  %324 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %325 = load i32, i32* @ACLC2S232A, align 4
  %326 = load i32, i32* %8, align 4
  %327 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %324, i32 %325, i32 %326)
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  br label %679

330:                                              ; preds = %323
  br label %331

331:                                              ; preds = %330, %311
  br label %332

332:                                              ; preds = %331, %310
  br label %333

333:                                              ; preds = %332, %290
  br label %334

334:                                              ; preds = %333, %270
  br label %335

335:                                              ; preds = %334, %254
  %336 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %337 = load i32, i32* @ERRCTRL1, align 4
  %338 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %336, i32 %337, i32 103)
  br label %357

339:                                              ; preds = %1
  br label %340

340:                                              ; preds = %1, %339
  %341 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %342 = load i32, i32* @DMDCFGMD, align 4
  %343 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %341, i32 %342)
  store i32 %343, i32* %13, align 4
  %344 = load i32, i32* %13, align 4
  %345 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %346 = call i32 @STV090x_SETFIELD_Px(i32 %344, i32 %345, i32 1)
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %349 = call i32 @STV090x_SETFIELD_Px(i32 %347, i32 %348, i32 1)
  %350 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %351 = load i32, i32* @DMDCFGMD, align 4
  %352 = load i32, i32* %13, align 4
  %353 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %350, i32 %351, i32 %352)
  %354 = icmp slt i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %340
  br label %679

356:                                              ; preds = %340
  br label %357

357:                                              ; preds = %356, %335, %126
  %358 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %359 = load i32, i32* @CFR2, align 4
  %360 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %358, i32 %359)
  store i32 %360, i32* %9, align 4
  %361 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %362 = load i32, i32* @CFR1, align 4
  %363 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %361, i32 %362)
  store i32 %363, i32* %10, align 4
  %364 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %365 = load i32, i32* @TMGOBS, align 4
  %366 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %364, i32 %365)
  store i32 %366, i32* %13, align 4
  %367 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %368 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %409

372:                                              ; preds = %357
  %373 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %374 = load i32, i32* @SFRSTEP, align 4
  %375 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %373, i32 %374, i32 0)
  %376 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %377 = load i32, i32* @DMDCFGMD, align 4
  %378 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %376, i32 %377)
  store i32 %378, i32* %13, align 4
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* @SCAN_ENABLE_FIELD, align 4
  %381 = call i32 @STV090x_SETFIELD_Px(i32 %379, i32 %380, i32 0)
  %382 = load i32, i32* %13, align 4
  %383 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %384 = call i32 @STV090x_SETFIELD_Px(i32 %382, i32 %383, i32 0)
  %385 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %386 = load i32, i32* @DMDCFGMD, align 4
  %387 = load i32, i32* %13, align 4
  %388 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %385, i32 %386, i32 %387)
  %389 = icmp slt i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %372
  br label %679

391:                                              ; preds = %372
  %392 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %393 = load i32, i32* @TMGCFG2, align 4
  %394 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %392, i32 %393, i32 193)
  %395 = icmp slt i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  br label %679

397:                                              ; preds = %391
  %398 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %399 = load i32, i32* %6, align 4
  %400 = call i64 @stv090x_set_srate(%struct.stv090x_state* %398, i32 %399)
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  br label %679

403:                                              ; preds = %397
  store i32 1, i32* %12, align 4
  %404 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %405 = call i64 @stv090x_dvbs_track_crl(%struct.stv090x_state* %404)
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %403
  br label %679

408:                                              ; preds = %403
  br label %409

409:                                              ; preds = %408, %357
  %410 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %411 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %410, i32 0, i32 6
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp sge i32 %414, 32
  br i1 %415, label %416, label %448

416:                                              ; preds = %409
  %417 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %418 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @STV090x_SEARCH_DVBS1, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %434, label %422

422:                                              ; preds = %416
  %423 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %424 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @STV090x_SEARCH_DSS, align 8
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %434, label %428

428:                                              ; preds = %422
  %429 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %430 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @STV090x_SEARCH_AUTO, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %447

434:                                              ; preds = %428, %422, %416
  %435 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %436 = load i32, i32* @VAVSRVIT, align 4
  %437 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %435, i32 %436, i32 10)
  %438 = icmp slt i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %434
  br label %679

440:                                              ; preds = %434
  %441 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %442 = load i32, i32* @VITSCALE, align 4
  %443 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %441, i32 %442, i32 0)
  %444 = icmp slt i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  br label %679

446:                                              ; preds = %440
  br label %447

447:                                              ; preds = %446, %428
  br label %448

448:                                              ; preds = %447, %409
  %449 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %450 = load i32, i32* @AGC2REF, align 4
  %451 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %449, i32 %450, i32 56)
  %452 = icmp slt i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  br label %679

454:                                              ; preds = %448
  %455 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %456 = load i32, i32* @SFRUP1, align 4
  %457 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %455, i32 %456, i32 128)
  %458 = icmp slt i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %454
  br label %679

460:                                              ; preds = %454
  %461 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %462 = load i32, i32* @SFRLOW1, align 4
  %463 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %461, i32 %462, i32 128)
  %464 = icmp slt i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %460
  br label %679

466:                                              ; preds = %460
  %467 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %468 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %467, i32 0, i32 6
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = icmp sge i32 %471, 32
  br i1 %472, label %481, label %473

473:                                              ; preds = %466
  %474 = load i32, i32* %12, align 4
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %481, label %476

476:                                              ; preds = %473
  %477 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %478 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = icmp slt i32 %479, 10000000
  br i1 %480, label %481, label %648

481:                                              ; preds = %476, %473, %466
  %482 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %483 = load i32, i32* @CFRINIT1, align 4
  %484 = load i32, i32* %9, align 4
  %485 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %482, i32 %483, i32 %484)
  %486 = icmp slt i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %481
  br label %679

488:                                              ; preds = %481
  %489 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %490 = load i32, i32* @CFRINIT0, align 4
  %491 = load i32, i32* %10, align 4
  %492 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %489, i32 %490, i32 %491)
  %493 = icmp slt i64 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  br label %679

495:                                              ; preds = %488
  %496 = load i32, i32* %6, align 4
  %497 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %498 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = call i64 @stv090x_car_width(i32 %496, i32 %499)
  %501 = add nsw i64 %500, 10000000
  %502 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %503 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %502, i32 0, i32 7
  store i64 %501, i64* %503, align 8
  %504 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %505 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %504, i32 0, i32 6
  %506 = load %struct.TYPE_4__*, %struct.TYPE_4__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = icmp sge i32 %508, 32
  br i1 %509, label %513, label %510

510:                                              ; preds = %495
  %511 = load i32, i32* %12, align 4
  %512 = icmp eq i32 %511, 1
  br i1 %512, label %513, label %552

513:                                              ; preds = %510, %495
  %514 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %515 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @STV090x_WARM_SEARCH, align 8
  %518 = icmp ne i64 %516, %517
  br i1 %518, label %519, label %551

519:                                              ; preds = %513
  %520 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %521 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %520, i32 1)
  %522 = icmp slt i64 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %519
  br label %679

524:                                              ; preds = %519
  %525 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %526 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %525, i32 0, i32 8
  %527 = load %struct.TYPE_3__*, %struct.TYPE_3__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %527, i32 0, i32 0
  %529 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %528, align 8
  %530 = icmp ne i64 (%struct.dvb_frontend*, i64)* %529, null
  br i1 %530, label %531, label %545

531:                                              ; preds = %524
  %532 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %533 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %532, i32 0, i32 8
  %534 = load %struct.TYPE_3__*, %struct.TYPE_3__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i32 0, i32 0
  %536 = load i64 (%struct.dvb_frontend*, i64)*, i64 (%struct.dvb_frontend*, i64)** %535, align 8
  %537 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %538 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %539 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %538, i32 0, i32 7
  %540 = load i64, i64* %539, align 8
  %541 = call i64 %536(%struct.dvb_frontend* %537, i64 %540)
  %542 = icmp slt i64 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %531
  br label %676

544:                                              ; preds = %531
  br label %545

545:                                              ; preds = %544, %524
  %546 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %547 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %546, i32 0)
  %548 = icmp slt i64 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  br label %679

550:                                              ; preds = %545
  br label %551

551:                                              ; preds = %550, %513
  br label %552

552:                                              ; preds = %551, %510
  %553 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %554 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %553, i32 0, i32 3
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %563, label %558

558:                                              ; preds = %552
  %559 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %560 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = icmp slt i32 %561, 10000000
  br i1 %562, label %563, label %565

563:                                              ; preds = %558, %552
  %564 = call i32 @msleep(i32 50)
  br label %567

565:                                              ; preds = %558
  %566 = call i32 @msleep(i32 5)
  br label %567

567:                                              ; preds = %565, %563
  %568 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %569 = call i32 @stv090x_get_lock_tmg(%struct.stv090x_state* %568)
  %570 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %571 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %572 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %571, i32 0, i32 5
  %573 = load i32, i32* %572, align 4
  %574 = sdiv i32 %573, 2
  %575 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %570, i32 %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %647, label %577

577:                                              ; preds = %567
  %578 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %579 = load i32, i32* @DMDISTATE, align 4
  %580 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %578, i32 %579, i32 31)
  %581 = icmp slt i64 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %577
  br label %679

583:                                              ; preds = %577
  %584 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %585 = load i32, i32* @CFRINIT1, align 4
  %586 = load i32, i32* %9, align 4
  %587 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %584, i32 %585, i32 %586)
  %588 = icmp slt i64 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %583
  br label %679

590:                                              ; preds = %583
  %591 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %592 = load i32, i32* @CFRINIT0, align 4
  %593 = load i32, i32* %10, align 4
  %594 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %591, i32 %592, i32 %593)
  %595 = icmp slt i64 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %590
  br label %679

597:                                              ; preds = %590
  %598 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %599 = load i32, i32* @DMDISTATE, align 4
  %600 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %598, i32 %599, i32 24)
  %601 = icmp slt i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %597
  br label %679

603:                                              ; preds = %597
  store i32 0, i32* %11, align 4
  br label %604

604:                                              ; preds = %643, %603
  %605 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %606 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %607 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %606, i32 0, i32 5
  %608 = load i32, i32* %607, align 4
  %609 = sdiv i32 %608, 2
  %610 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %605, i32 %609)
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %615, label %612

612:                                              ; preds = %604
  %613 = load i32, i32* %11, align 4
  %614 = icmp sle i32 %613, 2
  br label %615

615:                                              ; preds = %612, %604
  %616 = phi i1 [ false, %604 ], [ %614, %612 ]
  br i1 %616, label %617, label %646

617:                                              ; preds = %615
  %618 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %619 = load i32, i32* @DMDISTATE, align 4
  %620 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %618, i32 %619, i32 31)
  %621 = icmp slt i64 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %617
  br label %679

623:                                              ; preds = %617
  %624 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %625 = load i32, i32* @CFRINIT1, align 4
  %626 = load i32, i32* %9, align 4
  %627 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %624, i32 %625, i32 %626)
  %628 = icmp slt i64 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %623
  br label %679

630:                                              ; preds = %623
  %631 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %632 = load i32, i32* @CFRINIT0, align 4
  %633 = load i32, i32* %10, align 4
  %634 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %631, i32 %632, i32 %633)
  %635 = icmp slt i64 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %630
  br label %679

637:                                              ; preds = %630
  %638 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %639 = load i32, i32* @DMDISTATE, align 4
  %640 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %638, i32 %639, i32 24)
  %641 = icmp slt i64 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  br label %679

643:                                              ; preds = %637
  %644 = load i32, i32* %11, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %11, align 4
  br label %604

646:                                              ; preds = %615
  br label %647

647:                                              ; preds = %646, %567
  br label %648

648:                                              ; preds = %647, %476
  %649 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %650 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %649, i32 0, i32 6
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = icmp sge i32 %653, 32
  br i1 %654, label %655, label %662

655:                                              ; preds = %648
  %656 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %657 = load i32, i32* @CARFREQ, align 4
  %658 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %656, i32 %657, i32 73)
  %659 = icmp slt i64 %658, 0
  br i1 %659, label %660, label %661

660:                                              ; preds = %655
  br label %679

661:                                              ; preds = %655
  br label %662

662:                                              ; preds = %661, %648
  %663 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %664 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = icmp eq i32 %665, 130
  br i1 %666, label %672, label %667

667:                                              ; preds = %662
  %668 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %669 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = icmp eq i32 %670, 131
  br i1 %671, label %672, label %675

672:                                              ; preds = %667, %662
  %673 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %674 = call i32 @stv090x_set_vit_thtracq(%struct.stv090x_state* %673)
  br label %675

675:                                              ; preds = %672, %667
  store i32 0, i32* %2, align 4
  br label %682

676:                                              ; preds = %543
  %677 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %678 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %677, i32 0)
  br label %679

679:                                              ; preds = %676, %660, %642, %636, %629, %622, %602, %596, %589, %582, %549, %523, %494, %487, %465, %459, %453, %445, %439, %407, %402, %396, %390, %355, %329, %322, %309, %302, %289, %282, %269, %251, %244, %237, %230, %208, %201, %161, %155, %142, %125, %117, %111, %104, %98, %86, %74, %54
  %680 = load i32, i32* @FE_ERROR, align 4
  %681 = call i32 @dprintk(i32 %680, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %682

682:                                              ; preds = %679, %675
  %683 = load i32, i32* %2, align 4
  ret i32 %683
}

declare dso_local i32 @stv090x_get_srate(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_get_tmgoffst(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_viterbi(%struct.stv090x_state*) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @stv090x_optimize_carloop(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_optimize_carloop_short(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_set_srate(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_dvbs_track_crl(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_car_width(i32, i32) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv090x_get_lock_tmg(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_set_vit_thtracq(%struct.stv090x_state*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
