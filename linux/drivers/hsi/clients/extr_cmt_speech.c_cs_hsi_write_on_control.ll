; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hsi_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSI_CHANNEL_STATE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Write still pending on control channel.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cs_hsi_write_on_control_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Sending control message %08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"async_write failed with %d\0A\00", align 1
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Restarting control reads\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*, i32)* @cs_hsi_write_on_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_write_on_control(%struct.cs_hsi_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_hsi_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hsi_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %12 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SSI_CHANNEL_STATE_ERROR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %19 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %25 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %32 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %37 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %23
  %42 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %48 = call %struct.hsi_msg* @cs_claim_cmd(%struct.cs_hsi_iface* %47)
  store %struct.hsi_msg* %48, %struct.hsi_msg** %6, align 8
  %49 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %50 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @cs_set_cmd(%struct.hsi_msg* %52, i32 %53)
  %55 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %56 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @cs_hsi_write_on_control_complete, align 4
  %59 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %60 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %62 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_dbg(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %68 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %71 = call i32 @hsi_async_write(%struct.TYPE_4__* %69, %struct.hsi_msg* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %41
  %75 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %76 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %82 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %83 = call i32 @cs_hsi_control_write_error(%struct.cs_hsi_iface* %81, %struct.hsi_msg* %82)
  br label %84

84:                                               ; preds = %74, %41
  %85 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %86 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %84
  %92 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %93 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %4, align 8
  %98 = call i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface* %97)
  br label %99

99:                                               ; preds = %91, %84
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %30, %17
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.hsi_msg* @cs_claim_cmd(%struct.cs_hsi_iface*) #1

declare dso_local i32 @cs_set_cmd(%struct.hsi_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @hsi_async_write(%struct.TYPE_4__*, %struct.hsi_msg*) #1

declare dso_local i32 @cs_hsi_control_write_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
