; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_15__*, %struct.TYPE_22__*, %struct.dc_link**, i32, %struct.TYPE_14__*, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_22__ = type { i32, i32, %struct.dmcu*, %struct.abm*, %struct.audio**, %struct.timing_generator**, %struct.transform** }
%struct.dmcu = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.dmcu*)* }
%struct.abm = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.abm*)*, i32 (%struct.abm*)* }
%struct.audio = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.audio*)* }
%struct.timing_generator = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*)* }
%struct.transform = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.transform*)* }
%struct.dc_link = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_14__ = type { %struct.dc_bios* }
%struct.dc_bios = type { i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)* }
%struct.dc.0 = type opaque

@PIPE_GATING_CONTROL_INIT = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hw(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_bios*, align 8
  %5 = alloca %struct.transform*, align 8
  %6 = alloca %struct.abm*, align 8
  %7 = alloca %struct.dmcu*, align 8
  %8 = alloca %struct.dc_link*, align 8
  %9 = alloca %struct.timing_generator*, align 8
  %10 = alloca %struct.audio*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %11 = load %struct.dc*, %struct.dc** %2, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 5
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.dc_bios*, %struct.dc_bios** %14, align 8
  store %struct.dc_bios* %15, %struct.dc_bios** %4, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %69, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = load %struct.dc*, %struct.dc** %2, align 8
  %26 = getelementptr inbounds %struct.dc, %struct.dc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 6
  %29 = load %struct.transform**, %struct.transform*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.transform*, %struct.transform** %29, i64 %31
  %33 = load %struct.transform*, %struct.transform** %32, align 8
  store %struct.transform* %33, %struct.transform** %5, align 8
  %34 = load %struct.transform*, %struct.transform** %5, align 8
  %35 = getelementptr inbounds %struct.transform, %struct.transform* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32 (%struct.transform*)*, i32 (%struct.transform*)** %37, align 8
  %39 = load %struct.transform*, %struct.transform** %5, align 8
  %40 = call i32 %38(%struct.transform* %39)
  %41 = load %struct.dc*, %struct.dc** %2, align 8
  %42 = getelementptr inbounds %struct.dc, %struct.dc* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)*, i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)** %43, align 8
  %45 = load %struct.dc*, %struct.dc** %2, align 8
  %46 = bitcast %struct.dc* %45 to %struct.dc.0*
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %49 = load i32, i32* @PIPE_GATING_CONTROL_INIT, align 4
  %50 = call i32 %44(%struct.dc.0* %46, i32 %47, %struct.dc_bios* %48, i32 %49)
  %51 = load %struct.dc*, %struct.dc** %2, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)*, i32 (%struct.dc.0*, i32, %struct.dc_bios*, i32)** %53, align 8
  %55 = load %struct.dc*, %struct.dc** %2, align 8
  %56 = bitcast %struct.dc* %55 to %struct.dc.0*
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.dc_bios*, %struct.dc_bios** %4, align 8
  %59 = load i32, i32* @PIPE_GATING_CONTROL_DISABLE, align 4
  %60 = call i32 %54(%struct.dc.0* %56, i32 %57, %struct.dc_bios* %58, i32 %59)
  %61 = load %struct.dc*, %struct.dc** %2, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %63, align 8
  %65 = load %struct.dc*, %struct.dc** %2, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 5
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = call i32 %64(%struct.TYPE_14__* %67, i32 1)
  br label %69

69:                                               ; preds = %24
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load %struct.dc*, %struct.dc** %2, align 8
  %74 = getelementptr inbounds %struct.dc, %struct.dc* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dce_clock_gating_power_up(i32 %75, i32 0)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %102, %72
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.dc*, %struct.dc** %2, align 8
  %80 = getelementptr inbounds %struct.dc, %struct.dc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.dc*, %struct.dc** %2, align 8
  %85 = getelementptr inbounds %struct.dc, %struct.dc* %84, i32 0, i32 3
  %86 = load %struct.dc_link**, %struct.dc_link*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %86, i64 %88
  %90 = load %struct.dc_link*, %struct.dc_link** %89, align 8
  store %struct.dc_link* %90, %struct.dc_link** %8, align 8
  %91 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %92 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %96, align 8
  %98 = load %struct.dc_link*, %struct.dc_link** %8, align 8
  %99 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = call i32 %97(%struct.TYPE_13__* %100)
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %77

105:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %140, %105
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.dc*, %struct.dc** %2, align 8
  %109 = getelementptr inbounds %struct.dc, %struct.dc* %108, i32 0, i32 2
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %107, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %106
  %115 = load %struct.dc*, %struct.dc** %2, align 8
  %116 = getelementptr inbounds %struct.dc, %struct.dc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  %119 = load %struct.timing_generator**, %struct.timing_generator*** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %119, i64 %121
  %123 = load %struct.timing_generator*, %struct.timing_generator** %122, align 8
  store %struct.timing_generator* %123, %struct.timing_generator** %9, align 8
  %124 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %125 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %124, i32 0, i32 0
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %127, align 8
  %129 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %130 = call i32 %128(%struct.timing_generator* %129)
  %131 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %132 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %134, align 8
  %136 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %137 = call i32 %135(%struct.timing_generator* %136, i32 1)
  %138 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %139 = call i32 @hwss_wait_for_blank_complete(%struct.timing_generator* %138)
  br label %140

140:                                              ; preds = %114
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %106

143:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %169, %143
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.dc*, %struct.dc** %2, align 8
  %147 = getelementptr inbounds %struct.dc, %struct.dc* %146, i32 0, i32 2
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %144
  %153 = load %struct.dc*, %struct.dc** %2, align 8
  %154 = getelementptr inbounds %struct.dc, %struct.dc* %153, i32 0, i32 2
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 4
  %157 = load %struct.audio**, %struct.audio*** %156, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.audio*, %struct.audio** %157, i64 %159
  %161 = load %struct.audio*, %struct.audio** %160, align 8
  store %struct.audio* %161, %struct.audio** %10, align 8
  %162 = load %struct.audio*, %struct.audio** %10, align 8
  %163 = getelementptr inbounds %struct.audio, %struct.audio* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32 (%struct.audio*)*, i32 (%struct.audio*)** %165, align 8
  %167 = load %struct.audio*, %struct.audio** %10, align 8
  %168 = call i32 %166(%struct.audio* %167)
  br label %169

169:                                              ; preds = %152
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %144

172:                                              ; preds = %144
  %173 = load %struct.dc*, %struct.dc** %2, align 8
  %174 = getelementptr inbounds %struct.dc, %struct.dc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  %177 = load %struct.abm*, %struct.abm** %176, align 8
  store %struct.abm* %177, %struct.abm** %6, align 8
  %178 = load %struct.abm*, %struct.abm** %6, align 8
  %179 = icmp ne %struct.abm* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %172
  %181 = load %struct.abm*, %struct.abm** %6, align 8
  %182 = getelementptr inbounds %struct.abm, %struct.abm* %181, i32 0, i32 1
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %184, align 8
  %186 = load %struct.abm*, %struct.abm** %6, align 8
  %187 = call i32 %185(%struct.abm* %186)
  %188 = load %struct.abm*, %struct.abm** %6, align 8
  %189 = getelementptr inbounds %struct.abm, %struct.abm* %188, i32 0, i32 1
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %191, align 8
  %193 = load %struct.abm*, %struct.abm** %6, align 8
  %194 = call i32 %192(%struct.abm* %193)
  br label %195

195:                                              ; preds = %180, %172
  %196 = load %struct.dc*, %struct.dc** %2, align 8
  %197 = getelementptr inbounds %struct.dc, %struct.dc* %196, i32 0, i32 2
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = load %struct.dmcu*, %struct.dmcu** %199, align 8
  store %struct.dmcu* %200, %struct.dmcu** %7, align 8
  %201 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %202 = icmp ne %struct.dmcu* %201, null
  br i1 %202, label %203, label %216

203:                                              ; preds = %195
  %204 = load %struct.abm*, %struct.abm** %6, align 8
  %205 = icmp ne %struct.abm* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %208 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %207, i32 0, i32 0
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %210, align 8
  %212 = load %struct.dmcu*, %struct.dmcu** %7, align 8
  %213 = call i32 %211(%struct.dmcu* %212)
  %214 = load %struct.abm*, %struct.abm** %6, align 8
  %215 = getelementptr inbounds %struct.abm, %struct.abm* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %206, %203, %195
  %217 = load %struct.dc*, %struct.dc** %2, align 8
  %218 = getelementptr inbounds %struct.dc, %struct.dc* %217, i32 0, i32 1
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = icmp ne %struct.TYPE_15__* %219, null
  br i1 %220, label %221, label %233

221:                                              ; preds = %216
  %222 = load %struct.dc*, %struct.dc** %2, align 8
  %223 = getelementptr inbounds %struct.dc, %struct.dc* %222, i32 0, i32 1
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %227, align 8
  %229 = load %struct.dc*, %struct.dc** %2, align 8
  %230 = getelementptr inbounds %struct.dc, %struct.dc* %229, i32 0, i32 1
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = call i32 %228(%struct.TYPE_15__* %231)
  br label %233

233:                                              ; preds = %221, %216
  ret void
}

declare dso_local i32 @dce_clock_gating_power_up(i32, i32) #1

declare dso_local i32 @hwss_wait_for_blank_complete(%struct.timing_generator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
