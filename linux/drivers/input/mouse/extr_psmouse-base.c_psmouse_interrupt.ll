; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.psmouse = type { i64, i32, i64, i64*, i32, i8*, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@PSMOUSE_IGNORE = common dso_local global i64 0, align 8
@SERIO_TIMEOUT = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@PSMOUSE_ACTIVATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"bad data from KBC -%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" timeout\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" bad parity\00", align 1
@SERIO_OOB_DATA = common dso_local global i32 0, align 4
@PS2_FLAG_ACK = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4
@PSMOUSE_RESYNCING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"%s at %s lost synchronization, throwing %d bytes away.\0A\00", align 1
@PSMOUSE_RET_BAT = common dso_local global i64 0, align 8
@PSMOUSE_RET_ID = common dso_local global i64 0, align 8
@PSMOUSE_HGPK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8*, i32)* @psmouse_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_interrupt(%struct.serio* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.psmouse*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %8)
  store %struct.psmouse* %9, %struct.psmouse** %7, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PSMOUSE_IGNORE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %305

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SERIO_TIMEOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SERIO_PARITY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %28 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 7
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %26, %21
  %35 = phi i1 [ false, %21 ], [ %33, %26 ]
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi i1 [ true, %16 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PSMOUSE_ACTIVATED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SERIO_TIMEOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SERIO_PARITY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @psmouse_warn(%struct.psmouse* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %60)
  br label %62

62:                                               ; preds = %47, %41
  %63 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %64 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %63, i32 0, i32 10
  %65 = call i32 @ps2_cmd_aborted(%struct.TYPE_6__* %64)
  br label %305

66:                                               ; preds = %36
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SERIO_OOB_DATA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @psmouse_handle_oob_data(%struct.psmouse* %72, i8* %73)
  br label %305

75:                                               ; preds = %66
  %76 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PS2_FLAG_ACK, align 4
  %81 = and i32 %79, %80
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %86 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %85, i32 0, i32 10
  %87 = load i8*, i8** %5, align 8
  %88 = call i64 @ps2_handle_ack(%struct.TYPE_6__* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %305

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %75
  %93 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %94 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PS2_FLAG_CMD, align 4
  %98 = and i32 %96, %97
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %103 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %102, i32 0, i32 10
  %104 = load i8*, i8** %5, align 8
  %105 = call i64 @ps2_handle_response(%struct.TYPE_6__* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %305

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %92
  %110 = load %struct.serio*, %struct.serio** %4, align 8
  %111 = getelementptr inbounds %struct.serio, %struct.serio* %110, i32 0, i32 0
  %112 = call i32 @pm_wakeup_event(i32* %111, i32 0)
  %113 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %114 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PSMOUSE_RESYNCING, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %305

119:                                              ; preds = %109
  %120 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %121 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PSMOUSE_ACTIVATED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %119
  %126 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %127 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %125
  %131 = load i8*, i8** @jiffies, align 8
  %132 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %133 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @HZ, align 4
  %136 = sdiv i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, i8* %134, i64 %137
  %139 = call i64 @time_after(i8* %131, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %130
  %142 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %143 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %144 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %147 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %150 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @psmouse_info(%struct.psmouse* %142, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %148, i32 %151)
  %153 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %154 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %159 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %161 = load i64, i64* @PSMOUSE_RESYNCING, align 8
  %162 = call i32 @__psmouse_set_state(%struct.psmouse* %160, i64 %161)
  %163 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %164 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %165 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %164, i32 0, i32 6
  %166 = call i32 @psmouse_queue_work(%struct.psmouse* %163, i32* %165, i32 0)
  br label %305

167:                                              ; preds = %130, %125, %119
  %168 = load i8*, i8** %5, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %171 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %174 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i64, i64* %172, i64 %177
  store i64 %169, i64* %178, align 8
  %179 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %180 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PSMOUSE_RET_BAT, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %167
  %187 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %188 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp sle i32 %189, 2
  br label %191

191:                                              ; preds = %186, %167
  %192 = phi i1 [ false, %167 ], [ %190, %186 ]
  %193 = zext i1 %192 to i32
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %254

196:                                              ; preds = %191
  %197 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %198 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i8*, i8** @jiffies, align 8
  %203 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %204 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %203, i32 0, i32 5
  store i8* %202, i8** %204, align 8
  br label %305

205:                                              ; preds = %196
  %206 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %207 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %206, i32 0, i32 3
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @PSMOUSE_RET_ID, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %229, label %213

213:                                              ; preds = %205
  %214 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %215 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %214, i32 0, i32 7
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @PSMOUSE_HGPK, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %213
  %222 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %223 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %222, i32 0, i32 3
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @PSMOUSE_RET_BAT, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %221, %205
  %230 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %231 = load i64, i64* @PSMOUSE_IGNORE, align 8
  %232 = call i32 @__psmouse_set_state(%struct.psmouse* %230, i64 %231)
  %233 = load %struct.serio*, %struct.serio** %4, align 8
  %234 = call i32 @serio_reconnect(%struct.serio* %233)
  br label %305

235:                                              ; preds = %221, %213
  %236 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %237 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %236, i32 0, i32 1
  store i32 1, i32* %237, align 8
  %238 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %239 = call i64 @psmouse_handle_byte(%struct.psmouse* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %305

242:                                              ; preds = %235
  %243 = load i8*, i8** %5, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %246 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %249 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i64, i64* %247, i64 %252
  store i64 %244, i64* %253, align 8
  br label %254

254:                                              ; preds = %242, %191
  %255 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %256 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @PSMOUSE_ACTIVATED, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %299

260:                                              ; preds = %254
  %261 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %262 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %299

265:                                              ; preds = %260
  %266 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %267 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %299

270:                                              ; preds = %265
  %271 = load i8*, i8** @jiffies, align 8
  %272 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %273 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %272, i32 0, i32 5
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %276 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @HZ, align 4
  %279 = mul nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr i8, i8* %274, i64 %280
  %282 = call i64 @time_after(i8* %271, i8* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %270
  %285 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %286 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %285, i32 0, i32 3
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %291 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %290, i32 0, i32 2
  store i64 %289, i64* %291, align 8
  %292 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %293 = load i64, i64* @PSMOUSE_RESYNCING, align 8
  %294 = call i32 @__psmouse_set_state(%struct.psmouse* %292, i64 %293)
  %295 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %296 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %297 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %296, i32 0, i32 6
  %298 = call i32 @psmouse_queue_work(%struct.psmouse* %295, i32* %297, i32 0)
  br label %305

299:                                              ; preds = %270, %265, %260, %254
  %300 = load i8*, i8** @jiffies, align 8
  %301 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %302 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %301, i32 0, i32 5
  store i8* %300, i8** %302, align 8
  %303 = load %struct.psmouse*, %struct.psmouse** %7, align 8
  %304 = call i64 @psmouse_handle_byte(%struct.psmouse* %303)
  br label %305

305:                                              ; preds = %299, %284, %241, %229, %201, %141, %118, %107, %90, %71, %62, %15
  %306 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %306
}

declare dso_local %struct.psmouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i8*, i8*) #1

declare dso_local i32 @ps2_cmd_aborted(%struct.TYPE_6__*) #1

declare dso_local i32 @psmouse_handle_oob_data(%struct.psmouse*, i8*) #1

declare dso_local i64 @ps2_handle_ack(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @ps2_handle_response(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @psmouse_info(%struct.psmouse*, i8*, i32, i32, i32) #1

declare dso_local i32 @__psmouse_set_state(%struct.psmouse*, i64) #1

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @serio_reconnect(%struct.serio*) #1

declare dso_local i64 @psmouse_handle_byte(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
