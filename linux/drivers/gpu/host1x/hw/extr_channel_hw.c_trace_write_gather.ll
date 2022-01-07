; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_trace_write_gather.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_trace_write_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32 }
%struct.host1x_bo = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }

@host1x_debug_trace_cmdbuf = common dso_local global i64 0, align 8
@TRACE_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_cdma*, %struct.host1x_bo*, i32, i32)* @trace_write_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_write_gather(%struct.host1x_cdma* %0, %struct.host1x_bo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.host1x_cdma*, align 8
  %6 = alloca %struct.host1x_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %5, align 8
  store %struct.host1x_bo* %1, %struct.host1x_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.host1x_cdma*, %struct.host1x_cdma** %5, align 8
  %14 = call %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  store i8* null, i8** %10, align 8
  %17 = load i64, i64* @host1x_debug_trace_cmdbuf, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.host1x_bo*, %struct.host1x_bo** %6, align 8
  %21 = call i8* @host1x_bo_mmap(%struct.host1x_bo* %20)
  store i8* %21, i8** %10, align 8
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i64, i64* @TRACE_MAX_LENGTH, align 8
  %35 = call i32 @min(i32 %33, i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = call i32 @dev_name(%struct.device* %43)
  %45 = load %struct.host1x_bo*, %struct.host1x_bo** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @trace_host1x_cdma_push_gather(i32 %44, %struct.host1x_bo* %45, i32 %46, i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %30
  %51 = load i64, i64* @TRACE_MAX_LENGTH, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.host1x_bo*, %struct.host1x_bo** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @host1x_bo_munmap(%struct.host1x_bo* %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %22
  ret void
}

declare dso_local %struct.TYPE_2__* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local i8* @host1x_bo_mmap(%struct.host1x_bo*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @trace_host1x_cdma_push_gather(i32, %struct.host1x_bo*, i32, i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @host1x_bo_munmap(%struct.host1x_bo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
