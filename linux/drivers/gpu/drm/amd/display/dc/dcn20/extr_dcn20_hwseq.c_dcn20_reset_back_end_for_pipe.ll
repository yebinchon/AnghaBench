; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_reset_back_end_for_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_reset_back_end_for_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_17__*, %struct.TYPE_25__*, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.pipe_ctx* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.pipe_ctx*)* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.pipe_ctx = type { %struct.TYPE_27__, i32, %struct.TYPE_26__*, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_19__*, i64, %struct.TYPE_18__*, i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*)* }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_18__*)* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.dc_state = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Reset back end for pipe %d, tg:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*, %struct.dc_state*)* @dcn20_reset_back_end_for_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_reset_back_end_for_pipe(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %8 = load %struct.dc*, %struct.dc** %4, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DC_LOGGER_INIT(i32 %12)
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %20, i32 0, i32 2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %21, align 8
  br label %229

22:                                               ; preds = %3
  %23 = load %struct.dc*, %struct.dc** %4, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %97, label %30

30:                                               ; preds = %22
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i32 0, i32 2
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %39 = call i32 @core_link_disable_stream(%struct.pipe_ctx* %38)
  br label %54

40:                                               ; preds = %30
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.dc*, %struct.dc** %4, align 8
  %48 = getelementptr inbounds %struct.dc, %struct.dc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %49, align 8
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %52 = call i32 %50(%struct.pipe_ctx* %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = icmp ne %struct.TYPE_18__* %58, null
  br i1 %59, label %60, label %96

60:                                               ; preds = %54
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %67, align 8
  %69 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = call i32 %68(%struct.TYPE_18__* %72)
  %74 = load %struct.dc*, %struct.dc** %4, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %60
  %80 = load %struct.dc*, %struct.dc** %4, align 8
  %81 = getelementptr inbounds %struct.dc, %struct.dc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.dc*, %struct.dc** %4, align 8
  %85 = getelementptr inbounds %struct.dc, %struct.dc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = call i32 @update_audio_usage(%struct.TYPE_28__* %83, %struct.TYPE_17__* %86, %struct.TYPE_18__* %90, i32 0)
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %94, align 8
  br label %95

95:                                               ; preds = %79, %60
  br label %96

96:                                               ; preds = %95, %54
  br label %97

97:                                               ; preds = %96, %22
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %181

102:                                              ; preds = %97
  %103 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 3
  %110 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %109, align 8
  %111 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = call i32 %110(%struct.TYPE_19__* %114)
  %116 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 2
  %123 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %122, align 8
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %125 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = call i32 %123(%struct.TYPE_19__* %127, i32 0)
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %135, align 8
  %137 = icmp ne i32 (%struct.TYPE_19__*, i32*)* %136, null
  br i1 %137, label %138, label %156

138:                                              ; preds = %102
  %139 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %140 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %145, align 8
  %147 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %151, i32 0, i32 2
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = call i32 %146(%struct.TYPE_19__* %150, i32* %154)
  br label %156

156:                                              ; preds = %138, %102
  %157 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %163, align 8
  %165 = icmp ne i32 (%struct.TYPE_19__*, i32*)* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %156
  %167 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %168 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %173, align 8
  %175 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %176 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = call i32 %174(%struct.TYPE_19__* %178, i32* null)
  br label %180

180:                                              ; preds = %166, %156
  br label %181

181:                                              ; preds = %180, %97
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.dc*, %struct.dc** %4, align 8
  %185 = getelementptr inbounds %struct.dc, %struct.dc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %183, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %182
  %191 = load %struct.dc*, %struct.dc** %4, align 8
  %192 = getelementptr inbounds %struct.dc, %struct.dc* %191, i32 0, i32 1
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = load %struct.pipe_ctx*, %struct.pipe_ctx** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %196, i64 %198
  %200 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %201 = icmp eq %struct.pipe_ctx* %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %207

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %182

207:                                              ; preds = %202, %182
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.dc*, %struct.dc** %4, align 8
  %210 = getelementptr inbounds %struct.dc, %struct.dc* %209, i32 0, i32 0
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %208, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %229

216:                                              ; preds = %207
  %217 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %218 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %217, i32 0, i32 2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %218, align 8
  %219 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %220 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %223 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @DC_LOG_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %221, i32 %227)
  br label %229

229:                                              ; preds = %216, %215, %19
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @core_link_disable_stream(%struct.pipe_ctx*) #1

declare dso_local i32 @update_audio_usage(%struct.TYPE_28__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @DC_LOG_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
