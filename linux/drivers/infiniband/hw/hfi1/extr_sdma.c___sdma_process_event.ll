; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c___sdma_process_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c___sdma_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.TYPE_2__*, i32, i32, %struct.sdma_state, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdma_state = type { i64, i32, i32 }

@sdma_event_names = common dso_local global i32* null, align 8
@sdma_state_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @__sdma_process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sdma_process_event(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_state*, align 8
  %6 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 3
  store %struct.sdma_state* %8, %struct.sdma_state** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %10 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  switch i64 %11, label %405 [
    i64 138, label %12
    i64 137, label %38
    i64 136, label %70
    i64 135, label %105
    i64 134, label %146
    i64 133, label %175
    i64 132, label %213
    i64 131, label %249
    i64 130, label %283
    i64 129, label %314
    i64 128, label %360
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %37 [
    i32 152, label %14
    i32 148, label %15
    i32 151, label %18
    i32 150, label %24
    i32 149, label %25
    i32 147, label %26
    i32 146, label %29
    i32 145, label %30
    i32 144, label %31
    i32 143, label %32
    i32 142, label %33
    i32 141, label %34
    i32 140, label %35
    i32 139, label %36
  ]

14:                                               ; preds = %12
  br label %37

15:                                               ; preds = %12
  %16 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %17 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %15
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 3
  %21 = call i32 @sdma_get(%struct.sdma_state* %20)
  %22 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %23 = call i32 @sdma_set_state(%struct.sdma_engine* %22, i32 137)
  br label %37

24:                                               ; preds = %12
  br label %37

25:                                               ; preds = %12
  br label %37

26:                                               ; preds = %12
  %27 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %28 = call i32 @sdma_sw_tear_down(%struct.sdma_engine* %27)
  br label %37

29:                                               ; preds = %12
  br label %37

30:                                               ; preds = %12
  br label %37

31:                                               ; preds = %12
  br label %37

32:                                               ; preds = %12
  br label %37

33:                                               ; preds = %12
  br label %37

34:                                               ; preds = %12
  br label %37

35:                                               ; preds = %12
  br label %37

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %12, %36, %35, %34, %33, %32, %31, %30, %29, %26, %25, %24, %18, %14
  br label %405

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %69 [
    i32 152, label %40
    i32 151, label %45
    i32 150, label %46
    i32 149, label %51
    i32 148, label %52
    i32 147, label %55
    i32 146, label %56
    i32 145, label %57
    i32 144, label %61
    i32 143, label %64
    i32 142, label %65
    i32 141, label %66
    i32 140, label %67
    i32 139, label %68
  ]

40:                                               ; preds = %38
  %41 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %42 = call i32 @sdma_set_state(%struct.sdma_engine* %41, i32 138)
  %43 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %44 = call i32 @sdma_sw_tear_down(%struct.sdma_engine* %43)
  br label %69

45:                                               ; preds = %38
  br label %69

46:                                               ; preds = %38
  %47 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %48 = call i32 @sdma_set_state(%struct.sdma_engine* %47, i32 136)
  %49 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %50 = call i32 @sdma_start_hw_clean_up(%struct.sdma_engine* %49)
  br label %69

51:                                               ; preds = %38
  br label %69

52:                                               ; preds = %38
  %53 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %54 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %69

55:                                               ; preds = %38
  br label %69

56:                                               ; preds = %38
  br label %69

57:                                               ; preds = %38
  %58 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %59 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %58, i32 0, i32 1
  %60 = call i32 @schedule_work(i32* %59)
  br label %69

61:                                               ; preds = %38
  %62 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %63 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  br label %69

64:                                               ; preds = %38
  br label %69

65:                                               ; preds = %38
  br label %69

66:                                               ; preds = %38
  br label %69

67:                                               ; preds = %38
  br label %69

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %38, %68, %67, %66, %65, %64, %61, %57, %56, %55, %52, %51, %46, %45, %40
  br label %405

70:                                               ; preds = %2
  %71 = load i32, i32* %4, align 4
  switch i32 %71, label %104 [
    i32 152, label %72
    i32 151, label %77
    i32 150, label %78
    i32 149, label %79
    i32 148, label %90
    i32 147, label %93
    i32 146, label %94
    i32 145, label %95
    i32 144, label %96
    i32 143, label %99
    i32 142, label %100
    i32 141, label %101
    i32 140, label %102
    i32 139, label %103
  ]

72:                                               ; preds = %70
  %73 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %74 = call i32 @sdma_set_state(%struct.sdma_engine* %73, i32 138)
  %75 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %76 = call i32 @sdma_sw_tear_down(%struct.sdma_engine* %75)
  br label %104

77:                                               ; preds = %70
  br label %104

78:                                               ; preds = %70
  br label %104

79:                                               ; preds = %70
  %80 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %81 = call i32 @sdma_hw_start_up(%struct.sdma_engine* %80)
  %82 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %83 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %84 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 128, i32 135
  %89 = call i32 @sdma_set_state(%struct.sdma_engine* %82, i32 %88)
  br label %104

90:                                               ; preds = %70
  %91 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %92 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  br label %104

93:                                               ; preds = %70
  br label %104

94:                                               ; preds = %70
  br label %104

95:                                               ; preds = %70
  br label %104

96:                                               ; preds = %70
  %97 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %98 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  br label %104

99:                                               ; preds = %70
  br label %104

100:                                              ; preds = %70
  br label %104

101:                                              ; preds = %70
  br label %104

102:                                              ; preds = %70
  br label %104

103:                                              ; preds = %70
  br label %104

104:                                              ; preds = %70, %103, %102, %101, %100, %99, %96, %95, %94, %93, %90, %79, %78, %77, %72
  br label %405

105:                                              ; preds = %2
  %106 = load i32, i32* %4, align 4
  switch i32 %106, label %145 [
    i32 152, label %107
    i32 151, label %112
    i32 150, label %113
    i32 149, label %114
    i32 148, label %115
    i32 147, label %120
    i32 146, label %121
    i32 145, label %122
    i32 144, label %128
    i32 140, label %129
    i32 143, label %129
    i32 142, label %142
    i32 141, label %143
    i32 139, label %144
  ]

107:                                              ; preds = %105
  %108 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %109 = call i32 @sdma_set_state(%struct.sdma_engine* %108, i32 138)
  %110 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %111 = call i32 @sdma_sw_tear_down(%struct.sdma_engine* %110)
  br label %145

112:                                              ; preds = %105
  br label %145

113:                                              ; preds = %105
  br label %145

114:                                              ; preds = %105
  br label %145

115:                                              ; preds = %105
  %116 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %117 = call i32 @sdma_set_state(%struct.sdma_engine* %116, i32 128)
  %118 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %119 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  br label %145

120:                                              ; preds = %105
  br label %145

121:                                              ; preds = %105
  br label %145

122:                                              ; preds = %105
  %123 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %124 = call i32 @sdma_set_state(%struct.sdma_engine* %123, i32 132)
  %125 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %126 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %125, i32 0, i32 1
  %127 = call i32 @schedule_work(i32* %126)
  br label %145

128:                                              ; preds = %105
  br label %145

129:                                              ; preds = %105, %105
  %130 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %131 = call i32 @sdma_set_state(%struct.sdma_engine* %130, i32 130)
  %132 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %133 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = call i32 @atomic_dec(i32* %135)
  %137 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %138 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = call i32 @wake_up_interruptible(i32* %140)
  br label %145

142:                                              ; preds = %105
  br label %145

143:                                              ; preds = %105
  br label %145

144:                                              ; preds = %105
  br label %145

145:                                              ; preds = %105, %144, %143, %142, %129, %128, %122, %121, %120, %115, %114, %113, %112, %107
  br label %405

146:                                              ; preds = %2
  %147 = load i32, i32* %4, align 4
  switch i32 %147, label %174 [
    i32 152, label %148
    i32 151, label %151
    i32 150, label %152
    i32 149, label %153
    i32 148, label %154
    i32 147, label %157
    i32 146, label %162
    i32 145, label %163
    i32 144, label %164
    i32 143, label %167
    i32 142, label %168
    i32 141, label %169
    i32 140, label %170
    i32 139, label %173
  ]

148:                                              ; preds = %146
  %149 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %150 = call i32 @sdma_set_state(%struct.sdma_engine* %149, i32 138)
  br label %174

151:                                              ; preds = %146
  br label %174

152:                                              ; preds = %146
  br label %174

153:                                              ; preds = %146
  br label %174

154:                                              ; preds = %146
  %155 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %156 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %155, i32 0, i32 1
  store i32 1, i32* %156, align 8
  br label %174

157:                                              ; preds = %146
  %158 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %159 = call i32 @sdma_set_state(%struct.sdma_engine* %158, i32 133)
  %160 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %161 = call i32 @sdma_start_hw_clean_up(%struct.sdma_engine* %160)
  br label %174

162:                                              ; preds = %146
  br label %174

163:                                              ; preds = %146
  br label %174

164:                                              ; preds = %146
  %165 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %166 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %165, i32 0, i32 1
  store i32 0, i32* %166, align 8
  br label %174

167:                                              ; preds = %146
  br label %174

168:                                              ; preds = %146
  br label %174

169:                                              ; preds = %146
  br label %174

170:                                              ; preds = %146
  %171 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %172 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %171, i32 0, i32 1
  store i32 0, i32* %172, align 8
  br label %174

173:                                              ; preds = %146
  br label %174

174:                                              ; preds = %146, %173, %170, %169, %168, %167, %164, %163, %162, %157, %154, %153, %152, %151, %148
  br label %405

175:                                              ; preds = %2
  %176 = load i32, i32* %4, align 4
  switch i32 %176, label %212 [
    i32 152, label %177
    i32 151, label %183
    i32 150, label %184
    i32 149, label %185
    i32 148, label %196
    i32 147, label %199
    i32 146, label %200
    i32 145, label %201
    i32 144, label %202
    i32 143, label %205
    i32 142, label %206
    i32 141, label %207
    i32 140, label %208
    i32 139, label %211
  ]

177:                                              ; preds = %175
  %178 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %179 = call i32 @sdma_set_state(%struct.sdma_engine* %178, i32 138)
  %180 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %181 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %180, i32 0, i32 2
  %182 = call i32 @tasklet_hi_schedule(i32* %181)
  br label %212

183:                                              ; preds = %175
  br label %212

184:                                              ; preds = %175
  br label %212

185:                                              ; preds = %175
  %186 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %187 = call i32 @sdma_hw_start_up(%struct.sdma_engine* %186)
  %188 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %189 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %190 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 128, i32 135
  %195 = call i32 @sdma_set_state(%struct.sdma_engine* %188, i32 %194)
  br label %212

196:                                              ; preds = %175
  %197 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %198 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %197, i32 0, i32 1
  store i32 1, i32* %198, align 8
  br label %212

199:                                              ; preds = %175
  br label %212

200:                                              ; preds = %175
  br label %212

201:                                              ; preds = %175
  br label %212

202:                                              ; preds = %175
  %203 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %204 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %203, i32 0, i32 1
  store i32 0, i32* %204, align 8
  br label %212

205:                                              ; preds = %175
  br label %212

206:                                              ; preds = %175
  br label %212

207:                                              ; preds = %175
  br label %212

208:                                              ; preds = %175
  %209 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %210 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %209, i32 0, i32 1
  store i32 0, i32* %210, align 8
  br label %212

211:                                              ; preds = %175
  br label %212

212:                                              ; preds = %175, %211, %208, %207, %206, %205, %202, %201, %200, %199, %196, %185, %184, %183, %177
  br label %405

213:                                              ; preds = %2
  %214 = load i32, i32* %4, align 4
  switch i32 %214, label %248 [
    i32 152, label %215
    i32 151, label %221
    i32 150, label %222
    i32 149, label %228
    i32 148, label %229
    i32 147, label %232
    i32 146, label %233
    i32 145, label %234
    i32 144, label %238
    i32 143, label %241
    i32 142, label %242
    i32 141, label %243
    i32 140, label %244
    i32 139, label %247
  ]

215:                                              ; preds = %213
  %216 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %217 = call i32 @sdma_set_state(%struct.sdma_engine* %216, i32 138)
  %218 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %219 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %218, i32 0, i32 2
  %220 = call i32 @tasklet_hi_schedule(i32* %219)
  br label %248

221:                                              ; preds = %213
  br label %248

222:                                              ; preds = %213
  %223 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %224 = call i32 @sdma_set_state(%struct.sdma_engine* %223, i32 134)
  %225 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %226 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %225, i32 0, i32 2
  %227 = call i32 @tasklet_hi_schedule(i32* %226)
  br label %248

228:                                              ; preds = %213
  br label %248

229:                                              ; preds = %213
  %230 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %231 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %230, i32 0, i32 1
  store i32 1, i32* %231, align 8
  br label %248

232:                                              ; preds = %213
  br label %248

233:                                              ; preds = %213
  br label %248

234:                                              ; preds = %213
  %235 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %236 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %235, i32 0, i32 1
  %237 = call i32 @schedule_work(i32* %236)
  br label %248

238:                                              ; preds = %213
  %239 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %240 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %239, i32 0, i32 1
  store i32 0, i32* %240, align 8
  br label %248

241:                                              ; preds = %213
  br label %248

242:                                              ; preds = %213
  br label %248

243:                                              ; preds = %213
  br label %248

244:                                              ; preds = %213
  %245 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %246 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %245, i32 0, i32 1
  store i32 0, i32* %246, align 8
  br label %248

247:                                              ; preds = %213
  br label %248

248:                                              ; preds = %213, %247, %244, %243, %242, %241, %238, %234, %233, %232, %229, %228, %222, %221, %215
  br label %405

249:                                              ; preds = %2
  %250 = load i32, i32* %4, align 4
  switch i32 %250, label %282 [
    i32 152, label %251
    i32 151, label %257
    i32 150, label %258
    i32 149, label %264
    i32 148, label %265
    i32 147, label %268
    i32 146, label %269
    i32 145, label %270
    i32 144, label %274
    i32 143, label %277
    i32 142, label %278
    i32 141, label %279
    i32 140, label %280
    i32 139, label %281
  ]

251:                                              ; preds = %249
  %252 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %253 = call i32 @sdma_set_state(%struct.sdma_engine* %252, i32 138)
  %254 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %255 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %254, i32 0, i32 2
  %256 = call i32 @tasklet_hi_schedule(i32* %255)
  br label %282

257:                                              ; preds = %249
  br label %282

258:                                              ; preds = %249
  %259 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %260 = call i32 @sdma_set_state(%struct.sdma_engine* %259, i32 134)
  %261 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %262 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %261, i32 0, i32 2
  %263 = call i32 @tasklet_hi_schedule(i32* %262)
  br label %282

264:                                              ; preds = %249
  br label %282

265:                                              ; preds = %249
  %266 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %267 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %266, i32 0, i32 1
  store i32 1, i32* %267, align 8
  br label %282

268:                                              ; preds = %249
  br label %282

269:                                              ; preds = %249
  br label %282

270:                                              ; preds = %249
  %271 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %272 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %271, i32 0, i32 1
  %273 = call i32 @schedule_work(i32* %272)
  br label %282

274:                                              ; preds = %249
  %275 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %276 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %275, i32 0, i32 1
  store i32 0, i32* %276, align 8
  br label %282

277:                                              ; preds = %249
  br label %282

278:                                              ; preds = %249
  br label %282

279:                                              ; preds = %249
  br label %282

280:                                              ; preds = %249
  br label %282

281:                                              ; preds = %249
  br label %282

282:                                              ; preds = %249, %281, %280, %279, %278, %277, %274, %270, %269, %268, %265, %264, %258, %257, %251
  br label %405

283:                                              ; preds = %2
  %284 = load i32, i32* %4, align 4
  switch i32 %284, label %313 [
    i32 152, label %285
    i32 151, label %291
    i32 150, label %292
    i32 149, label %293
    i32 148, label %294
    i32 147, label %297
    i32 146, label %298
    i32 145, label %299
    i32 144, label %300
    i32 143, label %303
    i32 142, label %304
    i32 141, label %310
    i32 140, label %311
    i32 139, label %312
  ]

285:                                              ; preds = %283
  %286 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %287 = call i32 @sdma_set_state(%struct.sdma_engine* %286, i32 138)
  %288 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %289 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %288, i32 0, i32 2
  %290 = call i32 @tasklet_hi_schedule(i32* %289)
  br label %313

291:                                              ; preds = %283
  br label %313

292:                                              ; preds = %283
  br label %313

293:                                              ; preds = %283
  br label %313

294:                                              ; preds = %283
  %295 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %296 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %295, i32 0, i32 1
  store i32 1, i32* %296, align 8
  br label %313

297:                                              ; preds = %283
  br label %313

298:                                              ; preds = %283
  br label %313

299:                                              ; preds = %283
  br label %313

300:                                              ; preds = %283
  %301 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %302 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %301, i32 0, i32 1
  store i32 0, i32* %302, align 8
  br label %313

303:                                              ; preds = %283
  br label %313

304:                                              ; preds = %283
  %305 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %306 = call i32 @sdma_set_state(%struct.sdma_engine* %305, i32 129)
  %307 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %308 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %307, i32 0, i32 2
  %309 = call i32 @tasklet_hi_schedule(i32* %308)
  br label %313

310:                                              ; preds = %283
  br label %313

311:                                              ; preds = %283
  br label %313

312:                                              ; preds = %283
  br label %313

313:                                              ; preds = %283, %312, %311, %310, %304, %303, %300, %299, %298, %297, %294, %293, %292, %291, %285
  br label %405

314:                                              ; preds = %2
  %315 = load i32, i32* %4, align 4
  switch i32 %315, label %359 [
    i32 152, label %316
    i32 151, label %322
    i32 150, label %323
    i32 149, label %324
    i32 148, label %325
    i32 147, label %328
    i32 146, label %339
    i32 145, label %340
    i32 144, label %341
    i32 143, label %344
    i32 142, label %345
    i32 141, label %346
    i32 140, label %357
    i32 139, label %358
  ]

316:                                              ; preds = %314
  %317 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %318 = call i32 @sdma_set_state(%struct.sdma_engine* %317, i32 138)
  %319 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %320 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %319, i32 0, i32 2
  %321 = call i32 @tasklet_hi_schedule(i32* %320)
  br label %359

322:                                              ; preds = %314
  br label %359

323:                                              ; preds = %314
  br label %359

324:                                              ; preds = %314
  br label %359

325:                                              ; preds = %314
  %326 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %327 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %326, i32 0, i32 1
  store i32 1, i32* %327, align 8
  br label %359

328:                                              ; preds = %314
  %329 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %330 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %329, i32 0, i32 0
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  %333 = call i32 @atomic_dec(i32* %332)
  %334 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %335 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %334, i32 0, i32 0
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = call i32 @wake_up_interruptible(i32* %337)
  br label %359

339:                                              ; preds = %314
  br label %359

340:                                              ; preds = %314
  br label %359

341:                                              ; preds = %314
  %342 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %343 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %342, i32 0, i32 1
  store i32 0, i32* %343, align 8
  br label %359

344:                                              ; preds = %314
  br label %359

345:                                              ; preds = %314
  br label %359

346:                                              ; preds = %314
  %347 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %348 = call i32 @sdma_hw_start_up(%struct.sdma_engine* %347)
  %349 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %350 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %351 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 128, i32 135
  %356 = call i32 @sdma_set_state(%struct.sdma_engine* %349, i32 %355)
  br label %359

357:                                              ; preds = %314
  br label %359

358:                                              ; preds = %314
  br label %359

359:                                              ; preds = %314, %358, %357, %346, %345, %344, %341, %340, %339, %328, %325, %324, %323, %322, %316
  br label %405

360:                                              ; preds = %2
  %361 = load i32, i32* %4, align 4
  switch i32 %361, label %404 [
    i32 152, label %362
    i32 151, label %368
    i32 150, label %369
    i32 149, label %370
    i32 148, label %371
    i32 147, label %372
    i32 146, label %373
    i32 145, label %374
    i32 139, label %377
    i32 144, label %383
    i32 140, label %386
    i32 143, label %389
    i32 142, label %402
    i32 141, label %403
  ]

362:                                              ; preds = %360
  %363 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %364 = call i32 @sdma_set_state(%struct.sdma_engine* %363, i32 138)
  %365 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %366 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %365, i32 0, i32 2
  %367 = call i32 @tasklet_hi_schedule(i32* %366)
  br label %404

368:                                              ; preds = %360
  br label %404

369:                                              ; preds = %360
  br label %404

370:                                              ; preds = %360
  br label %404

371:                                              ; preds = %360
  br label %404

372:                                              ; preds = %360
  br label %404

373:                                              ; preds = %360
  br label %404

374:                                              ; preds = %360
  store i32 1, i32* %6, align 4
  %375 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %376 = call i32 @sdma_err_progress_check_schedule(%struct.sdma_engine* %375)
  br label %377

377:                                              ; preds = %360, %374
  %378 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %379 = call i32 @sdma_set_state(%struct.sdma_engine* %378, i32 132)
  %380 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %381 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %380, i32 0, i32 1
  %382 = call i32 @schedule_work(i32* %381)
  br label %404

383:                                              ; preds = %360
  %384 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %385 = call i32 @sdma_set_state(%struct.sdma_engine* %384, i32 131)
  br label %404

386:                                              ; preds = %360
  %387 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %388 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %387, i32 0, i32 1
  store i32 0, i32* %388, align 8
  br label %389

389:                                              ; preds = %360, %386
  %390 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %391 = call i32 @sdma_set_state(%struct.sdma_engine* %390, i32 130)
  %392 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %393 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %392, i32 0, i32 0
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i32 0, i32 1
  %396 = call i32 @atomic_dec(i32* %395)
  %397 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %398 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %397, i32 0, i32 0
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 0
  %401 = call i32 @wake_up_interruptible(i32* %400)
  br label %404

402:                                              ; preds = %360
  br label %404

403:                                              ; preds = %360
  br label %404

404:                                              ; preds = %360, %403, %402, %389, %383, %377, %373, %372, %371, %370, %369, %368, %362
  br label %405

405:                                              ; preds = %2, %404, %359, %313, %282, %248, %212, %174, %145, %104, %69, %37
  %406 = load i32, i32* %4, align 4
  %407 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %408 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %407, i32 0, i32 2
  store i32 %406, i32* %408, align 4
  %409 = load i32, i32* %6, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %413 = call i32 @sdma_make_progress(%struct.sdma_engine* %412, i32 0)
  br label %414

414:                                              ; preds = %411, %405
  ret void
}

declare dso_local i32 @sdma_get(%struct.sdma_state*) #1

declare dso_local i32 @sdma_set_state(%struct.sdma_engine*, i32) #1

declare dso_local i32 @sdma_sw_tear_down(%struct.sdma_engine*) #1

declare dso_local i32 @sdma_start_hw_clean_up(%struct.sdma_engine*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sdma_hw_start_up(%struct.sdma_engine*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @sdma_err_progress_check_schedule(%struct.sdma_engine*) #1

declare dso_local i32 @sdma_make_progress(%struct.sdma_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
