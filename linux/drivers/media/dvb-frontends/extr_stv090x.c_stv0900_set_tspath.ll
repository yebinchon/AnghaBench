; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv0900_set_tspath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv0900_set_tspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STV090x_TSGENERAL = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGM = common dso_local global i32 0, align 4
@TSFIFO_MANSPEED_FIELD = common dso_local global i32 0, align 4
@STV090x_P2_TSCFGM = common dso_local global i32 0, align 4
@STV090x_P1_TSSPEED = common dso_local global i32 0, align 4
@STV090x_P2_TSSPEED = common dso_local global i32 0, align 4
@STV090x_TSGENERAL1X = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGH = common dso_local global i32 0, align 4
@TSFIFO_TEIUPDATE_FIELD = common dso_local global i32 0, align 4
@TSFIFO_SERIAL_FIELD = common dso_local global i32 0, align 4
@TSFIFO_DVBCI_FIELD = common dso_local global i32 0, align 4
@STV090x_P2_TSCFGH = common dso_local global i32 0, align 4
@RST_HWARE_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv0900_set_tspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_set_tspath(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %8 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %100

13:                                               ; preds = %1
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %77 [
    i32 130, label %19
    i32 131, label %19
    i32 128, label %76
    i32 129, label %76
  ]

19:                                               ; preds = %13, %13
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
    i32 129, label %25
    i32 130, label %30
    i32 131, label %30
  ]

25:                                               ; preds = %19, %19
  br label %26

26:                                               ; preds = %19, %25
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %28 = load i32, i32* @STV090x_TSGENERAL, align 4
  %29 = call i64 @stv090x_write_reg(%struct.stv090x_state* %27, i32 %28, i32 0)
  br label %75

30:                                               ; preds = %19, %19
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %32 = load i32, i32* @STV090x_TSGENERAL, align 4
  %33 = call i64 @stv090x_write_reg(%struct.stv090x_state* %31, i32 %32, i32 6)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %601

