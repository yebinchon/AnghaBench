; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_control_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_control_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.cs_timestamp }
%struct.cs_timestamp = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.timespec64 = type { i64, i64 }

@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Control RX error detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Read on control: %08X\0A\00", align 1
@CS_FEAT_TSTAMP_RX_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_read_on_control_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_read_on_control_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_hsi_iface*, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.cs_timestamp*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %7 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %8 = call i32 @cs_get_cmd(%struct.hsi_msg* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %10 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %9, i32 0, i32 1
  %11 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %10, align 8
  store %struct.cs_hsi_iface* %11, %struct.cs_hsi_iface** %4, align 8
  %12 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %13 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %18 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %22 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %28 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %33 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %36 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %37 = call i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface* %35, %struct.hsi_msg* %36)
  br label %75

38:                                               ; preds = %1
  %39 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %40 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %46 = call i32 @cs_release_cmd(%struct.hsi_msg* %45)
  %47 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %48 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CS_FEAT_TSTAMP_RX_CTRL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %38
  %54 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %55 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.cs_timestamp* %57, %struct.cs_timestamp** %6, align 8
  %58 = call i32 @ktime_get_ts64(%struct.timespec64* %5)
  %59 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.cs_timestamp*, %struct.cs_timestamp** %6, align 8
  %63 = getelementptr inbounds %struct.cs_timestamp, %struct.cs_timestamp* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.cs_timestamp*, %struct.cs_timestamp** %6, align 8
  %68 = getelementptr inbounds %struct.cs_timestamp, %struct.cs_timestamp* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %53, %38
  %70 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %71 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @cs_notify_control(i32 %73)
  br label %75

75:                                               ; preds = %69, %26
  %76 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %77 = call i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface* %76)
  ret void
}

declare dso_local i32 @cs_get_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cs_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @cs_notify_control(i32) #1

declare dso_local i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
