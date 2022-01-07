; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_dc_offset_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_dc_offset_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.dib0090_state = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Start DC offset calibration\00", align 1
@dc_table = common dso_local global %struct.TYPE_5__* null, align 8
@dc_p1g_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Start/continue DC calibration for %s path\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"adc_diff = %d, current step= %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Change of sign of the minimum adc diff\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"adc_diff = %d, min_adc_diff = %d current_step = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Since adc_diff N = %d  > adc_diff step N-1 = %d, Come back one step\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"BB Offset Cal, BBreg=%hd,Offset=%hd,Value Set=%hd\0A\00", align 1
@DC_CAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_state*, i32*)* @dib0090_dc_offset_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_dc_offset_calibration(%struct.dib0090_state* %0, i32* %1) #0 {
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib0090_state* %0, %struct.dib0090_state** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %256 [
    i32 135, label %9
    i32 134, label %51
    i32 133, label %85
    i32 132, label %89
    i32 131, label %89
    i32 130, label %89
    i32 129, label %93
    i32 128, label %240
  ]

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %11, i32 0, i32 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %14 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %13, i32 0, i32 0
  store i32 1037, i32* %14, align 8
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %16 = call i32 @dib0090_read_reg(%struct.dib0090_state* %15, i32 36)
  %17 = and i32 %16, 4091
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dib0090_write_reg(%struct.dib0090_state* %18, i32 36, i32 %19)
  %21 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %22 = call i32 @dib0090_read_reg(%struct.dib0090_state* %21, i32 16)
  %23 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %27 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -2041
  %30 = or i32 %29, 56
  %31 = or i32 %30, 3
  %32 = call i32 @dib0090_write_reg(%struct.dib0090_state* %25, i32 16, i32 %31)
  %33 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %34 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %35 = call i32 @dib0090_read_reg(%struct.dib0090_state* %34, i32 35)
  %36 = and i32 %35, -16385
  %37 = call i32 @dib0090_write_reg(%struct.dib0090_state* %33, i32 35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dc_table, align 8
  %39 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %40 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %39, i32 0, i32 6
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %42 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %9
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dc_p1g_table, align 8
  %48 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %49 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %48, i32 0, i32 6
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  br label %50

50:                                               ; preds = %46, %9
  br label %51

51:                                               ; preds = %2, %50
  %52 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %53 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %52, i32 0, i32 6
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %62 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %63 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %62, i32 0, i32 6
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dib0090_write_reg(%struct.dib0090_state* %61, i32 1, i32 %66)
  %68 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %69 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %70 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %73 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %72, i32 0, i32 6
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 7
  %78 = or i32 %71, %77
  %79 = call i32 @dib0090_write_reg(%struct.dib0090_state* %68, i32 7, i32 %78)
  %80 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %81 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %83 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %82, i32 0, i32 3
  store i32 1023, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  store i32 133, i32* %84, align 4
  store i32 50, i32* %5, align 4
  br label %257

85:                                               ; preds = %2
  %86 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %87 = call i32 @dib0090_set_trim(%struct.dib0090_state* %86)
  %88 = load i32*, i32** %4, align 8
  store i32 132, i32* %88, align 4
  br label %257

89:                                               ; preds = %2, %2, %2
  %90 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @dib0090_get_offset(%struct.dib0090_state* %90, i32* %91)
  store i32 %92, i32* %5, align 4
  br label %257

93:                                               ; preds = %2
  %94 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %95 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %102 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %93
  %106 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %107 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %112 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %111, i32 0, i32 3
  store i32 -1023, i32* %112, align 4
  %113 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %105, %93
  %115 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %116 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %119 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %122 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %120, i32 %123)
  %125 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %126 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %114
  %130 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %131 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %130, i32 0, i32 6
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %138 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %143 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %142, i32 0, i32 2
  store i32 16, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %136, %129
  %145 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %146 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %145, i32 0, i32 6
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %153 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %158 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %157, i32 0, i32 2
  store i32 16, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %151, %144
  br label %160

160:                                              ; preds = %159, %114
  %161 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %162 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 32768
  %165 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %166 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 32768
  %169 = icmp eq i32 %164, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %160
  %171 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %172 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @steps(i32 %173)
  %175 = icmp slt i32 %174, 15
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %178 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %182 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %185 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %4, align 8
  store i32 133, i32* %186, align 4
  br label %239

187:                                              ; preds = %170, %160
  %188 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %189 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @abs(i32 %190) #3
  %192 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %193 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @abs(i32 %194) #3
  %196 = icmp sgt i32 %191, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %187
  %198 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %199 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %202 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 %200, i32 %203)
  %205 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %206 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %197, %187
  %210 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %211 = call i32 @dib0090_set_trim(%struct.dib0090_state* %210)
  %212 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %213 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %212, i32 0, i32 6
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %218 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %221 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %216, i32 %219, i32 %222)
  %224 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %225 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %224, i32 0, i32 6
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 1
  store %struct.TYPE_5__* %227, %struct.TYPE_5__** %225, align 8
  %228 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %229 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %228, i32 0, i32 6
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %209
  %235 = load i32*, i32** %4, align 8
  store i32 128, i32* %235, align 4
  br label %238

236:                                              ; preds = %209
  %237 = load i32*, i32** %4, align 8
  store i32 134, i32* %237, align 4
  br label %238

238:                                              ; preds = %236, %234
  br label %239

239:                                              ; preds = %238, %176
  br label %257

240:                                              ; preds = %2
  %241 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %242 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %243 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, -9
  %246 = call i32 @dib0090_write_reg(%struct.dib0090_state* %241, i32 7, i32 %245)
  %247 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %248 = call i32 @dib0090_write_reg(%struct.dib0090_state* %247, i32 31, i32 7)
  %249 = load i32*, i32** %4, align 8
  store i32 135, i32* %249, align 4
  %250 = load i32, i32* @DC_CAL, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %253 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %2, %240
  br label %257

257:                                              ; preds = %256, %239, %89, %85, %51
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_set_trim(%struct.dib0090_state*) #1

declare dso_local i32 @dib0090_get_offset(%struct.dib0090_state*, i32*) #1

declare dso_local i32 @steps(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
