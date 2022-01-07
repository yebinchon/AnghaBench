; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_start_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32 }

@ISHTP_HBM_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Going to wait for ishtp start. hbm_state=%08X\0A\00", align 1
@ISHTP_HBM_STARTED = common dso_local global i32 0, align 4
@ISHTP_INTEROP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Woke up from waiting for ishtp start. hbm_state=%08X\0A\00", align 1
@ISHTP_HBM_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"waiting for ishtp start failed. ret=%d hbm_state=%08X\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_hbm_start_wait(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ISHTP_HBM_START, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %13 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %20 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISHTP_HBM_STARTED, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @ISHTP_INTEROP_TIMEOUT, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @wait_event_interruptible_timeout(i32 %21, i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %33 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %36 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %11
  %42 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %43 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ISHTP_HBM_START, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i32, i32* @ISHTP_HBM_IDLE, align 4
  %49 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %50 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %52 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %56 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %41, %11
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %47, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
