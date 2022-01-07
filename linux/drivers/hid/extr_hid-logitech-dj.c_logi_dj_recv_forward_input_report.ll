; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_forward_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_forward_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.dj_receiver_dev = type { i32, %struct.dj_device** }
%struct.dj_device = type { i32 }

@REPORT_TYPE_RFREPORT_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unexpected input report number %d\0A\00", align 1
@DJ_MAX_PAIRED_DEVICES = common dso_local global i32 0, align 4
@DJ_DEVICE_INDEX_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"No dj-devs handling input report number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, i64*, i32)* @logi_dj_recv_forward_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logi_dj_recv_forward_input_report(%struct.hid_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dj_receiver_dev*, align 8
  %8 = alloca %struct.dj_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.dj_receiver_dev* %13, %struct.dj_receiver_dev** %7, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @REPORT_TYPE_RFREPORT_LAST, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %26 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %63, %24
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @DJ_MAX_PAIRED_DEVICES, align 4
  %32 = load i32, i32* @DJ_DEVICE_INDEX_MIN, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %37 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %36, i32 0, i32 1
  %38 = load %struct.dj_device**, %struct.dj_device*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dj_device*, %struct.dj_device** %38, i64 %40
  %42 = load %struct.dj_device*, %struct.dj_device** %41, align 8
  store %struct.dj_device* %42, %struct.dj_device** %8, align 8
  %43 = load %struct.dj_device*, %struct.dj_device** %8, align 8
  %44 = icmp ne %struct.dj_device* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = load %struct.dj_device*, %struct.dj_device** %8, align 8
  %47 = getelementptr inbounds %struct.dj_device, %struct.dj_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @BIT(i64 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.dj_device*, %struct.dj_device** %8, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @logi_dj_recv_forward_report(%struct.dj_device* %54, i64* %55, i32 %56)
  %58 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %59 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %75

62:                                               ; preds = %45, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %68 = call i32 @logi_dj_recv_queue_unknown_work(%struct.dj_receiver_dev* %67)
  %69 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %7, align 8
  %70 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @dbg_hid(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %66, %53, %20
  ret void
}

declare dso_local %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @logi_dj_recv_forward_report(%struct.dj_device*, i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @logi_dj_recv_queue_unknown_work(%struct.dj_receiver_dev*) #1

declare dso_local i32 @dbg_hid(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
