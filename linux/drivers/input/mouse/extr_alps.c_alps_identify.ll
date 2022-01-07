; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_protocol_info = type { i32 }
%struct.psmouse = type { i32 }
%struct.alps_data = type { i32, i32 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_RESET_WRAP = common dso_local global i32 0, align 4
@alps_v4_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v5_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v7_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v3_rushmore_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v3_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v8_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@alps_v9_protocol_data = common dso_local global %struct.alps_protocol_info zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unsupported ALPS V9 touchpad: E7=%3ph, EC=%3ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Likely not an ALPS touchpad: E7=%3ph, EC=%3ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*)* @alps_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_identify(%struct.psmouse* %0, %struct.alps_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca %struct.alps_protocol_info*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.alps_data* %1, %struct.alps_data** %5, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %13 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %15 = call i64 @alps_rpt_cmd(%struct.psmouse* %11, i32 %12, i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %253

20:                                               ; preds = %2
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 248
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 100
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %26, %20
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %253

44:                                               ; preds = %36, %31
  %45 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %46 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %47 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %49 = call i64 @alps_rpt_cmd(%struct.psmouse* %45, i32 %46, i32 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %53 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %54 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %56 = call i64 @alps_rpt_cmd(%struct.psmouse* %52, i32 %53, i32 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %60 = call i64 @alps_exit_command_mode(%struct.psmouse* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %51, %44
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %253

65:                                               ; preds = %58
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %68 = call %struct.alps_protocol_info* @alps_match_table(i8* %66, i8* %67)
  store %struct.alps_protocol_info* %68, %struct.alps_protocol_info** %6, align 8
  %69 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %6, align 8
  %70 = icmp ne %struct.alps_protocol_info* %69, null
  br i1 %70, label %229, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 115
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 100
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 138
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store %struct.alps_protocol_info* @alps_v4_protocol_data, %struct.alps_protocol_info** %6, align 8
  br label %228

92:                                               ; preds = %86, %81, %76, %71
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 115
  br i1 %96, label %97, label %123

97:                                               ; preds = %92
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 80
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 115
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %112
  store %struct.alps_protocol_info* @alps_v5_protocol_data, %struct.alps_protocol_info** %6, align 8
  br label %227

123:                                              ; preds = %117, %107, %102, %97, %92
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 136
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 240
  %133 = icmp eq i32 %132, 176
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 240
  %139 = icmp eq i32 %138, 192
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %128
  store %struct.alps_protocol_info* @alps_v7_protocol_data, %struct.alps_protocol_info** %6, align 8
  br label %226

141:                                              ; preds = %134, %123
  %142 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 136
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store %struct.alps_protocol_info* @alps_v3_rushmore_data, %struct.alps_protocol_info** %6, align 8
  br label %225

152:                                              ; preds = %146, %141
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 136
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 7
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp sge i32 %165, 144
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp sle i32 %170, 157
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store %struct.alps_protocol_info* @alps_v3_protocol_data, %struct.alps_protocol_info** %6, align 8
  br label %224

173:                                              ; preds = %167, %162, %157, %152
  %174 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 115
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 3
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %186, 20
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, 40
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %183
  store %struct.alps_protocol_info* @alps_v8_protocol_data, %struct.alps_protocol_info** %6, align 8
  br label %223

194:                                              ; preds = %188, %178, %173
  %195 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 115
  br i1 %198, label %199, label %216

199:                                              ; preds = %194
  %200 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %216

204:                                              ; preds = %199
  %205 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp eq i32 %207, 200
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  store %struct.alps_protocol_info* @alps_v9_protocol_data, %struct.alps_protocol_info** %6, align 8
  %210 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %211 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %212 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %213 = call i32 @psmouse_warn(%struct.psmouse* %210, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %211, i8* %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %253

216:                                              ; preds = %204, %199, %194
  %217 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %219 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %220 = call i32 @psmouse_dbg(%struct.psmouse* %217, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %218, i8* %219)
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %253

223:                                              ; preds = %193
  br label %224

224:                                              ; preds = %223, %172
  br label %225

225:                                              ; preds = %224, %151
  br label %226

226:                                              ; preds = %225, %140
  br label %227

227:                                              ; preds = %226, %122
  br label %228

228:                                              ; preds = %227, %91
  br label %229

229:                                              ; preds = %228, %65
  %230 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %231 = icmp ne %struct.alps_data* %230, null
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  %233 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %234 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %237 = call i32 @memcpy(i32 %235, i8* %236, i32 3)
  %238 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %239 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %242 = call i32 @memcpy(i32 %240, i8* %241, i32 3)
  %243 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %244 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %245 = load %struct.alps_protocol_info*, %struct.alps_protocol_info** %6, align 8
  %246 = call i32 @alps_set_protocol(%struct.psmouse* %243, %struct.alps_data* %244, %struct.alps_protocol_info* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %232
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %3, align 4
  br label %253

251:                                              ; preds = %232
  br label %252

252:                                              ; preds = %251, %229
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %252, %249, %216, %209, %62, %41, %17
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i64 @alps_rpt_cmd(%struct.psmouse*, i32, i32, i8*) #1

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local %struct.alps_protocol_info* @alps_match_table(i8*, i8*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i8*, i8*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @alps_set_protocol(%struct.psmouse*, %struct.alps_data*, %struct.alps_protocol_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
