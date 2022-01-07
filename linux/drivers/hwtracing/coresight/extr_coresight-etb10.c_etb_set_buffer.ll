; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_set_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.cs_buffers = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.perf_output_handle*)* @etb_set_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etb_set_buffer(%struct.coresight_device* %0, %struct.perf_output_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.perf_output_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cs_buffers*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %10 = call %struct.cs_buffers* @etm_perf_sink_config(%struct.perf_output_handle* %9)
  store %struct.cs_buffers* %10, %struct.cs_buffers** %8, align 8
  %11 = load %struct.cs_buffers*, %struct.cs_buffers** %8, align 8
  %12 = icmp ne %struct.cs_buffers* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %18 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cs_buffers*, %struct.cs_buffers** %8, align 8
  %21 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %19, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = udiv i64 %28, %29
  %31 = load %struct.cs_buffers*, %struct.cs_buffers** %8, align 8
  %32 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = urem i64 %33, %34
  %36 = load %struct.cs_buffers*, %struct.cs_buffers** %8, align 8
  %37 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cs_buffers*, %struct.cs_buffers** %8, align 8
  %39 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %38, i32 0, i32 3
  %40 = call i32 @local_set(i32* %39, i32 0)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.cs_buffers* @etm_perf_sink_config(%struct.perf_output_handle*) #1

declare dso_local i32 @local_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
