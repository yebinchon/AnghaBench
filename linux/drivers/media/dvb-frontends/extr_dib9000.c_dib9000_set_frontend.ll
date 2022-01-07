; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_22__, %struct.dib9000_state* }
%struct.TYPE_22__ = type { i8* }
%struct.dib9000_state = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_23__**, i32, %struct.TYPE_19__, %struct.dvb_frontend_parametersContext }
%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.dvb_frontend_parametersContext = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"dib9000: must specify frequency\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"dib9000: must specify bandwidth\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@SYS_DVBT = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@CHANNEL_STATUS_PARAMETERS_UNKNOWN = common dso_local global i8* null, align 8
@CHANNEL_STATUS_PARAMETERS_SET = common dso_local global i8* null, align 8
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@CT_DEMOD_START = common dso_local global i32 0, align 4
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@FE_STATUS_TUNE_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"tune failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"tune success on frontend%i\0A\00", align 1
@OUTMODE_DIVERSITY = common dso_local global i32 0, align 4
@DIB9000_PID_FILTER_CTRL = common dso_local global i64 0, align 8
@DIB9000_PID_FILTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib9000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dvb_frontend_parametersContext, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.dib9000_state*, %struct.dib9000_state** %16, align 8
  store %struct.dib9000_state* %17, %struct.dib9000_state** %4, align 8
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %19 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %18, i32 0, i32 3
  %20 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %20, i64 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %603

29:                                               ; preds = %1
  %30 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %31 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %30, i32 0, i32 3
  %32 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %32, i64 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %603

