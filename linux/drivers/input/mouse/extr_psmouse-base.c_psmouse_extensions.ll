; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@focaltech_detect = common dso_local global i32 0, align 4
@PSMOUSE_IMEX = common dso_local global i32 0, align 4
@CONFIG_MOUSE_PS2_FOCALTECH = common dso_local global i32 0, align 4
@PSMOUSE_FOCALTECH = common dso_local global i32 0, align 4
@PSMOUSE_PS2 = common dso_local global i32 0, align 4
@psmouse_max_proto = common dso_local global i32 0, align 4
@PSMOUSE_LIFEBOOK = common dso_local global i32 0, align 4
@PSMOUSE_VMMOUSE = common dso_local global i32 0, align 4
@PSMOUSE_THINKPS = common dso_local global i32 0, align 4
@synaptics_detect = common dso_local global i32 0, align 4
@CONFIG_MOUSE_PS2_SYNAPTICS = common dso_local global i32 0, align 4
@CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS = common dso_local global i32 0, align 4
@PSMOUSE_SYNAPTICS = common dso_local global i32 0, align 4
@PSMOUSE_CYPRESS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@PSMOUSE_ALPS = common dso_local global i32 0, align 4
@PSMOUSE_HGPK = common dso_local global i32 0, align 4
@PSMOUSE_ELANTECH = common dso_local global i32 0, align 4
@PSMOUSE_GENPS = common dso_local global i32 0, align 4
@PSMOUSE_PS2PP = common dso_local global i32 0, align 4
@PSMOUSE_TRACKPOINT = common dso_local global i32 0, align 4
@PSMOUSE_TOUCHKIT_PS2 = common dso_local global i32 0, align 4
@PSMOUSE_FSP = common dso_local global i32 0, align 4
@PSMOUSE_IMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @psmouse_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_extensions(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @focaltech_detect, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @psmouse_do_detect(i32 %10, %struct.psmouse* %11, i32 0, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PSMOUSE_IMEX, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @CONFIG_MOUSE_PS2_FOCALTECH, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %28 = call i64 @focaltech_init(%struct.psmouse* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @PSMOUSE_FOCALTECH, align 4
  store i32 %31, i32* %4, align 4
  br label %265

32:                                               ; preds = %26, %19, %15
  %33 = load i32, i32* @PSMOUSE_PS2, align 4
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* @psmouse_max_proto, align 4
  br label %34

34:                                               ; preds = %32, %3
  %35 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %36 = load i32, i32* @PSMOUSE_LIFEBOOK, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PSMOUSE_IMEX, align 4
  %40 = icmp ugt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @psmouse_try_protocol(%struct.psmouse* %35, i32 %36, i32* %6, i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @PSMOUSE_LIFEBOOK, align 4
  store i32 %45, i32* %4, align 4
  br label %265

46:                                               ; preds = %34
  %47 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %48 = load i32, i32* @PSMOUSE_VMMOUSE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PSMOUSE_IMEX, align 4
  %52 = icmp ugt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @psmouse_try_protocol(%struct.psmouse* %47, i32 %48, i32* %6, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @PSMOUSE_VMMOUSE, align 4
  store i32 %57, i32* %4, align 4
  br label %265

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PSMOUSE_IMEX, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %64 = load i32, i32* @PSMOUSE_THINKPS, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @psmouse_try_protocol(%struct.psmouse* %63, i32 %64, i32* %6, i32 %65, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @PSMOUSE_THINKPS, align 4
  store i32 %69, i32* %4, align 4
  br label %265

70:                                               ; preds = %62, %58
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @PSMOUSE_PS2, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load i32, i32* @synaptics_detect, align 4
  %76 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @psmouse_do_detect(i32 %75, %struct.psmouse* %76, i32 0, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @PSMOUSE_IMEX, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load i32, i32* @CONFIG_MOUSE_PS2_SYNAPTICS, align 4
  %86 = call i64 @IS_ENABLED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS, align 4
  %90 = call i64 @IS_ENABLED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @PSMOUSE_SYNAPTICS, align 4
  store i32 %96, i32* %4, align 4
  br label %265

97:                                               ; preds = %92
  %98 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %99 = call i32 @synaptics_init(%struct.psmouse* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %265

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %80
  %108 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %109 = call i32 @synaptics_reset(%struct.psmouse* %108)
  br label %110

110:                                              ; preds = %107, %74, %70
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @PSMOUSE_IMEX, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %116 = load i32, i32* @PSMOUSE_CYPRESS, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @psmouse_try_protocol(%struct.psmouse* %115, i32 %116, i32* %6, i32 %117, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @PSMOUSE_CYPRESS, align 4
  store i32 %121, i32* %4, align 4
  br label %265

122:                                              ; preds = %114, %110
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @PSMOUSE_IMEX, align 4
  %125 = icmp ugt i32 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %128 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %127, i32 0, i32 0
  %129 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %130 = call i32 @ps2_command(i32* %128, i32* null, i32 %129)
  %131 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %132 = load i32, i32* @PSMOUSE_ALPS, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @psmouse_try_protocol(%struct.psmouse* %131, i32 %132, i32* %6, i32 %133, i32 1)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @PSMOUSE_ALPS, align 4
  store i32 %137, i32* %4, align 4
  br label %265

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %122
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @PSMOUSE_IMEX, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %145 = load i32, i32* @PSMOUSE_HGPK, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i64 @psmouse_try_protocol(%struct.psmouse* %144, i32 %145, i32* %6, i32 %146, i32 1)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @PSMOUSE_HGPK, align 4
  store i32 %150, i32* %4, align 4
  br label %265

151:                                              ; preds = %143, %139
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @PSMOUSE_IMEX, align 4
  %154 = icmp ugt i32 %152, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %151
  %156 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %157 = load i32, i32* @PSMOUSE_ELANTECH, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i64 @psmouse_try_protocol(%struct.psmouse* %156, i32 %157, i32* %6, i32 %158, i32 0)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* @PSMOUSE_ELANTECH, align 4
  store i32 %165, i32* %4, align 4
  br label %265

166:                                              ; preds = %161
  %167 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %168 = call i32 @elantech_init(%struct.psmouse* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %265

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %155, %151
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @PSMOUSE_IMEX, align 4
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %178, label %211

178:                                              ; preds = %174
  %179 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %180 = load i32, i32* @PSMOUSE_GENPS, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @psmouse_try_protocol(%struct.psmouse* %179, i32 %180, i32* %6, i32 %181, i32 1)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @PSMOUSE_GENPS, align 4
  store i32 %185, i32* %4, align 4
  br label %265

186:                                              ; preds = %178
  %187 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %188 = load i32, i32* @PSMOUSE_PS2PP, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i64 @psmouse_try_protocol(%struct.psmouse* %187, i32 %188, i32* %6, i32 %189, i32 1)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @PSMOUSE_PS2PP, align 4
  store i32 %193, i32* %4, align 4
  br label %265

194:                                              ; preds = %186
  %195 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %196 = load i32, i32* @PSMOUSE_TRACKPOINT, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i64 @psmouse_try_protocol(%struct.psmouse* %195, i32 %196, i32* %6, i32 %197, i32 1)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @PSMOUSE_TRACKPOINT, align 4
  store i32 %201, i32* %4, align 4
  br label %265

202:                                              ; preds = %194
  %203 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %204 = load i32, i32* @PSMOUSE_TOUCHKIT_PS2, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i64 @psmouse_try_protocol(%struct.psmouse* %203, i32 %204, i32* %6, i32 %205, i32 1)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @PSMOUSE_TOUCHKIT_PS2, align 4
  store i32 %209, i32* %4, align 4
  br label %265

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %174
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @PSMOUSE_IMEX, align 4
  %214 = icmp ugt i32 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %217 = load i32, i32* @PSMOUSE_FSP, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i64 @psmouse_try_protocol(%struct.psmouse* %216, i32 %217, i32* %6, i32 %218, i32 1)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load i32, i32* @PSMOUSE_FSP, align 4
  store i32 %222, i32* %4, align 4
  br label %265

223:                                              ; preds = %215, %211
  %224 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %225 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %224, i32 0, i32 0
  %226 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %227 = call i32 @ps2_command(i32* %225, i32* null, i32 %226)
  %228 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %229 = call i32 @psmouse_reset(%struct.psmouse* %228)
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @PSMOUSE_IMEX, align 4
  %232 = icmp uge i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %223
  %234 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %235 = load i32, i32* @PSMOUSE_IMEX, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i64 @psmouse_try_protocol(%struct.psmouse* %234, i32 %235, i32* %6, i32 %236, i32 1)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = load i32, i32* @PSMOUSE_IMEX, align 4
  store i32 %240, i32* %4, align 4
  br label %265

241:                                              ; preds = %233, %223
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @PSMOUSE_IMPS, align 4
  %244 = icmp uge i32 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %247 = load i32, i32* @PSMOUSE_IMPS, align 4
  %248 = load i32, i32* %7, align 4
  %249 = call i64 @psmouse_try_protocol(%struct.psmouse* %246, i32 %247, i32* %6, i32 %248, i32 1)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* @PSMOUSE_IMPS, align 4
  store i32 %252, i32* %4, align 4
  br label %265

253:                                              ; preds = %245, %241
  %254 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %255 = load i32, i32* @PSMOUSE_PS2, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i64 @psmouse_try_protocol(%struct.psmouse* %254, i32 %255, i32* %6, i32 %256, i32 1)
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %262 = call i32 @psmouse_reset(%struct.psmouse* %261)
  br label %263

263:                                              ; preds = %260, %253
  %264 = load i32, i32* @PSMOUSE_PS2, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %263, %251, %239, %221, %208, %200, %192, %184, %171, %164, %149, %136, %120, %102, %95, %68, %56, %44, %30
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i64 @psmouse_do_detect(i32, %struct.psmouse*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @focaltech_init(%struct.psmouse*) #1

declare dso_local i64 @psmouse_try_protocol(%struct.psmouse*, i32, i32*, i32, i32) #1

declare dso_local i32 @synaptics_init(%struct.psmouse*) #1

declare dso_local i32 @synaptics_reset(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(i32*, i32*, i32) #1

declare dso_local i32 @elantech_init(%struct.psmouse*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
