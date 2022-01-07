; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"hsi_data_sync break, idle\0A\00", align 1
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@CS_HSI_TRANSFER_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hsi_data_sync timeout after %d ms\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"hsi_data_sync done with res %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface*)* @cs_hsi_data_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_data_sync(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca %struct.cs_hsi_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %6 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @cs_state_xfer_active(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %15 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %65

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %64, %19
  %21 = load i32, i32* @wait, align 4
  %22 = call i32 @DEFINE_WAIT(i32 %21)
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cs_state_xfer_active(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %65

29:                                               ; preds = %20
  %30 = load i32, i32* @current, align 4
  %31 = call i64 @signal_pending(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ERESTARTSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %29
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 2
  %39 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %40 = call i32 @prepare_to_wait(i32* %38, i32* @wait, i32 %39)
  %41 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %42 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* @CS_HSI_TRANSFER_TIMEOUT_MS, align 4
  %45 = call i32 @msecs_to_jiffies(i32 %44)
  %46 = call i32 @schedule_timeout(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %48 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %47, i32 0, i32 1
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %51 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %50, i32 0, i32 2
  %52 = call i32 @finish_wait(i32* %51, i32* @wait)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %36
  %56 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %57 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @CS_HSI_TRANSFER_TIMEOUT_MS, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %36
  br label %20

65:                                               ; preds = %55, %33, %28, %13
  %66 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %67 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %70 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cs_state_xfer_active(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