41:                                               ; preds = %29
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %43 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %45 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %44, i32 0, i32 4
  %46 = call i64 @mutex_lock_interruptible(i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %603

50:                                               ; preds = %41
  %51 = load i8*, i8** @SYS_DVBT, align 8
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %56 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %55, i32 0, i32 3
  %57 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %57, i64 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %98, label %65

65:                                               ; preds = %50
  %66 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %67 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %68, i64 0
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %98, label %76

76:                                               ; preds = %65
  %77 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %78 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %77, i32 0, i32 3
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %79, i64 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QAM_AUTO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %76
  %88 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %89 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %88, i32 0, i32 3
  %90 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %90, i64 0
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FEC_AUTO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %87, %76, %65, %50
  %99 = load i8*, i8** @CHANNEL_STATUS_PARAMETERS_UNKNOWN, align 8
  %100 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %101 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.dvb_frontend_parametersContext, %struct.dvb_frontend_parametersContext* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  br label %108

103:                                              ; preds = %87
  %104 = load i8*, i8** @CHANNEL_STATUS_PARAMETERS_SET, align 8
  %105 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %106 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.dvb_frontend_parametersContext, %struct.dvb_frontend_parametersContext* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  store i64 0, i64* %10, align 8
  br label %109

109:                                              ; preds = %175, %108
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %115 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %114, i32 0, i32 3
  %116 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %116, i64 %117
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = icmp ne %struct.TYPE_23__* %119, null
  br label %121

121:                                              ; preds = %113, %109
  %122 = phi i1 [ false, %109 ], [ %120, %113 ]
  br i1 %122, label %123, label %178

123:                                              ; preds = %121
  %124 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %125 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %124, i32 0, i32 3
  %126 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %126, i64 %127
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = call i32 @dib9000_fw_set_diversity_in(%struct.TYPE_23__* %129, i32 1)
  %131 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %132 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %131, i32 0, i32 3
  %133 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %133, i64 %134
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %139 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %138, i32 0, i32 0
  %140 = call i32 @memcpy(%struct.TYPE_21__* %137, %struct.TYPE_22__* %139, i32 4)
  %141 = load i8*, i8** @SYS_DVBT, align 8
  %142 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %143 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %142, i32 0, i32 3
  %144 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %144, i64 %145
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 6
  store i8* %141, i8** %149, align 8
  %150 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %151 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %150, i32 0, i32 3
  %152 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %152, i64 %153
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %157 = call i32 @dib9000_fw_set_output_mode(%struct.TYPE_23__* %155, i32 %156)
  %158 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %159 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %158, i32 0, i32 3
  %160 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %160, i64 %161
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %165 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %164, i32 0, i32 6
  %166 = call i32 @dib9000_set_channel_status(%struct.TYPE_23__* %163, %struct.dvb_frontend_parametersContext* %165)
  %167 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %168 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %167, i32 0, i32 3
  %169 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %169, i64 %170
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  %173 = load i32, i32* @CT_DEMOD_START, align 4
  %174 = call i32 @dib9000_set_tune_state(%struct.TYPE_23__* %172, i32 %173)
  br label %175

175:                                              ; preds = %123
  %176 = load i64, i64* %10, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %10, align 8
  br label %109

178:                                              ; preds = %121
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %179

179:                                              ; preds = %287, %178
  %180 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %181 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %180, i32 0, i32 3
  %182 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %182, i64 0
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = call i32 @dib9000_fw_tune(%struct.TYPE_23__* %184)
  store i32 %185, i32* %5, align 4
  store i64 1, i64* %10, align 8
  br label %186

186:                                              ; preds = %225, %179
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %192 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %191, i32 0, i32 3
  %193 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %193, i64 %194
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %195, align 8
  %197 = icmp ne %struct.TYPE_23__* %196, null
  br label %198

198:                                              ; preds = %190, %186
  %199 = phi i1 [ false, %186 ], [ %197, %190 ]
  br i1 %199, label %200, label %228

200:                                              ; preds = %198
  %201 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %202 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %201, i32 0, i32 3
  %203 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %203, i64 %204
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = call i32 @dib9000_fw_tune(%struct.TYPE_23__* %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %5, align 4
  br label %224

213:                                              ; preds = %200
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* %6, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %217, %213
  br label %224

224:                                              ; preds = %223, %211
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %10, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %10, align 8
  br label %186

228:                                              ; preds = %198
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* %5, align 4
  %234 = sdiv i32 %233, 10
  %235 = call i32 @msleep(i32 %234)
  br label %237

236:                                              ; preds = %228
  br label %290

237:                                              ; preds = %232
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %238

238:                                              ; preds = %276, %237
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %244 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %243, i32 0, i32 3
  %245 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %244, align 8
  %246 = load i64, i64* %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %245, i64 %246
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = icmp ne %struct.TYPE_23__* %248, null
  br label %250

250:                                              ; preds = %242, %238
  %251 = phi i1 [ false, %238 ], [ %249, %242 ]
  br i1 %251, label %252, label %279

252:                                              ; preds = %250
  %253 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %254 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %253, i32 0, i32 3
  %255 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %254, align 8
  %256 = load i64, i64* %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %255, i64 %256
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %257, align 8
  %259 = call i32 @dib9000_get_status(%struct.TYPE_23__* %258)
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @FE_STATUS_TUNE_PENDING, align 4
  %263 = sub nsw i32 0, %262
  %264 = icmp sgt i32 %261, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %252
  store i64 2, i64* %9, align 8
  %266 = load i64, i64* %10, align 8
  store i64 %266, i64* %11, align 8
  br label %279

267:                                              ; preds = %252
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @FE_STATUS_TUNE_PENDING, align 4
  %270 = sub nsw i32 0, %269
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i64, i64* %8, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %8, align 8
  br label %275

275:                                              ; preds = %272, %267
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %10, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %10, align 8
  br label %238

279:                                              ; preds = %265, %250
  %280 = load i64, i64* %9, align 8
  %281 = icmp ne i64 %280, 2
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i64, i64* %8, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i64 1, i64* %9, align 8
  br label %286

286:                                              ; preds = %285, %282, %279
  br label %287

287:                                              ; preds = %286
  %288 = load i64, i64* %9, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %179, label %290

290:                                              ; preds = %287, %236
  %291 = load i64, i64* %9, align 8
  %292 = icmp eq i64 %291, 1
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %295 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %296 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %295, i32 0, i32 4
  %297 = call i32 @mutex_unlock(i32* %296)
  %298 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %299 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %298, i32 0, i32 0
  store i32 -1, i32* %299, align 8
  store i32 0, i32* %2, align 4
  br label %603

300:                                              ; preds = %290
  %301 = load i64, i64* %11, align 8
  %302 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %301)
  %303 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %304 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %303, i32 0, i32 1
  store i32 1, i32* %304, align 4
  %305 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %306 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %305, i32 0, i32 3
  %307 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %307, i64 0
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %308, align 8
  %310 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %311 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %310, i32 0, i32 3
  %312 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %312, i64 0
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  %316 = call i32 @dib9000_get_frontend(%struct.TYPE_23__* %309, %struct.TYPE_21__* %315)
  %317 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %318 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %317, i32 0, i32 1
  store i32 0, i32* %318, align 4
  %319 = load i8*, i8** @CHANNEL_STATUS_PARAMETERS_SET, align 8
  %320 = getelementptr inbounds %struct.dvb_frontend_parametersContext, %struct.dvb_frontend_parametersContext* %12, i32 0, i32 0
  store i8* %319, i8** %320, align 8
  store i64 0, i64* %10, align 8
  br label %321

321:                                              ; preds = %356, %300
  %322 = load i64, i64* %10, align 8
  %323 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %324 = icmp ult i64 %322, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %327 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %326, i32 0, i32 3
  %328 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %327, align 8
  %329 = load i64, i64* %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %328, i64 %329
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %330, align 8
  %332 = icmp ne %struct.TYPE_23__* %331, null
  br label %333

333:                                              ; preds = %325, %321
  %334 = phi i1 [ false, %321 ], [ %332, %325 ]
  br i1 %334, label %335, label %359

335:                                              ; preds = %333
  %336 = load i64, i64* %10, align 8
  %337 = load i64, i64* %11, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %355

339:                                              ; preds = %335
  %340 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %341 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %340, i32 0, i32 3
  %342 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %341, align 8
  %343 = load i64, i64* %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %342, i64 %343
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %344, align 8
  %346 = call i32 @dib9000_set_channel_status(%struct.TYPE_23__* %345, %struct.dvb_frontend_parametersContext* %12)
  %347 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %348 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %347, i32 0, i32 3
  %349 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %348, align 8
  %350 = load i64, i64* %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %349, i64 %350
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %351, align 8
  %353 = load i32, i32* @CT_DEMOD_START, align 4
  %354 = call i32 @dib9000_set_tune_state(%struct.TYPE_23__* %352, i32 %353)
  br label %355

355:                                              ; preds = %339, %335
  br label %356

356:                                              ; preds = %355
  %357 = load i64, i64* %10, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %10, align 8
  br label %321

359:                                              ; preds = %333
  br label %360

360:                                              ; preds = %463, %359
  %361 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  store i32 %361, i32* %5, align 4
  store i64 0, i64* %10, align 8
  br label %362

362:                                              ; preds = %406, %360
  %363 = load i64, i64* %10, align 8
  %364 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %365 = icmp ult i64 %363, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %362
  %367 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %368 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %367, i32 0, i32 3
  %369 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %368, align 8
  %370 = load i64, i64* %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %369, i64 %370
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %371, align 8
  %373 = icmp ne %struct.TYPE_23__* %372, null
  br label %374

374:                                              ; preds = %366, %362
  %375 = phi i1 [ false, %362 ], [ %373, %366 ]
  br i1 %375, label %376, label %409

376:                                              ; preds = %374
  %377 = load i64, i64* %10, align 8
  %378 = load i64, i64* %11, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %380, label %405

380:                                              ; preds = %376
  %381 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %382 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %381, i32 0, i32 3
  %383 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %382, align 8
  %384 = load i64, i64* %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %383, i64 %384
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %385, align 8
  %387 = call i32 @dib9000_fw_tune(%struct.TYPE_23__* %386)
  store i32 %387, i32* %6, align 4
  %388 = load i32, i32* %5, align 4
  %389 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %380
  %392 = load i32, i32* %6, align 4
  store i32 %392, i32* %5, align 4
  br label %404

393:                                              ; preds = %380
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %403

397:                                              ; preds = %393
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %5, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %403

401:                                              ; preds = %397
  %402 = load i32, i32* %6, align 4
  store i32 %402, i32* %5, align 4
  br label %403

403:                                              ; preds = %401, %397, %393
  br label %404

404:                                              ; preds = %403, %391
  br label %405

405:                                              ; preds = %404, %376
  br label %406

406:                                              ; preds = %405
  %407 = load i64, i64* %10, align 8
  %408 = add i64 %407, 1
  store i64 %408, i64* %10, align 8
  br label %362

409:                                              ; preds = %374
  %410 = load i32, i32* %5, align 4
  %411 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %409
  %414 = load i32, i32* %5, align 4
  %415 = sdiv i32 %414, 10
  %416 = call i32 @msleep(i32 %415)
  br label %418

417:                                              ; preds = %409
  br label %466

418:                                              ; preds = %413
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %419

419:                                              ; preds = %459, %418
  %420 = load i64, i64* %10, align 8
  %421 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %422 = icmp ult i64 %420, %421
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %425 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %424, i32 0, i32 3
  %426 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %425, align 8
  %427 = load i64, i64* %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %426, i64 %427
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %428, align 8
  %430 = icmp ne %struct.TYPE_23__* %429, null
  br label %431

431:                                              ; preds = %423, %419
  %432 = phi i1 [ false, %419 ], [ %430, %423 ]
  br i1 %432, label %433, label %462

433:                                              ; preds = %431
  %434 = load i64, i64* %10, align 8
  %435 = load i64, i64* %11, align 8
  %436 = icmp ne i64 %434, %435
  br i1 %436, label %437, label %458

437:                                              ; preds = %433
  %438 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %439 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %438, i32 0, i32 3
  %440 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %439, align 8
  %441 = load i64, i64* %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %440, i64 %441
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %442, align 8
  %444 = call i32 @dib9000_get_status(%struct.TYPE_23__* %443)
  %445 = sub nsw i32 0, %444
  store i32 %445, i32* %7, align 4
  %446 = load i64, i64* %10, align 8
  %447 = load i64, i64* %11, align 8
  %448 = icmp ne i64 %446, %447
  br i1 %448, label %449, label %457

449:                                              ; preds = %437
  %450 = load i32, i32* %7, align 4
  %451 = load i32, i32* @FE_STATUS_TUNE_PENDING, align 4
  %452 = sub nsw i32 0, %451
  %453 = icmp eq i32 %450, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %449
  %455 = load i64, i64* %8, align 8
  %456 = add i64 %455, 1
  store i64 %456, i64* %8, align 8
  br label %457

457:                                              ; preds = %454, %449, %437
  br label %458

458:                                              ; preds = %457, %433
  br label %459

459:                                              ; preds = %458
  %460 = load i64, i64* %10, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %10, align 8
  br label %419

462:                                              ; preds = %431
  br label %463

463:                                              ; preds = %462
  %464 = load i64, i64* %8, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %360, label %466

466:                                              ; preds = %463, %417
  %467 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %468 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %467, i32 0, i32 3
  %469 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %469, i64 0
  %471 = load %struct.TYPE_23__*, %struct.TYPE_23__** %470, align 8
  %472 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %473 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @dib9000_fw_set_output_mode(%struct.TYPE_23__* %471, i32 %477)
  store i64 1, i64* %10, align 8
  br label %479

479:                                              ; preds = %502, %466
  %480 = load i64, i64* %10, align 8
  %481 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %482 = icmp ult i64 %480, %481
  br i1 %482, label %483, label %491

483:                                              ; preds = %479
  %484 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %485 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %484, i32 0, i32 3
  %486 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %485, align 8
  %487 = load i64, i64* %10, align 8
  %488 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %486, i64 %487
  %489 = load %struct.TYPE_23__*, %struct.TYPE_23__** %488, align 8
  %490 = icmp ne %struct.TYPE_23__* %489, null
  br label %491

491:                                              ; preds = %483, %479
  %492 = phi i1 [ false, %479 ], [ %490, %483 ]
  br i1 %492, label %493, label %505

493:                                              ; preds = %491
  %494 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %495 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %494, i32 0, i32 3
  %496 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %495, align 8
  %497 = load i64, i64* %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %496, i64 %497
  %499 = load %struct.TYPE_23__*, %struct.TYPE_23__** %498, align 8
  %500 = load i32, i32* @OUTMODE_DIVERSITY, align 4
  %501 = call i32 @dib9000_fw_set_output_mode(%struct.TYPE_23__* %499, i32 %500)
  br label %502

502:                                              ; preds = %493
  %503 = load i64, i64* %10, align 8
  %504 = add i64 %503, 1
  store i64 %504, i64* %10, align 8
  br label %479

505:                                              ; preds = %491
  %506 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %507 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %506, i32 0, i32 3
  %508 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %507, align 8
  %509 = load i64, i64* %10, align 8
  %510 = sub i64 %509, 1
  %511 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %508, i64 %510
  %512 = load %struct.TYPE_23__*, %struct.TYPE_23__** %511, align 8
  %513 = call i32 @dib9000_fw_set_diversity_in(%struct.TYPE_23__* %512, i32 0)
  %514 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %515 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %514, i32 0, i32 4
  %516 = call i32 @mutex_unlock(i32* %515)
  %517 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %518 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = icmp sge i32 %519, 0
  br i1 %520, label %521, label %600

521:                                              ; preds = %505
  %522 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %523 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %14, align 8
  %526 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %527 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %526, i32 0, i32 0
  store i32 -2, i32* %527, align 8
  store i64 0, i64* %13, align 8
  br label %528

528:                                              ; preds = %596, %521
  %529 = load i64, i64* %13, align 8
  %530 = load i64, i64* %14, align 8
  %531 = icmp ule i64 %529, %530
  br i1 %531, label %532, label %599

532:                                              ; preds = %528
  %533 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %534 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %533, i32 0, i32 2
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %534, align 8
  %536 = load i64, i64* %13, align 8
  %537 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @DIB9000_PID_FILTER_CTRL, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %556

542:                                              ; preds = %532
  %543 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %544 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %543, i32 0, i32 3
  %545 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %545, i64 0
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %546, align 8
  %548 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %549 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %548, i32 0, i32 2
  %550 = load %struct.TYPE_20__*, %struct.TYPE_20__** %549, align 8
  %551 = load i64, i64* %13, align 8
  %552 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @dib9000_fw_pid_filter_ctrl(%struct.TYPE_23__* %547, i32 %554)
  br label %595

556:                                              ; preds = %532
  %557 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %558 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %557, i32 0, i32 2
  %559 = load %struct.TYPE_20__*, %struct.TYPE_20__** %558, align 8
  %560 = load i64, i64* %13, align 8
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %559, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* @DIB9000_PID_FILTER, align 8
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %594

566:                                              ; preds = %556
  %567 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %568 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %567, i32 0, i32 3
  %569 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %569, i64 0
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %570, align 8
  %572 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %573 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %572, i32 0, i32 2
  %574 = load %struct.TYPE_20__*, %struct.TYPE_20__** %573, align 8
  %575 = load i64, i64* %13, align 8
  %576 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %574, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %580 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %579, i32 0, i32 2
  %581 = load %struct.TYPE_20__*, %struct.TYPE_20__** %580, align 8
  %582 = load i64, i64* %13, align 8
  %583 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %581, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %587 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %586, i32 0, i32 2
  %588 = load %struct.TYPE_20__*, %struct.TYPE_20__** %587, align 8
  %589 = load i64, i64* %13, align 8
  %590 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %588, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 8
  %593 = call i32 @dib9000_fw_pid_filter(%struct.TYPE_23__* %571, i32 %578, i32 %585, i32 %592)
  br label %594

594:                                              ; preds = %566, %556
  br label %595

595:                                              ; preds = %594, %542
  br label %596

596:                                              ; preds = %595
  %597 = load i64, i64* %13, align 8
  %598 = add i64 %597, 1
  store i64 %598, i64* %13, align 8
  br label %528

599:                                              ; preds = %528
  br label %600

600:                                              ; preds = %599, %505
  %601 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %602 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %601, i32 0, i32 0
  store i32 -2, i32* %602, align 8
  store i32 0, i32* %2, align 4
  br label %603

603:                                              ; preds = %600, %293, %48, %39, %27
  %604 = load i32, i32* %2, align 4
  ret i32 %604
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dib9000_fw_set_diversity_in(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @dib9000_fw_set_output_mode(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @dib9000_set_channel_status(%struct.TYPE_23__*, %struct.dvb_frontend_parametersContext*) #1

declare dso_local i32 @dib9000_set_tune_state(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @dib9000_fw_tune(%struct.TYPE_23__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib9000_get_status(%struct.TYPE_23__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dib9000_get_frontend(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @dib9000_fw_pid_filter_ctrl(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @dib9000_fw_pid_filter(%struct.TYPE_23__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
