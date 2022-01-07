; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hsi_msg = type { i64, i32, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i64, i32, i32, i32 }

@HSI_MSG_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@cs_char_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Freeing data %s message\0A\00", align 1
@CS_STATE_CLOSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Data %s flush while device active\0A\00", align 1
@SSI_CHANNEL_STATE_POLL = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@HSI_STATUS_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_data_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_data_destructor(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i8*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %5 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %6 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %5, i32 0, i32 2
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %6, align 8
  store %struct.cs_hsi_iface* %7, %struct.cs_hsi_iface** %3, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HSI_MSG_READ, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %20 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %23 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CS_STATE_CLOSED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %34 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HSI_MSG_READ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %40 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %54

47:                                               ; preds = %32
  %48 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %51 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %38
  %55 = load i32, i32* @HSI_STATUS_COMPLETED, align 4
  %56 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %57 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %59 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %58, i32 0, i32 3
  %60 = call i32 @waitqueue_active(i32* %59)
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %65 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %64, i32 0, i32 3
  %66 = call i32 @wake_up_interruptible(i32* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %69 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
