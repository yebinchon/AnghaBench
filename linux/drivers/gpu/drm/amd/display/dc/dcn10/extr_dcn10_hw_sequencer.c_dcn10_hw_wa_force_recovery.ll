; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_hw_wa_force_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_hw_wa_force_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.hubp* }
%struct.hubp = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.hubp*)*, i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*)* @dcn10_hw_wa_force_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn10_hw_wa_force_recovery(%struct.dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca %struct.pipe_ctx*, align 8
  %11 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store i32 1, i32* %6, align 4
  %12 = load %struct.dc*, %struct.dc** %3, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %278

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %66, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %20, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %19
  %28 = load %struct.dc*, %struct.dc** %3, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %33, i64 %35
  store %struct.pipe_ctx* %36, %struct.pipe_ctx** %7, align 8
  %37 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %38 = icmp ne %struct.pipe_ctx* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %27
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.hubp*, %struct.hubp** %42, align 8
  store %struct.hubp* %43, %struct.hubp** %4, align 8
  %44 = load %struct.hubp*, %struct.hubp** %4, align 8
  %45 = icmp ne %struct.hubp* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %struct.hubp*, %struct.hubp** %4, align 8
  %48 = getelementptr inbounds %struct.hubp, %struct.hubp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64 (%struct.hubp*)*, i64 (%struct.hubp*)** %50, align 8
  %52 = icmp ne i64 (%struct.hubp*)* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.hubp*, %struct.hubp** %4, align 8
  %55 = getelementptr inbounds %struct.hubp, %struct.hubp* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64 (%struct.hubp*)*, i64 (%struct.hubp*)** %57, align 8
  %59 = load %struct.hubp*, %struct.hubp** %4, align 8
  %60 = call i64 %58(%struct.hubp* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %46, %39
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %278

73:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %118, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.dc*, %struct.dc** %3, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %75, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %74
  %83 = load %struct.dc*, %struct.dc** %3, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.pipe_ctx*, %struct.pipe_ctx** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %88, i64 %90
  store %struct.pipe_ctx* %91, %struct.pipe_ctx** %8, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %93 = icmp ne %struct.pipe_ctx* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %82
  %95 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.hubp*, %struct.hubp** %97, align 8
  store %struct.hubp* %98, %struct.hubp** %4, align 8
  %99 = load %struct.hubp*, %struct.hubp** %4, align 8
  %100 = icmp ne %struct.hubp* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.hubp*, %struct.hubp** %4, align 8
  %103 = getelementptr inbounds %struct.hubp, %struct.hubp* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.hubp*, i32)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.hubp*, %struct.hubp** %4, align 8
  %110 = getelementptr inbounds %struct.hubp, %struct.hubp* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %112, align 8
  %114 = load %struct.hubp*, %struct.hubp** %4, align 8
  %115 = call i32 %113(%struct.hubp* %114, i32 1)
  br label %116

116:                                              ; preds = %108, %101, %94
  br label %117

117:                                              ; preds = %116, %82
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %74

121:                                              ; preds = %74
  %122 = load %struct.dc*, %struct.dc** %3, align 8
  %123 = getelementptr inbounds %struct.dc, %struct.dc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @hubbub1_soft_reset(i32 %126, i32 1)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %172, %121
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.dc*, %struct.dc** %3, align 8
  %131 = getelementptr inbounds %struct.dc, %struct.dc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ult i32 %129, %134
  br i1 %135, label %136, label %175

136:                                              ; preds = %128
  %137 = load %struct.dc*, %struct.dc** %3, align 8
  %138 = getelementptr inbounds %struct.dc, %struct.dc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i64 %144
  store %struct.pipe_ctx* %145, %struct.pipe_ctx** %9, align 8
  %146 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %147 = icmp ne %struct.pipe_ctx* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %136
  %149 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %150 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load %struct.hubp*, %struct.hubp** %151, align 8
  store %struct.hubp* %152, %struct.hubp** %4, align 8
  %153 = load %struct.hubp*, %struct.hubp** %4, align 8
  %154 = icmp ne %struct.hubp* %153, null
  br i1 %154, label %155, label %170

155:                                              ; preds = %148
  %156 = load %struct.hubp*, %struct.hubp** %4, align 8
  %157 = getelementptr inbounds %struct.hubp, %struct.hubp* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %159, align 8
  %161 = icmp ne i32 (%struct.hubp*, i32)* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load %struct.hubp*, %struct.hubp** %4, align 8
  %164 = getelementptr inbounds %struct.hubp, %struct.hubp* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %166, align 8
  %168 = load %struct.hubp*, %struct.hubp** %4, align 8
  %169 = call i32 %167(%struct.hubp* %168, i32 1)
  br label %170

170:                                              ; preds = %162, %155, %148
  br label %171

171:                                              ; preds = %170, %136
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %5, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %128

175:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %220, %175
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.dc*, %struct.dc** %3, align 8
  %179 = getelementptr inbounds %struct.dc, %struct.dc* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ult i32 %177, %182
  br i1 %183, label %184, label %223

184:                                              ; preds = %176
  %185 = load %struct.dc*, %struct.dc** %3, align 8
  %186 = getelementptr inbounds %struct.dc, %struct.dc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.pipe_ctx*, %struct.pipe_ctx** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %190, i64 %192
  store %struct.pipe_ctx* %193, %struct.pipe_ctx** %10, align 8
  %194 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %195 = icmp ne %struct.pipe_ctx* %194, null
  br i1 %195, label %196, label %219

196:                                              ; preds = %184
  %197 = load %struct.pipe_ctx*, %struct.pipe_ctx** %10, align 8
  %198 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load %struct.hubp*, %struct.hubp** %199, align 8
  store %struct.hubp* %200, %struct.hubp** %4, align 8
  %201 = load %struct.hubp*, %struct.hubp** %4, align 8
  %202 = icmp ne %struct.hubp* %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.hubp*, %struct.hubp** %4, align 8
  %205 = getelementptr inbounds %struct.hubp, %struct.hubp* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %207, align 8
  %209 = icmp ne i32 (%struct.hubp*, i32)* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = load %struct.hubp*, %struct.hubp** %4, align 8
  %212 = getelementptr inbounds %struct.hubp, %struct.hubp* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %214, align 8
  %216 = load %struct.hubp*, %struct.hubp** %4, align 8
  %217 = call i32 %215(%struct.hubp* %216, i32 1)
  br label %218

218:                                              ; preds = %210, %203, %196
  br label %219

219:                                              ; preds = %218, %184
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %5, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %176

223:                                              ; preds = %176
  %224 = load %struct.dc*, %struct.dc** %3, align 8
  %225 = getelementptr inbounds %struct.dc, %struct.dc* %224, i32 0, i32 1
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @hubbub1_soft_reset(i32 %228, i32 0)
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %274, %223
  %231 = load i32, i32* %5, align 4
  %232 = load %struct.dc*, %struct.dc** %3, align 8
  %233 = getelementptr inbounds %struct.dc, %struct.dc* %232, i32 0, i32 1
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp ult i32 %231, %236
  br i1 %237, label %238, label %277

238:                                              ; preds = %230
  %239 = load %struct.dc*, %struct.dc** %3, align 8
  %240 = getelementptr inbounds %struct.dc, %struct.dc* %239, i32 0, i32 0
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load %struct.pipe_ctx*, %struct.pipe_ctx** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %244, i64 %246
  store %struct.pipe_ctx* %247, %struct.pipe_ctx** %11, align 8
  %248 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %249 = icmp ne %struct.pipe_ctx* %248, null
  br i1 %249, label %250, label %273

250:                                              ; preds = %238
  %251 = load %struct.pipe_ctx*, %struct.pipe_ctx** %11, align 8
  %252 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load %struct.hubp*, %struct.hubp** %253, align 8
  store %struct.hubp* %254, %struct.hubp** %4, align 8
  %255 = load %struct.hubp*, %struct.hubp** %4, align 8
  %256 = icmp ne %struct.hubp* %255, null
  br i1 %256, label %257, label %272

257:                                              ; preds = %250
  %258 = load %struct.hubp*, %struct.hubp** %4, align 8
  %259 = getelementptr inbounds %struct.hubp, %struct.hubp* %258, i32 0, i32 0
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %261, align 8
  %263 = icmp ne i32 (%struct.hubp*, i32)* %262, null
  br i1 %263, label %264, label %272

264:                                              ; preds = %257
  %265 = load %struct.hubp*, %struct.hubp** %4, align 8
  %266 = getelementptr inbounds %struct.hubp, %struct.hubp* %265, i32 0, i32 0
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %268, align 8
  %270 = load %struct.hubp*, %struct.hubp** %4, align 8
  %271 = call i32 %269(%struct.hubp* %270, i32 1)
  br label %272

272:                                              ; preds = %264, %257, %250
  br label %273

273:                                              ; preds = %272, %238
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %5, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %5, align 4
  br label %230

277:                                              ; preds = %230
  store i32 1, i32* %2, align 4
  br label %278

278:                                              ; preds = %277, %72, %17
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @hubbub1_soft_reset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
