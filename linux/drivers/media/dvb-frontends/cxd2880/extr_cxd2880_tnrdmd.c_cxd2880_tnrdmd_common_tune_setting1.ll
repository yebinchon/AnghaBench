; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_common_tune_setting1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_common_tune_setting1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i64, %struct.TYPE_4__, %struct.cxd2880_tnrdmd*, i32, %struct.TYPE_5__* }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }

@CXD2880_TNRDMD_CLOCKMODE_A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_TSOUT_IF_TS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_tnrdmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cxd2880_tnrdmd_pid_ftr_cfg*, align 8
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @CXD2880_TNRDMD_CLOCKMODE_A, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %22 = icmp ne %struct.cxd2880_tnrdmd* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %368

26:                                               ; preds = %6
  %27 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %368

35:                                               ; preds = %26
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %368

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 4000
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %368

56:                                               ; preds = %50
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %58 = call i32 @cxd2880_tnrdmd_sleep(%struct.cxd2880_tnrdmd* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %7, align 4
  br label %368

63:                                               ; preds = %56
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %67, align 8
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %70 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %69, i32 0, i32 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %73 = call i32 %68(%struct.TYPE_5__* %71, i32 %72, i32 0, i32 0)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %7, align 4
  br label %368

78:                                               ; preds = %63
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %82, align 8
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %88 = call i32 %83(%struct.TYPE_5__* %86, i32 %87, i32 43, i32* %14, i32 1)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %7, align 4
  br label %368

93:                                               ; preds = %78
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %151 [
    i32 133, label %95
    i32 132, label %123
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %100 = call i32 @t_power_x(%struct.cxd2880_tnrdmd* %99, i32 1)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %7, align 4
  br label %368

105:                                              ; preds = %98
  %106 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %107 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %113 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %112, i32 0, i32 6
  %114 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %113, align 8
  %115 = call i32 @t_power_x(%struct.cxd2880_tnrdmd* %114, i32 1)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %7, align 4
  br label %368

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %105
  br label %122

122:                                              ; preds = %121, %95
  br label %154

123:                                              ; preds = %93
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %128 = call i32 @t_power_x(%struct.cxd2880_tnrdmd* %127, i32 0)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %7, align 4
  br label %368

133:                                              ; preds = %126
  %134 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %135 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %141 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %140, i32 0, i32 6
  %142 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %141, align 8
  %143 = call i32 @t_power_x(%struct.cxd2880_tnrdmd* %142, i32 0)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %7, align 4
  br label %368

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %133
  br label %150

150:                                              ; preds = %149, %123
  br label %154

151:                                              ; preds = %93
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  br label %368

154:                                              ; preds = %150, %122
  %155 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @spll_reset(%struct.cxd2880_tnrdmd* %155, i32 %156)
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %7, align 4
  br label %368

162:                                              ; preds = %154
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %165 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %167 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %162
  %172 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %173 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %172, i32 0, i32 6
  %174 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @spll_reset(%struct.cxd2880_tnrdmd* %174, i32 %175)
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %18, align 4
  store i32 %180, i32* %7, align 4
  br label %368

181:                                              ; preds = %171
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %184 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %183, i32 0, i32 6
  %185 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %184, align 8
  %186 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  br label %187

187:                                              ; preds = %181, %162
  %188 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %189 = call i32 @load_cfg_mem(%struct.cxd2880_tnrdmd* %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %18, align 4
  store i32 %193, i32* %7, align 4
  br label %368

194:                                              ; preds = %187
  %195 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %196 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %194
  %201 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %202 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %201, i32 0, i32 6
  %203 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %202, align 8
  %204 = call i32 @load_cfg_mem(%struct.cxd2880_tnrdmd* %203)
  store i32 %204, i32* %18, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load i32, i32* %18, align 4
  store i32 %208, i32* %7, align 4
  br label %368

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209, %194
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %210
  %214 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %215 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i32 350, i32* %16, align 4
  br label %235

220:                                              ; preds = %213
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 350, i32* %16, align 4
  br label %225

224:                                              ; preds = %220
  store i32 -350, i32* %16, align 4
  br label %225

225:                                              ; preds = %224, %223
  %226 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %227 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 128
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load i32, i32* %16, align 4
  %233 = mul nsw i32 %232, -1
  store i32 %233, i32* %16, align 4
  br label %234

234:                                              ; preds = %231, %225
  br label %235

235:                                              ; preds = %234, %219
  br label %254

236:                                              ; preds = %210
  %237 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %238 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 150, i32* %16, align 4
  br label %253

243:                                              ; preds = %236
  %244 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %245 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  switch i32 %247, label %249 [
    i32 129, label %248
    i32 131, label %248
    i32 130, label %250
    i32 128, label %251
  ]

248:                                              ; preds = %243, %243
  br label %249

249:                                              ; preds = %243, %248
  store i32 0, i32* %16, align 4
  br label %252

250:                                              ; preds = %243
  store i32 150, i32* %16, align 4
  br label %252

251:                                              ; preds = %243
  store i32 -150, i32* %16, align 4
  br label %252

252:                                              ; preds = %251, %250, %249
  br label %253

253:                                              ; preds = %252, %242
  br label %254

254:                                              ; preds = %253, %235
  %255 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %260 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @x_tune1(%struct.cxd2880_tnrdmd* %255, i32 %256, i32 %257, i32 %258, i32 %261, i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %18, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %254
  %267 = load i32, i32* %18, align 4
  store i32 %267, i32* %7, align 4
  br label %368

268:                                              ; preds = %254
  %269 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %270 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %268
  %275 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %276 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %275, i32 0, i32 6
  %277 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %282 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = sub nsw i32 0, %284
  %286 = call i32 @x_tune1(%struct.cxd2880_tnrdmd* %277, i32 %278, i32 %279, i32 %280, i32 %283, i32 %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %274
  %290 = load i32, i32* %18, align 4
  store i32 %290, i32* %7, align 4
  br label %368

291:                                              ; preds = %274
  br label %292

292:                                              ; preds = %291, %268
  %293 = call i32 @usleep_range(i32 10000, i32 11000)
  %294 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %295 = call i32 @cxd2880_tnrdmd_check_internal_cpu_status(%struct.cxd2880_tnrdmd* %294, i32* %17)
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %18, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = load i32, i32* %18, align 4
  store i32 %299, i32* %7, align 4
  br label %368

300:                                              ; preds = %292
  %301 = load i32, i32* %17, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %7, align 4
  br label %368

306:                                              ; preds = %300
  %307 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %310 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = call i32 @x_tune2(%struct.cxd2880_tnrdmd* %307, i32 %308, i32 %311, i32 %312)
  store i32 %313, i32* %18, align 4
  %314 = load i32, i32* %18, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %306
  %317 = load i32, i32* %18, align 4
  store i32 %317, i32* %7, align 4
  br label %368

318:                                              ; preds = %306
  %319 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %320 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %342

324:                                              ; preds = %318
  %325 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %326 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %325, i32 0, i32 6
  %327 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %330 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %329, i32 0, i32 6
  %331 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %330, align 8
  %332 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %16, align 4
  %335 = sub nsw i32 0, %334
  %336 = call i32 @x_tune2(%struct.cxd2880_tnrdmd* %327, i32 %328, i32 %333, i32 %335)
  store i32 %336, i32* %18, align 4
  %337 = load i32, i32* %18, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %324
  %340 = load i32, i32* %18, align 4
  store i32 %340, i32* %7, align 4
  br label %368

341:                                              ; preds = %324
  br label %342

342:                                              ; preds = %341, %318
  %343 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %344 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @CXD2880_TNRDMD_TSOUT_IF_TS, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %342
  %350 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @set_ts_clk_mode_and_freq(%struct.cxd2880_tnrdmd* %350, i32 %351)
  store i32 %352, i32* %18, align 4
  br label %366

353:                                              ; preds = %342
  %354 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %355 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %360 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %359, i32 0, i32 3
  store %struct.cxd2880_tnrdmd_pid_ftr_cfg* %360, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %19, align 8
  br label %362

361:                                              ; preds = %353
  store %struct.cxd2880_tnrdmd_pid_ftr_cfg* null, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %19, align 8
  br label %362

362:                                              ; preds = %361, %358
  %363 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %364 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %19, align 8
  %365 = call i32 @pid_ftr_setting(%struct.cxd2880_tnrdmd* %363, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %364)
  store i32 %365, i32* %18, align 4
  br label %366

366:                                              ; preds = %362, %349
  %367 = load i32, i32* %18, align 4
  store i32 %367, i32* %7, align 4
  br label %368

368:                                              ; preds = %366, %339, %316, %303, %298, %289, %266, %207, %192, %179, %160, %151, %146, %131, %118, %103, %91, %76, %61, %53, %47, %32, %23
  %369 = load i32, i32* %7, align 4
  ret i32 %369
}

declare dso_local i32 @cxd2880_tnrdmd_sleep(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @t_power_x(%struct.cxd2880_tnrdmd*, i32) #1

declare dso_local i32 @spll_reset(%struct.cxd2880_tnrdmd*, i32) #1

declare dso_local i32 @load_cfg_mem(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @x_tune1(%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_check_internal_cpu_status(%struct.cxd2880_tnrdmd*, i32*) #1

declare dso_local i32 @x_tune2(%struct.cxd2880_tnrdmd*, i32, i32, i32) #1

declare dso_local i32 @set_ts_clk_mode_and_freq(%struct.cxd2880_tnrdmd*, i32) #1

declare dso_local i32 @pid_ftr_setting(%struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd_pid_ftr_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
