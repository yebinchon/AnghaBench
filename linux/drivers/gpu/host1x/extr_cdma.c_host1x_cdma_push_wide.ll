; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_push_wide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_push_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32, i32, %struct.push_buffer }
%struct.push_buffer = type { i64, i64 }
%struct.host1x_channel = type { i32 }
%struct.host1x = type { i32 }

@host1x_debug_trace_cmdbuf = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_cdma_push_wide(%struct.host1x_cdma* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.host1x_cdma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.host1x_channel*, align 8
  %12 = alloca %struct.host1x*, align 8
  %13 = alloca %struct.push_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %19 = call %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma* %18)
  store %struct.host1x_channel* %19, %struct.host1x_channel** %11, align 8
  %20 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %21 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %20)
  store %struct.host1x* %21, %struct.host1x** %12, align 8
  %22 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %23 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %22, i32 0, i32 2
  store %struct.push_buffer* %23, %struct.push_buffer** %13, align 8
  store i32 2, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %25 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i64, i64* @host1x_debug_trace_cmdbuf, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.host1x_channel*, %struct.host1x_channel** %11, align 8
  %31 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_name(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @trace_host1x_cdma_push_wide(i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %5
  %40 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %41 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 16
  %44 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %45 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %50 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %53 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = sdiv i64 %55, 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %48, %39
  %62 = load %struct.host1x*, %struct.host1x** %12, align 8
  %63 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @host1x_cdma_wait_pushbuffer_space(%struct.host1x* %62, %struct.host1x_cdma* %63, i32 %64)
  %66 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %67 = call i32 @host1x_pushbuffer_space(%struct.push_buffer* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub i32 %68, %69
  %71 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %72 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.host1x_cdma*, %struct.host1x_cdma** %6, align 8
  %75 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 4
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %87, %61
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @host1x_pushbuffer_push(%struct.push_buffer* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %16, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %78

90:                                               ; preds = %78
  %91 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @host1x_pushbuffer_push(%struct.push_buffer* %91, i32 %92, i32 %93)
  %95 = load %struct.push_buffer*, %struct.push_buffer** %13, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @host1x_pushbuffer_push(%struct.push_buffer* %95, i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @trace_host1x_cdma_push_wide(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @host1x_cdma_wait_pushbuffer_space(%struct.host1x*, %struct.host1x_cdma*, i32) #1

declare dso_local i32 @host1x_pushbuffer_space(%struct.push_buffer*) #1

declare dso_local i32 @host1x_pushbuffer_push(%struct.push_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
