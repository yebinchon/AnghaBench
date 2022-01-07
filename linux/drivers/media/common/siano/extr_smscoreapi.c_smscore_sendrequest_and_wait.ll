; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_sendrequest_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_sendrequest_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 (i32, i8*, i64)*, i32 }
%struct.completion = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sendrequest returned error %d\0A\00", align 1
@SMS_PROTOCOL_MAX_RAOUNDTRIP_MS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, i8*, i64, %struct.completion*)* @smscore_sendrequest_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_sendrequest_and_wait(%struct.smscore_device_t* %0, i8* %1, i64 %2, %struct.completion* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smscore_device_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.completion*, align 8
  %10 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.completion* %3, %struct.completion** %9, align 8
  %11 = load %struct.completion*, %struct.completion** %9, align 8
  %12 = icmp ne %struct.completion* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %46

16:                                               ; preds = %4
  %17 = load %struct.completion*, %struct.completion** %9, align 8
  %18 = call i32 @init_completion(%struct.completion* %17)
  %19 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %20 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %20, align 8
  %22 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %23 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 %21(i32 %24, i8* %25, i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %16
  %35 = load %struct.completion*, %struct.completion** %9, align 8
  %36 = load i32, i32* @SMS_PROTOCOL_MAX_RAOUNDTRIP_MS, align 4
  %37 = call i32 @msecs_to_jiffies(i32 %36)
  %38 = call i64 @wait_for_completion_timeout(%struct.completion* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ETIME, align 4
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ %43, %41 ]
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %30, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
