; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_update_etf_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_update_etf_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_output_handle = type { i64, i64 }
%struct.cs_buffers = type { i32, i64, i32**, i32, i64 }
%struct.tmc_drvdata = type { i64, i64, i32, i64 }

@CS_MODE_PERF = common dso_local global i64 0, align 8
@TMC_STS = common dso_local global i64 0, align 8
@TMC_STS_FULL = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@barrier_pkt = common dso_local global i32* null, align 8
@TMC_RRD = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.coresight_device*, %struct.perf_output_handle*, i8*)* @tmc_update_etf_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmc_update_etf_buffer(%struct.coresight_device* %0, %struct.perf_output_handle* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.perf_output_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.cs_buffers*, align 8
  %20 = alloca %struct.tmc_drvdata*, align 8
  %21 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %5, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %17, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.cs_buffers*
  store %struct.cs_buffers* %23, %struct.cs_buffers** %19, align 8
  %24 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %25 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %27)
  store %struct.tmc_drvdata* %28, %struct.tmc_drvdata** %20, align 8
  %29 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %30 = icmp ne %struct.cs_buffers* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %228

32:                                               ; preds = %3
  %33 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %34 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CS_MODE_PERF, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %228

42:                                               ; preds = %32
  %43 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %44 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %43, i32 0, i32 2
  %45 = load i64, i64* %18, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %48 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @atomic_read(i32 %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %222

53:                                               ; preds = %42
  %54 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %55 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @CS_UNLOCK(i64 %56)
  %58 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %59 = call i32 @tmc_flush_and_stop(%struct.tmc_drvdata* %58)
  %60 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %61 = call i32 @tmc_read_rrp(%struct.tmc_drvdata* %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %63 = call i32 @tmc_read_rwp(%struct.tmc_drvdata* %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %65 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TMC_STS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl_relaxed(i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @TMC_STS_FULL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  %75 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %76 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  br label %85

78:                                               ; preds = %53
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %82 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @CIRC_CNT(i32 %79, i32 %80, i64 %83)
  store i64 %84, i64* %17, align 8
  br label %85

85:                                               ; preds = %78, %74
  %86 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %87 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %133, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %93 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %90
  %97 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %98 = call i32 @tmc_get_memwidth_mask(%struct.tmc_drvdata* %97)
  store i32 %98, i32* %21, align 4
  %99 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %100 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = and i64 %101, %103
  store i64 %104, i64* %17, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %108 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %106, %109
  %111 = load i64, i64* %17, align 8
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %117 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, 1
  %120 = icmp ugt i64 %115, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %96
  %122 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %123 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %121, %96
  %130 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @tmc_write_rrp(%struct.tmc_drvdata* %130, i32 %131)
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %90, %85
  %134 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %135 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %143 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %144 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %138, %133
  %146 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %147 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %10, align 4
  %149 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %150 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %16, align 8
  %152 = load i32*, i32** @barrier_pkt, align 8
  store i32* %152, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %203, %145
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %17, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %153
  %159 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %160 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %159, i32 0, i32 2
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %16, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %12, align 8
  %168 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %169 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TMC_RRD, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @readl_relaxed(i64 %172)
  %174 = load i32*, i32** %12, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %158
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %12, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %11, align 8
  br label %187

187:                                              ; preds = %181, %177, %158
  %188 = load i64, i64* %16, align 8
  %189 = add i64 %188, 4
  store i64 %189, i64* %16, align 8
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* @PAGE_SIZE, align 8
  %192 = icmp uge i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  store i64 0, i64* %16, align 8
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  %196 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %197 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %193, %187
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 4
  store i32 %205, i32* %9, align 4
  br label %153

206:                                              ; preds = %153
  %207 = load %struct.cs_buffers*, %struct.cs_buffers** %19, align 8
  %208 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i64, i64* %17, align 8
  %213 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %214 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, %212
  store i64 %216, i64* %214, align 8
  br label %217

217:                                              ; preds = %211, %206
  %218 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %219 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @CS_LOCK(i64 %220)
  br label %222

222:                                              ; preds = %217, %52
  %223 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %20, align 8
  %224 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %223, i32 0, i32 2
  %225 = load i64, i64* %18, align 8
  %226 = call i32 @spin_unlock_irqrestore(i32* %224, i64 %225)
  %227 = load i64, i64* %17, align 8
  store i64 %227, i64* %4, align 8
  br label %228

228:                                              ; preds = %222, %41, %31
  %229 = load i64, i64* %4, align 8
  ret i64 %229
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @tmc_flush_and_stop(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_read_rrp(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_read_rwp(%struct.tmc_drvdata*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i64) #1

declare dso_local i32 @tmc_get_memwidth_mask(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_write_rrp(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