36:                                               ; preds = %30
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %38 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %39 = call i32 @stv090x_read_reg(%struct.stv090x_state* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %42 = call i32 @STV090x_SETFIELD_Px(i32 %40, i32 %41, i32 3)
  %43 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %44 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @stv090x_write_reg(%struct.stv090x_state* %43, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %601

49:                                               ; preds = %36
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %51 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %52 = call i32 @stv090x_read_reg(%struct.stv090x_state* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %55 = call i32 @STV090x_SETFIELD_Px(i32 %53, i32 %54, i32 3)
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %57 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @stv090x_write_reg(%struct.stv090x_state* %56, i32 %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %601

62:                                               ; preds = %49
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %65 = call i64 @stv090x_write_reg(%struct.stv090x_state* %63, i32 %64, i32 20)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %601

68:                                               ; preds = %62
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %71 = call i64 @stv090x_write_reg(%struct.stv090x_state* %69, i32 %70, i32 40)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %601

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %26
  br label %99

76:                                               ; preds = %13, %13
  br label %77

77:                                               ; preds = %13, %76
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %79 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %84 [
    i32 128, label %83
    i32 129, label %83
    i32 130, label %91
    i32 131, label %91
  ]

83:                                               ; preds = %77, %77
  br label %84

84:                                               ; preds = %77, %83
  %85 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %86 = load i32, i32* @STV090x_TSGENERAL, align 4
  %87 = call i64 @stv090x_write_reg(%struct.stv090x_state* %85, i32 %86, i32 12)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %601

90:                                               ; preds = %84
  br label %98

91:                                               ; preds = %77, %77
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %93 = load i32, i32* @STV090x_TSGENERAL, align 4
  %94 = call i64 @stv090x_write_reg(%struct.stv090x_state* %92, i32 %93, i32 10)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %601

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %90
  br label %99

99:                                               ; preds = %98, %75
  br label %178

100:                                              ; preds = %1
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %161 [
    i32 130, label %106
    i32 131, label %106
    i32 128, label %160
    i32 129, label %160
  ]

106:                                              ; preds = %100, %100
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %113 [
    i32 128, label %112
    i32 129, label %112
    i32 130, label %117
    i32 131, label %117
  ]

112:                                              ; preds = %106, %106
  br label %113

113:                                              ; preds = %106, %112
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %115 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %116 = call i64 @stv090x_write_reg(%struct.stv090x_state* %114, i32 %115, i32 16)
  br label %159

117:                                              ; preds = %106, %106
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %119 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %120 = call i64 @stv090x_write_reg(%struct.stv090x_state* %118, i32 %119, i32 22)
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %123 = call i32 @stv090x_read_reg(%struct.stv090x_state* %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %126 = call i32 @STV090x_SETFIELD_Px(i32 %124, i32 %125, i32 3)
  %127 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %128 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @stv090x_write_reg(%struct.stv090x_state* %127, i32 %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %601

133:                                              ; preds = %117
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %135 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %136 = call i32 @stv090x_read_reg(%struct.stv090x_state* %134, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %139 = call i32 @STV090x_SETFIELD_Px(i32 %137, i32 %138, i32 0)
  %140 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %141 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i64 @stv090x_write_reg(%struct.stv090x_state* %140, i32 %141, i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %601

146:                                              ; preds = %133
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %148 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %149 = call i64 @stv090x_write_reg(%struct.stv090x_state* %147, i32 %148, i32 20)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %601

152:                                              ; preds = %146
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %154 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %155 = call i64 @stv090x_write_reg(%struct.stv090x_state* %153, i32 %154, i32 40)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %601

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %113
  br label %177

160:                                              ; preds = %100, %100
  br label %161

161:                                              ; preds = %100, %160
  %162 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %163 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %168 [
    i32 128, label %167
    i32 129, label %167
    i32 130, label %172
    i32 131, label %172
  ]

167:                                              ; preds = %161, %161
  br label %168

168:                                              ; preds = %161, %167
  %169 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %170 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %171 = call i64 @stv090x_write_reg(%struct.stv090x_state* %169, i32 %170, i32 20)
  br label %176

172:                                              ; preds = %161, %161
  %173 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %174 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %175 = call i64 @stv090x_write_reg(%struct.stv090x_state* %173, i32 %174, i32 18)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177, %99
  %179 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %180 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %284 [
    i32 130, label %184
    i32 131, label %209
    i32 128, label %234
    i32 129, label %259
  ]

184:                                              ; preds = %178
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %186 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %187 = call i32 @stv090x_read_reg(%struct.stv090x_state* %185, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %190 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %191 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @STV090x_SETFIELD_Px(i32 %188, i32 %189, i32 %194)
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %198 = call i32 @STV090x_SETFIELD_Px(i32 %196, i32 %197, i32 0)
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %201 = call i32 @STV090x_SETFIELD_Px(i32 %199, i32 %200, i32 0)
  %202 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %203 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %204 = load i32, i32* %4, align 4
  %205 = call i64 @stv090x_write_reg(%struct.stv090x_state* %202, i32 %203, i32 %204)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %184
  br label %601

208:                                              ; preds = %184
  br label %285

209:                                              ; preds = %178
  %210 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %211 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %212 = call i32 @stv090x_read_reg(%struct.stv090x_state* %210, i32 %211)
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %215 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %216 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @STV090x_SETFIELD_Px(i32 %213, i32 %214, i32 %219)
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %223 = call i32 @STV090x_SETFIELD_Px(i32 %221, i32 %222, i32 0)
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %226 = call i32 @STV090x_SETFIELD_Px(i32 %224, i32 %225, i32 1)
  %227 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %228 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %229 = load i32, i32* %4, align 4
  %230 = call i64 @stv090x_write_reg(%struct.stv090x_state* %227, i32 %228, i32 %229)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %209
  br label %601

233:                                              ; preds = %209
  br label %285

234:                                              ; preds = %178
  %235 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %236 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %237 = call i32 @stv090x_read_reg(%struct.stv090x_state* %235, i32 %236)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %240 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %241 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @STV090x_SETFIELD_Px(i32 %238, i32 %239, i32 %244)
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %248 = call i32 @STV090x_SETFIELD_Px(i32 %246, i32 %247, i32 1)
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %251 = call i32 @STV090x_SETFIELD_Px(i32 %249, i32 %250, i32 0)
  %252 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %253 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %254 = load i32, i32* %4, align 4
  %255 = call i64 @stv090x_write_reg(%struct.stv090x_state* %252, i32 %253, i32 %254)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %234
  br label %601

258:                                              ; preds = %234
  br label %285

259:                                              ; preds = %178
  %260 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %261 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %262 = call i32 @stv090x_read_reg(%struct.stv090x_state* %260, i32 %261)
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %265 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %266 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @STV090x_SETFIELD_Px(i32 %263, i32 %264, i32 %269)
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %273 = call i32 @STV090x_SETFIELD_Px(i32 %271, i32 %272, i32 1)
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %276 = call i32 @STV090x_SETFIELD_Px(i32 %274, i32 %275, i32 1)
  %277 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %278 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %279 = load i32, i32* %4, align 4
  %280 = call i64 @stv090x_write_reg(%struct.stv090x_state* %277, i32 %278, i32 %279)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %259
  br label %601

283:                                              ; preds = %259
  br label %285

284:                                              ; preds = %178
  br label %285

285:                                              ; preds = %284, %283, %258, %233, %208
  %286 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %287 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %286, i32 0, i32 0
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  switch i32 %290, label %391 [
    i32 130, label %291
    i32 131, label %316
    i32 128, label %341
    i32 129, label %366
  ]

291:                                              ; preds = %285
  %292 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %293 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %294 = call i32 @stv090x_read_reg(%struct.stv090x_state* %292, i32 %293)
  store i32 %294, i32* %4, align 4
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %297 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %298 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %297, i32 0, i32 0
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @STV090x_SETFIELD_Px(i32 %295, i32 %296, i32 %301)
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %305 = call i32 @STV090x_SETFIELD_Px(i32 %303, i32 %304, i32 0)
  %306 = load i32, i32* %4, align 4
  %307 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %308 = call i32 @STV090x_SETFIELD_Px(i32 %306, i32 %307, i32 0)
  %309 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %310 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %311 = load i32, i32* %4, align 4
  %312 = call i64 @stv090x_write_reg(%struct.stv090x_state* %309, i32 %310, i32 %311)
  %313 = icmp slt i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %291
  br label %601

315:                                              ; preds = %291
  br label %392

316:                                              ; preds = %285
  %317 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %318 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %319 = call i32 @stv090x_read_reg(%struct.stv090x_state* %317, i32 %318)
  store i32 %319, i32* %4, align 4
  %320 = load i32, i32* %4, align 4
  %321 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %322 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %323 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %322, i32 0, i32 0
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @STV090x_SETFIELD_Px(i32 %320, i32 %321, i32 %326)
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %330 = call i32 @STV090x_SETFIELD_Px(i32 %328, i32 %329, i32 0)
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %333 = call i32 @STV090x_SETFIELD_Px(i32 %331, i32 %332, i32 1)
  %334 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %335 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %336 = load i32, i32* %4, align 4
  %337 = call i64 @stv090x_write_reg(%struct.stv090x_state* %334, i32 %335, i32 %336)
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %316
  br label %601

340:                                              ; preds = %316
  br label %392

341:                                              ; preds = %285
  %342 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %343 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %344 = call i32 @stv090x_read_reg(%struct.stv090x_state* %342, i32 %343)
  store i32 %344, i32* %4, align 4
  %345 = load i32, i32* %4, align 4
  %346 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %347 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %348 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %347, i32 0, i32 0
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @STV090x_SETFIELD_Px(i32 %345, i32 %346, i32 %351)
  %353 = load i32, i32* %4, align 4
  %354 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %355 = call i32 @STV090x_SETFIELD_Px(i32 %353, i32 %354, i32 1)
  %356 = load i32, i32* %4, align 4
  %357 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %358 = call i32 @STV090x_SETFIELD_Px(i32 %356, i32 %357, i32 0)
  %359 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %360 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %361 = load i32, i32* %4, align 4
  %362 = call i64 @stv090x_write_reg(%struct.stv090x_state* %359, i32 %360, i32 %361)
  %363 = icmp slt i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %341
  br label %601

365:                                              ; preds = %341
  br label %392

366:                                              ; preds = %285
  %367 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %368 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %369 = call i32 @stv090x_read_reg(%struct.stv090x_state* %367, i32 %368)
  store i32 %369, i32* %4, align 4
  %370 = load i32, i32* %4, align 4
  %371 = load i32, i32* @TSFIFO_TEIUPDATE_FIELD, align 4
  %372 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %373 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %372, i32 0, i32 0
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @STV090x_SETFIELD_Px(i32 %370, i32 %371, i32 %376)
  %378 = load i32, i32* %4, align 4
  %379 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %380 = call i32 @STV090x_SETFIELD_Px(i32 %378, i32 %379, i32 1)
  %381 = load i32, i32* %4, align 4
  %382 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %383 = call i32 @STV090x_SETFIELD_Px(i32 %381, i32 %382, i32 1)
  %384 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %385 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %386 = load i32, i32* %4, align 4
  %387 = call i64 @stv090x_write_reg(%struct.stv090x_state* %384, i32 %385, i32 %386)
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %366
  br label %601

390:                                              ; preds = %366
  br label %392

391:                                              ; preds = %285
  br label %392

392:                                              ; preds = %391, %390, %365, %340, %315
  %393 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %394 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %393, i32 0, i32 0
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 4
  %397 = load i64, i64* %396, align 8
  %398 = icmp sgt i64 %397, 0
  br i1 %398, label %399, label %473

399:                                              ; preds = %392
  %400 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %401 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %400, i32 0, i32 0
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  switch i32 %404, label %406 [
    i32 130, label %405
    i32 131, label %405
    i32 128, label %429
    i32 129, label %429
  ]

405:                                              ; preds = %399, %399
  br label %406

406:                                              ; preds = %399, %405
  %407 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %408 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %407, i32 0, i32 1
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %414 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %413, i32 0, i32 0
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 4
  %417 = load i64, i64* %416, align 8
  %418 = sdiv i64 %417, 4
  %419 = sdiv i64 %412, %418
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* %5, align 4
  %421 = load i32, i32* %5, align 4
  %422 = icmp slt i32 %421, 8
  br i1 %422, label %423, label %424

423:                                              ; preds = %406
  store i32 8, i32* %5, align 4
  br label %424

424:                                              ; preds = %423, %406
  %425 = load i32, i32* %5, align 4
  %426 = icmp sgt i32 %425, 255
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 255, i32* %5, align 4
  br label %428

428:                                              ; preds = %427, %424
  br label %452

429:                                              ; preds = %399, %399
  %430 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %431 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %430, i32 0, i32 1
  %432 = load %struct.TYPE_3__*, %struct.TYPE_3__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  %436 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %437 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %436, i32 0, i32 0
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = sdiv i64 %440, 32
  %442 = sdiv i64 %435, %441
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %5, align 4
  %444 = load i32, i32* %5, align 4
  %445 = icmp slt i32 %444, 32
  br i1 %445, label %446, label %447

446:                                              ; preds = %429
  store i32 32, i32* %5, align 4
  br label %447

447:                                              ; preds = %446, %429
  %448 = load i32, i32* %5, align 4
  %449 = icmp sgt i32 %448, 255
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  store i32 255, i32* %5, align 4
  br label %451

451:                                              ; preds = %450, %447
  br label %452

452:                                              ; preds = %451, %428
  %453 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %454 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %455 = call i32 @stv090x_read_reg(%struct.stv090x_state* %453, i32 %454)
  store i32 %455, i32* %4, align 4
  %456 = load i32, i32* %4, align 4
  %457 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %458 = call i32 @STV090x_SETFIELD_Px(i32 %456, i32 %457, i32 3)
  %459 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %460 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %461 = load i32, i32* %4, align 4
  %462 = call i64 @stv090x_write_reg(%struct.stv090x_state* %459, i32 %460, i32 %461)
  %463 = icmp slt i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %452
  br label %601

465:                                              ; preds = %452
  %466 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %467 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %468 = load i32, i32* %5, align 4
  %469 = call i64 @stv090x_write_reg(%struct.stv090x_state* %466, i32 %467, i32 %468)
  %470 = icmp slt i64 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %465
  br label %601

472:                                              ; preds = %465
  br label %473

473:                                              ; preds = %472, %392
  %474 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %475 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %474, i32 0, i32 0
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 5
  %478 = load i64, i64* %477, align 8
  %479 = icmp sgt i64 %478, 0
  br i1 %479, label %480, label %554

480:                                              ; preds = %473
  %481 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %482 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %481, i32 0, i32 0
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  switch i32 %485, label %487 [
    i32 130, label %486
    i32 131, label %486
    i32 128, label %510
    i32 129, label %510
  ]

486:                                              ; preds = %480, %480
  br label %487

487:                                              ; preds = %480, %486
  %488 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %489 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %488, i32 0, i32 1
  %490 = load %struct.TYPE_3__*, %struct.TYPE_3__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = sext i32 %492 to i64
  %494 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %495 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %494, i32 0, i32 0
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i32 0, i32 5
  %498 = load i64, i64* %497, align 8
  %499 = sdiv i64 %498, 4
  %500 = sdiv i64 %493, %499
  %501 = trunc i64 %500 to i32
  store i32 %501, i32* %6, align 4
  %502 = load i32, i32* %6, align 4
  %503 = icmp slt i32 %502, 8
  br i1 %503, label %504, label %505

504:                                              ; preds = %487
  store i32 8, i32* %6, align 4
  br label %505

505:                                              ; preds = %504, %487
  %506 = load i32, i32* %6, align 4
  %507 = icmp sgt i32 %506, 255
  br i1 %507, label %508, label %509

508:                                              ; preds = %505
  store i32 255, i32* %6, align 4
  br label %509

509:                                              ; preds = %508, %505
  br label %533

510:                                              ; preds = %480, %480
  %511 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %512 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %511, i32 0, i32 1
  %513 = load %struct.TYPE_3__*, %struct.TYPE_3__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  %517 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %518 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %517, i32 0, i32 0
  %519 = load %struct.TYPE_4__*, %struct.TYPE_4__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 5
  %521 = load i64, i64* %520, align 8
  %522 = sdiv i64 %521, 32
  %523 = sdiv i64 %516, %522
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %6, align 4
  %525 = load i32, i32* %6, align 4
  %526 = icmp slt i32 %525, 32
  br i1 %526, label %527, label %528

527:                                              ; preds = %510
  store i32 32, i32* %6, align 4
  br label %528

528:                                              ; preds = %527, %510
  %529 = load i32, i32* %6, align 4
  %530 = icmp sgt i32 %529, 255
  br i1 %530, label %531, label %532

531:                                              ; preds = %528
  store i32 255, i32* %6, align 4
  br label %532

532:                                              ; preds = %531, %528
  br label %533

533:                                              ; preds = %532, %509
  %534 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %535 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %536 = call i32 @stv090x_read_reg(%struct.stv090x_state* %534, i32 %535)
  store i32 %536, i32* %4, align 4
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %539 = call i32 @STV090x_SETFIELD_Px(i32 %537, i32 %538, i32 3)
  %540 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %541 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %542 = load i32, i32* %4, align 4
  %543 = call i64 @stv090x_write_reg(%struct.stv090x_state* %540, i32 %541, i32 %542)
  %544 = icmp slt i64 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %533
  br label %601

546:                                              ; preds = %533
  %547 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %548 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %549 = load i32, i32* %6, align 4
  %550 = call i64 @stv090x_write_reg(%struct.stv090x_state* %547, i32 %548, i32 %549)
  %551 = icmp slt i64 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %546
  br label %601

553:                                              ; preds = %546
  br label %554

554:                                              ; preds = %553, %473
  %555 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %556 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %557 = call i32 @stv090x_read_reg(%struct.stv090x_state* %555, i32 %556)
  store i32 %557, i32* %4, align 4
  %558 = load i32, i32* %4, align 4
  %559 = load i32, i32* @RST_HWARE_FIELD, align 4
  %560 = call i32 @STV090x_SETFIELD_Px(i32 %558, i32 %559, i32 1)
  %561 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %562 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %563 = load i32, i32* %4, align 4
  %564 = call i64 @stv090x_write_reg(%struct.stv090x_state* %561, i32 %562, i32 %563)
  %565 = icmp slt i64 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %554
  br label %601

567:                                              ; preds = %554
  %568 = load i32, i32* %4, align 4
  %569 = load i32, i32* @RST_HWARE_FIELD, align 4
  %570 = call i32 @STV090x_SETFIELD_Px(i32 %568, i32 %569, i32 0)
  %571 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %572 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %573 = load i32, i32* %4, align 4
  %574 = call i64 @stv090x_write_reg(%struct.stv090x_state* %571, i32 %572, i32 %573)
  %575 = icmp slt i64 %574, 0
  br i1 %575, label %576, label %577

576:                                              ; preds = %567
  br label %601

577:                                              ; preds = %567
  %578 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %579 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %580 = call i32 @stv090x_read_reg(%struct.stv090x_state* %578, i32 %579)
  store i32 %580, i32* %4, align 4
  %581 = load i32, i32* %4, align 4
  %582 = load i32, i32* @RST_HWARE_FIELD, align 4
  %583 = call i32 @STV090x_SETFIELD_Px(i32 %581, i32 %582, i32 1)
  %584 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %585 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %586 = load i32, i32* %4, align 4
  %587 = call i64 @stv090x_write_reg(%struct.stv090x_state* %584, i32 %585, i32 %586)
  %588 = icmp slt i64 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %577
  br label %601

590:                                              ; preds = %577
  %591 = load i32, i32* %4, align 4
  %592 = load i32, i32* @RST_HWARE_FIELD, align 4
  %593 = call i32 @STV090x_SETFIELD_Px(i32 %591, i32 %592, i32 0)
  %594 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %595 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %596 = load i32, i32* %4, align 4
  %597 = call i64 @stv090x_write_reg(%struct.stv090x_state* %594, i32 %595, i32 %596)
  %598 = icmp slt i64 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %590
  br label %601

600:                                              ; preds = %590
  store i32 0, i32* %2, align 4
  br label %604

601:                                              ; preds = %599, %589, %576, %566, %552, %545, %471, %464, %389, %364, %339, %314, %282, %257, %232, %207, %157, %151, %145, %132, %96, %89, %73, %67, %61, %48, %35
  %602 = load i32, i32* @FE_ERROR, align 4
  %603 = call i32 @dprintk(i32 %602, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %604

604:                                              ; preds = %601, %600
  %605 = load i32, i32* %2, align 4
  ret i32 %605
}

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
