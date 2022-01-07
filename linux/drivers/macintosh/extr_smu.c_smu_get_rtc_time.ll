; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_get_rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_get_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.smu_simple_cmd = type { i32* }

@smu = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SMU_CMD_RTC_COMMAND = common dso_local global i32 0, align 4
@SMU_CMD_RTC_GET_DATETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_get_rtc_time(%struct.rtc_time* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_simple_cmd, align 8
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @smu, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = call i32 @memset(%struct.rtc_time* %14, i32 0, i32 56)
  %16 = load i32, i32* @SMU_CMD_RTC_COMMAND, align 4
  %17 = load i32, i32* @SMU_CMD_RTC_GET_DATETIME, align 4
  %18 = call i32 @smu_queue_simple(%struct.smu_simple_cmd* %6, i32 %16, i32 1, i32* null, i32* null, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %13
  %24 = call i32 @smu_spinwait_simple(%struct.smu_simple_cmd* %6)
  %25 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @bcd2hex(i32 %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @bcd2hex(i32 %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @bcd2hex(i32 %42)
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @bcd2hex(i32 %49)
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @bcd2hex(i32 %56)
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @bcd2hex(i32 %63)
  %65 = getelementptr i8, i8* %64, i64 -1
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.smu_simple_cmd, %struct.smu_simple_cmd* %6, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @bcd2hex(i32 %71)
  %73 = getelementptr i8, i8* %72, i64 100
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %23, %21, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @smu_queue_simple(%struct.smu_simple_cmd*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @smu_spinwait_simple(%struct.smu_simple_cmd*) #1

declare dso_local i8* @bcd2hex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
