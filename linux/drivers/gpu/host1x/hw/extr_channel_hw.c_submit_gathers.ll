; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_submit_gathers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_channel_hw.c_submit_gathers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, %struct.host1x_job_gather*, %struct.TYPE_2__* }
%struct.host1x_job_gather = type { i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.device*, %struct.host1x_cdma }
%struct.device = type { i32 }
%struct.host1x_cdma = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"invalid gather for push buffer %pad\0A\00", align 1
@HOST1X_OPCODE_NOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_job*)* @submit_gathers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_gathers(%struct.host1x_job* %0) #0 {
  %2 = alloca %struct.host1x_job*, align 8
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host1x_job_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %2, align 8
  %11 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %12 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.host1x_cdma* %14, %struct.host1x_cdma** %3, align 8
  %15 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %16 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %70, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %23 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %20
  %27 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %28 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %27, i32 0, i32 1
  %29 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %29, i64 %31
  store %struct.host1x_job_gather* %32, %struct.host1x_job_gather** %6, align 8
  %33 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %34 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %37 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @lower_32_bits(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @upper_32_bits(i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %45 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %46 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %49 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %52 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @trace_write_gather(%struct.host1x_cdma* %44, i32 %47, i64 %50, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %26
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64* %7)
  br label %70

60:                                               ; preds = %26
  %61 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %6, align 8
  %62 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @host1x_opcode_gather(i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @host1x_cdma_push(%struct.host1x_cdma* %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %20

73:                                               ; preds = %20
  ret void
}

declare dso_local i64 @lower_32_bits(i64) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i32 @trace_write_gather(%struct.host1x_cdma*, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64*) #1

declare dso_local i64 @host1x_opcode_gather(i32) #1

declare dso_local i32 @host1x_cdma_push(%struct.host1x_cdma*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
