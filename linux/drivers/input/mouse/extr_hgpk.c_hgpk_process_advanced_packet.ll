; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_advanced_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_advanced_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev*, %struct.hgpk_data* }
%struct.input_dev = type { i32 }
%struct.hgpk_data = type { i64, i32, i32, i64, i32, i32 }

@HGPK_MODE_GLIDESENSOR = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@tpdebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"pd=%d fd=%d z=%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pd=%d \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"l=%d r=%d x=%d y=%d\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@SPEW_WATCH_COUNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"hard spew detected\0A\00", align 1
@RECALIBRATING = common dso_local global i32 0, align 4
@spew_delay = common dso_local global i32 0, align 4
@HGPK_MODE_PENTABLET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"discarding\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @hgpk_process_advanced_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_process_advanced_packet(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.hgpk_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 2
  %18 = load %struct.hgpk_data*, %struct.hgpk_data** %17, align 8
  store %struct.hgpk_data* %18, %struct.hgpk_data** %3, align 8
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 1
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %4, align 8
  %22 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %23 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 120
  %61 = shl i32 %60, 4
  %62 = or i32 %55, %61
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 112
  %72 = shl i32 %71, 3
  %73 = or i32 %66, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %75 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HGPK_MODE_GLIDESENSOR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 5
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %13, align 4
  %102 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %103 = load i32, i32* @ABS_PRESSURE, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @input_report_abs(%struct.input_dev* %102, i32 %103, i32 %104)
  %106 = load i64, i64* @tpdebug, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %79
  %109 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %79
  br label %123

115:                                              ; preds = %1
  %116 = load i64, i64* @tpdebug, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %114
  %124 = load i64, i64* @tpdebug, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %135 = load i32, i32* @BTN_TOUCH, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @input_report_key(%struct.input_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %139 = load i32, i32* @BTN_LEFT, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @input_report_key(%struct.input_dev* %138, i32 %139, i32 %140)
  %142 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %143 = load i32, i32* @BTN_RIGHT, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @input_report_key(%struct.input_dev* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %133
  %149 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %150 = call i32 @hgpk_reset_hack_state(%struct.psmouse* %149)
  br label %245

151:                                              ; preds = %133
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %154 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %160 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %157
  %164 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %165 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* @SPEW_WATCH_COUNT, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %163
  %171 = load i64, i64* @tpdebug, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %175 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* @RECALIBRATING, align 4
  %178 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %179 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %181 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %182 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %181, i32 0, i32 4
  %183 = load i32, i32* @spew_delay, align 4
  %184 = call i32 @msecs_to_jiffies(i32 %183)
  %185 = call i32 @psmouse_queue_work(%struct.psmouse* %180, i32* %182, i32 %184)
  br label %186

186:                                              ; preds = %176, %163
  br label %245

187:                                              ; preds = %157, %151
  %188 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %189 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  %190 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %191 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @HGPK_MODE_PENTABLET, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %230

195:                                              ; preds = %187
  %196 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %197 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, -1
  br i1 %199, label %200, label %230

200:                                              ; preds = %195
  %201 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %202 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %203, %204
  store i32 %205, i32* %14, align 4
  %206 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %207 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %10, align 4
  %210 = sub nsw i32 %208, %209
  store i32 %210, i32* %15, align 4
  %211 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i64 @hgpk_discard_decay_hack(%struct.psmouse* %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %200
  %217 = load i64, i64* @tpdebug, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %221 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %216
  br label %245

223:                                              ; preds = %200
  %224 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @hgpk_spewing_hack(%struct.psmouse* %224, i32 %225, i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %223, %195, %187
  %231 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %232 = load i32, i32* @ABS_X, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @input_report_abs(%struct.input_dev* %231, i32 %232, i32 %233)
  %235 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %236 = load i32, i32* @ABS_Y, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @input_report_abs(%struct.input_dev* %235, i32 %236, i32 %237)
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %241 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.hgpk_data*, %struct.hgpk_data** %3, align 8
  %244 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  br label %245

245:                                              ; preds = %230, %222, %186, %148
  %246 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %247 = call i32 @input_sync(%struct.input_dev* %246)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, ...) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @hgpk_reset_hack_state(%struct.psmouse*) #1

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @hgpk_discard_decay_hack(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @hgpk_spewing_hack(%struct.psmouse*, i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
