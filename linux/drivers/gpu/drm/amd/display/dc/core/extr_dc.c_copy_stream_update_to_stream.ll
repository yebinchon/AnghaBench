; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_copy_stream_update_to_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_copy_stream_update_to_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.dc*, %struct.dc_state*, i32)* }
%struct.dc_state = type { i32 }
%struct.dc_stream_state = type { i32, %struct.TYPE_16__, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.dc_dsc_config }
%struct.TYPE_15__ = type { i8* }
%struct.dc_dsc_config = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.dc_stream_update = type { %struct.dc_dsc_config*, %struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32* }

@MAX_DWB_PIPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*, %struct.dc_stream_update*)* @copy_stream_update_to_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_stream_update_to_stream(%struct.dc* %0, %struct.dc_state* %1, %struct.dc_stream_state* %2, %struct.dc_stream_update* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc_stream_update*, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  store %struct.dc_stream_update* %3, %struct.dc_stream_update** %8, align 8
  %9 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %10 = icmp eq %struct.dc_stream_update* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %13 = icmp eq %struct.dc_stream_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %4
  br label %247

15:                                               ; preds = %11
  %16 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %17 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %16, i32 0, i32 16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %23 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %22, i32 0, i32 16
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %29 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %28, i32 0, i32 17
  %30 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %31 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %30, i32 0, i32 16
  %32 = bitcast %struct.TYPE_9__* %29 to i8*
  %33 = bitcast %struct.TYPE_9__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  br label %34

34:                                               ; preds = %27, %21, %15
  %35 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %36 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %42 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %41, i32 0, i32 15
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %48 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %47, i32 0, i32 16
  %49 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %50 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %49, i32 0, i32 15
  %51 = bitcast %struct.TYPE_10__* %48 to i8*
  %52 = bitcast %struct.TYPE_10__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  br label %53

53:                                               ; preds = %46, %40, %34
  %54 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %55 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %54, i32 0, i32 14
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %58, label %103

58:                                               ; preds = %53
  %59 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %60 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %59, i32 0, i32 15
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %63 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %62, i32 0, i32 14
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp ne %struct.TYPE_11__* %61, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %58
  %67 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %68 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %67, i32 0, i32 14
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %73 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %72, i32 0, i32 15
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  store i32 %71, i32* %75, align 4
  %76 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %77 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %76, i32 0, i32 14
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %82 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %81, i32 0, i32 15
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  store i32 %80, i32* %84, align 4
  %85 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %86 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %85, i32 0, i32 14
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %91 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %90, i32 0, i32 15
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %95 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %94, i32 0, i32 15
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %99 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %98, i32 0, i32 14
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = call i32 @memcpy(i32* %97, i32* %101, i32 4)
  br label %103

103:                                              ; preds = %66, %58, %53
  %104 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %105 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %104, i32 0, i32 13
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %110 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %109, i32 0, i32 13
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %114 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %113, i32 0, i32 14
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %117 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %116, i32 0, i32 12
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %122 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %121, i32 0, i32 12
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %126 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  %128 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %129 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %128, i32 0, i32 11
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %134 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %133, i32 0, i32 11
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %138 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %127
  %140 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %141 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %140, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %146 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %145, i32 0, i32 10
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %150 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %139
  %152 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %153 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %158 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %157, i32 0, i32 9
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %162 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %161, i32 0, i32 10
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %151
  %164 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %165 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %170 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %169, i32 0, i32 8
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %174 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %168, %163
  %176 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %177 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %176, i32 0, i32 7
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %175
  %181 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %182 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %181, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %186 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %175
  %188 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %189 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %194 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %198 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %192, %187
  %200 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %201 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %206 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %210 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %204, %199
  %212 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %213 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %218 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %222 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %216, %211
  %224 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %225 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %230 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %234 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 4
  br label %235

235:                                              ; preds = %228, %223
  %236 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %237 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load %struct.dc_stream_update*, %struct.dc_stream_update** %8, align 8
  %242 = getelementptr inbounds %struct.dc_stream_update, %struct.dc_stream_update* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %246 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %14, %240, %235
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
