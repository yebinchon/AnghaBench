; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_clock_ratios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_clock_ratios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.cx24120_state*, %struct.dtv_frontend_properties }
%struct.cx24120_state = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.dtv_frontend_properties = type { i64, i64, i64 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@clock_ratios_table = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Clock ratio not found - data reception in danger\0A\00", align 1
@CMD_CLOCK_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"m=%d, n=%d; idx: %d m=%d, n=%d, rate=%d\0A\00", align 1
@CMD_CLOCK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @cx24120_set_clock_ratios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx24120_set_clock_ratios(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.cx24120_state*, align 8
  %5 = alloca %struct.cx24120_cmd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cx24120_state*, %struct.cx24120_state** %11, align 8
  store %struct.cx24120_state* %12, %struct.cx24120_state** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = call i32 @cx24120_get_fec(%struct.dvb_frontend* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %260

18:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %74, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %32 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %74

37:                                               ; preds = %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %74

49:                                               ; preds = %37
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %74

73:                                               ; preds = %61
  br label %77

74:                                               ; preds = %72, %60, %48, %36
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %19

77:                                               ; preds = %73, %19
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %79)
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 @info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %260

84:                                               ; preds = %77
  %85 = load i32, i32* @CMD_CLOCK_READ, align 4
  %86 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 0, i32* %90, align 4
  %91 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %92 = call i32 @cx24120_message_sendrcv(%struct.cx24120_state* %91, %struct.cx24120_cmd* %5, i32 6)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %260

96:                                               ; preds = %84
  %97 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %98 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %104, %109
  %111 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = or i32 %110, %115
  %117 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %120, %125
  %127 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 16
  %132 = or i32 %126, %131
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %132, i32 %133, i32 %139, i32 %145, i32 %151)
  %153 = load i32, i32* @CMD_CLOCK_SET, align 4
  %154 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 2
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 0
  store i32 10, i32* %155, align 8
  %156 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 0, i32* %158, align 4
  %159 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 16, i32* %161, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = ashr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %169, i32* %172, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = ashr i32 %178, 8
  %180 = and i32 %179, 255
  %181 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  store i32 %180, i32* %183, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = ashr i32 %189, 0
  %191 = and i32 %190, 255
  %192 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  store i32 %191, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = ashr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  store i32 %202, i32* %205, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 8
  %213 = and i32 %212, 255
  %214 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 6
  store i32 %213, i32* %216, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 0
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 7
  store i32 %224, i32* %227, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = ashr i32 %233, 8
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 8
  store i32 %235, i32* %238, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = ashr i32 %244, 0
  %246 = and i32 %245, 255
  %247 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %5, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 9
  store i32 %246, i32* %249, align 4
  %250 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %251 = call i32 @cx24120_message_send(%struct.cx24120_state* %250, %struct.cx24120_cmd* %5)
  %252 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clock_ratios_table, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @cx24120_calculate_ber_window(%struct.cx24120_state* %252, i32 %258)
  br label %260

260:                                              ; preds = %96, %95, %82, %17
  ret void
}

declare dso_local i32 @cx24120_get_fec(%struct.dvb_frontend*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @cx24120_message_sendrcv(%struct.cx24120_state*, %struct.cx24120_cmd*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @cx24120_calculate_ber_window(%struct.cx24120_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
