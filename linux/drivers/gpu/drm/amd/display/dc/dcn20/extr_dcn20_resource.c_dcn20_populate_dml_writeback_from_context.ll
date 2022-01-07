; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_populate_dml_writeback_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_populate_dml_writeback_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.resource_context = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.dc_writeback_info* }
%struct.dc_writeback_info = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32 }

@dwb_scaler_mode_yuv420 = common dso_local global i64 0, align 8
@DWB_OUTPUT_PIXEL_DEPTH_8BPC = common dso_local global i64 0, align 8
@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@dm_444_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_populate_dml_writeback_from_context(%struct.dc* %0, %struct.resource_context* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_writeback_info*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.resource_context* %1, %struct.resource_context** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %203, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.dc*, %struct.dc** %4, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %206

18:                                               ; preds = %10
  %19 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %20 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %27, align 8
  %29 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %28, i64 0
  store %struct.dc_writeback_info* %29, %struct.dc_writeback_info** %9, align 8
  %30 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %31 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %18
  br label %203

40:                                               ; preds = %18
  %41 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %42 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %62 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 10
  store i32 %65, i32* %72, align 8
  %73 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %74 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 9
  store i32 %77, i32* %84, align 4
  %85 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %86 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  store i32 %88, i32* %95, align 8
  %96 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %97 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 7
  store i32 %99, i32* %106, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %122 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 6
  store i32 %125, i32* %132, align 8
  %133 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %134 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 5
  store i32 %137, i32* %144, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  store double 1.000000e+00, double* %151, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  store double 1.000000e+00, double* %158, align 8
  %159 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %160 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @dwb_scaler_mode_yuv420, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %191

165:                                              ; preds = %40
  %166 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %9, align 8
  %167 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DWB_OUTPUT_PIXEL_DEPTH_8BPC, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load i32, i32* @dm_420_8, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 4
  store i32 %173, i32* %180, align 8
  br label %190

181:                                              ; preds = %165
  %182 = load i32, i32* @dm_420_10, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 4
  store i32 %182, i32* %189, align 8
  br label %190

190:                                              ; preds = %181, %172
  br label %200

191:                                              ; preds = %40
  %192 = load i32, i32* @dm_444_32, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 4
  store i32 %192, i32* %199, align 8
  br label %200

200:                                              ; preds = %191, %190
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %200, %39
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %10

206:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
