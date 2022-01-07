; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_update_etr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_update_etr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_output_handle = type { i64, i64 }
%struct.tmc_drvdata = type { i32, i32, %struct.etr_buf* }
%struct.etr_buf = type { i32, i64, i64, i64 }
%struct.etr_perf_buffer = type { i64, %struct.etr_buf* }

@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.coresight_device*, %struct.perf_output_handle*, i8*)* @tmc_update_etr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmc_update_etr_buffer(%struct.coresight_device* %0, %struct.perf_output_handle* %1, i8* %2) #0 {
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.perf_output_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tmc_drvdata*, align 8
  %12 = alloca %struct.etr_perf_buffer*, align 8
  %13 = alloca %struct.etr_buf*, align 8
  %14 = alloca i64, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %16 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %18)
  store %struct.tmc_drvdata* %19, %struct.tmc_drvdata** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.etr_perf_buffer*
  store %struct.etr_perf_buffer* %21, %struct.etr_perf_buffer** %12, align 8
  %22 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %12, align 8
  %23 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %22, i32 0, i32 1
  %24 = load %struct.etr_buf*, %struct.etr_buf** %23, align 8
  store %struct.etr_buf* %24, %struct.etr_buf** %13, align 8
  %25 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %26 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %30 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @atomic_read(i32 %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %36 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %143

39:                                               ; preds = %3
  %40 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %41 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %40, i32 0, i32 2
  %42 = load %struct.etr_buf*, %struct.etr_buf** %41, align 8
  %43 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %44 = icmp ne %struct.etr_buf* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  %49 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %50 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %143

53:                                               ; preds = %39
  %54 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %55 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CS_UNLOCK(i32 %56)
  %58 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %59 = call i32 @tmc_flush_and_stop(%struct.tmc_drvdata* %58)
  %60 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %61 = call i32 @tmc_sync_etr_buf(%struct.tmc_drvdata* %60)
  %62 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %63 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CS_LOCK(i32 %64)
  %66 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %67 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %71 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %74 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %77 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %12, align 8
  %80 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %118, label %83

83:                                               ; preds = %53
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %86 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ugt i64 %84, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %83
  %90 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %11, align 8
  %91 = call i64 @tmc_get_memwidth_mask(%struct.tmc_drvdata* %90)
  store i64 %91, i64* %14, align 8
  %92 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %93 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = and i64 %94, %95
  store i64 %96, i64* %10, align 8
  %97 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %98 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %101 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %99, %102
  %104 = load i64, i64* %10, align 8
  %105 = sub i64 %103, %104
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %108 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp uge i64 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %89
  %112 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %113 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %111, %89
  store i32 1, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %83, %53
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %123 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %124 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @tmc_etr_buf_insert_barrier_packet(%struct.etr_buf* %122, i64 %125)
  br label %127

127:                                              ; preds = %121, %118
  %128 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %12, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @tmc_etr_sync_perf_buffer(%struct.etr_perf_buffer* %128, i64 %129, i64 %130)
  %132 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %12, align 8
  %133 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %139 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, %137
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %136, %127
  br label %143

143:                                              ; preds = %142, %48, %34
  %144 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %12, align 8
  %145 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %153 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %154 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %148, %143
  %156 = load i64, i64* %10, align 8
  ret i64 %156
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @tmc_flush_and_stop(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_sync_etr_buf(%struct.tmc_drvdata*) #1

declare dso_local i32 @CS_LOCK(i32) #1

declare dso_local i64 @tmc_get_memwidth_mask(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_etr_buf_insert_barrier_packet(%struct.etr_buf*, i64) #1

declare dso_local i32 @tmc_etr_sync_perf_buffer(%struct.etr_perf_buffer*, i64, i64) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
