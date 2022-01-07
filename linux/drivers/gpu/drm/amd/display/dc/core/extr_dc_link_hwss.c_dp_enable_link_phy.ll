; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_enable_link_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_enable_link_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.dc_link_settings, %struct.TYPE_23__*, %struct.TYPE_18__*, %struct.link_encoder* }
%struct.dc_link_settings = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { %struct.clock_source* }
%struct.clock_source = type { i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.clock_source*, %struct.TYPE_17__*, i32*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { i32, %struct.TYPE_14__, %struct.clock_source*, %struct.TYPE_25__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.dc_link* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)* }
%struct.link_encoder = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)*, i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)* }

@MAX_PIPES = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_DP_DTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_enable_link_phy(%struct.dc_link* %0, i32 %1, i32 %2, %struct.dc_link_settings* %3) #0 {
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_link_settings*, align 8
  %9 = alloca %struct.link_encoder*, align 8
  %10 = alloca %struct.dc*, align 8
  %11 = alloca %struct.dmcu*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  %13 = alloca %struct.clock_source*, align 8
  %14 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dc_link_settings* %3, %struct.dc_link_settings** %8, align 8
  %15 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 3
  %17 = load %struct.link_encoder*, %struct.link_encoder** %16, align 8
  store %struct.link_encoder* %17, %struct.link_encoder** %9, align 8
  %18 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %19 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %18, i32 0, i32 2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.dc*, %struct.dc** %21, align 8
  store %struct.dc* %22, %struct.dc** %10, align 8
  %23 = load %struct.dc*, %struct.dc** %10, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.dmcu*, %struct.dmcu** %26, align 8
  store %struct.dmcu* %27, %struct.dmcu** %11, align 8
  %28 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %29 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %28, i32 0, i32 1
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %34, align 8
  store %struct.pipe_ctx* %35, %struct.pipe_ctx** %12, align 8
  %36 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %37 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.clock_source*, %struct.clock_source** %41, align 8
  store %struct.clock_source* %42, %struct.clock_source** %13, align 8
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %138, %4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @MAX_PIPES, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %43
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i64 %50
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 3
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = icmp ne %struct.TYPE_25__* %53, null
  br i1 %54, label %55, label %137

55:                                               ; preds = %47
  %56 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %56, i64 %58
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %59, i32 0, i32 3
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load %struct.dc_link*, %struct.dc_link** %62, align 8
  %64 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %65 = icmp eq %struct.dc_link* %63, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %55
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i64 %69
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 2
  %72 = load %struct.clock_source*, %struct.clock_source** %71, align 8
  %73 = icmp ne %struct.clock_source* %72, null
  br i1 %73, label %74, label %136

74:                                               ; preds = %66
  %75 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %75, i64 %77
  %79 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i32 0, i32 2
  %80 = load %struct.clock_source*, %struct.clock_source** %79, align 8
  %81 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CLOCK_SOURCE_ID_DP_DTO, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %74
  %86 = load %struct.clock_source*, %struct.clock_source** %13, align 8
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i64 %89
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 2
  store %struct.clock_source* %86, %struct.clock_source** %91, align 8
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i64 %94
  %96 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %95, i32 0, i32 3
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i64 %103
  %105 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 4
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i64 %110
  %112 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %111, i32 0, i32 2
  %113 = load %struct.clock_source*, %struct.clock_source** %112, align 8
  %114 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %113, i32 0, i32 1
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i32 (%struct.clock_source*, %struct.TYPE_17__*, i32*)*, i32 (%struct.clock_source*, %struct.TYPE_17__*, i32*)** %116, align 8
  %118 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %118, i64 %120
  %122 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %121, i32 0, i32 2
  %123 = load %struct.clock_source*, %struct.clock_source** %122, align 8
  %124 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %124, i64 %126
  %128 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %130, i64 %132
  %134 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %133, i32 0, i32 0
  %135 = call i32 %117(%struct.clock_source* %123, %struct.TYPE_17__* %129, i32* %134)
  br label %136

136:                                              ; preds = %85, %74, %66
  br label %137

137:                                              ; preds = %136, %55, %47
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %14, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %43

141:                                              ; preds = %43
  %142 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %143 = icmp ne %struct.dmcu* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %146 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %145, i32 0, i32 0
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %148, align 8
  %150 = icmp ne i32 (%struct.dmcu*)* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %153 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %152, i32 0, i32 0
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %155, align 8
  %157 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %158 = call i32 %156(%struct.dmcu* %157)
  br label %159

159:                                              ; preds = %151, %144, %141
  %160 = load i32, i32* %6, align 4
  %161 = call i64 @dc_is_dp_sst_signal(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load %struct.link_encoder*, %struct.link_encoder** %9, align 8
  %165 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)*, i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)** %167, align 8
  %169 = load %struct.link_encoder*, %struct.link_encoder** %9, align 8
  %170 = load %struct.dc_link_settings*, %struct.dc_link_settings** %8, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 %168(%struct.link_encoder* %169, %struct.dc_link_settings* %170, i32 %171)
  br label %183

173:                                              ; preds = %159
  %174 = load %struct.link_encoder*, %struct.link_encoder** %9, align 8
  %175 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %174, i32 0, i32 0
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)*, i32 (%struct.link_encoder*, %struct.dc_link_settings*, i32)** %177, align 8
  %179 = load %struct.link_encoder*, %struct.link_encoder** %9, align 8
  %180 = load %struct.dc_link_settings*, %struct.dc_link_settings** %8, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 %178(%struct.link_encoder* %179, %struct.dc_link_settings* %180, i32 %181)
  br label %183

183:                                              ; preds = %173, %163
  %184 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %185 = icmp ne %struct.dmcu* %184, null
  br i1 %185, label %186, label %201

186:                                              ; preds = %183
  %187 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %188 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %187, i32 0, i32 0
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %190, align 8
  %192 = icmp ne i32 (%struct.dmcu*)* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %195 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %197, align 8
  %199 = load %struct.dmcu*, %struct.dmcu** %11, align 8
  %200 = call i32 %198(%struct.dmcu* %199)
  br label %201

201:                                              ; preds = %193, %186, %183
  %202 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %203 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %202, i32 0, i32 0
  %204 = load %struct.dc_link_settings*, %struct.dc_link_settings** %8, align 8
  %205 = bitcast %struct.dc_link_settings* %203 to i8*
  %206 = bitcast %struct.dc_link_settings* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 4 %206, i64 4, i1 false)
  %207 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %208 = call i32 @dp_receiver_power_ctrl(%struct.dc_link* %207, i32 1)
  ret void
}

declare dso_local i64 @dc_is_dp_sst_signal(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dp_receiver_power_ctrl(%struct.dc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
