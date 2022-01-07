; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_cmd_destructor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_cmd_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hsi_msg = type { i64, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@cs_char_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"control cmd destructor\0A\00", align 1
@CS_STATE_CLOSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Cmd flushed while driver active\0A\00", align 1
@HSI_MSG_READ = common dso_local global i64 0, align 8
@SSI_CHANNEL_STATE_POLL = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@HSI_MSG_WRITE = common dso_local global i64 0, align 8
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_cmd_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_cmd_destructor(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %4 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %5 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %4, i32 0, i32 1
  %6 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %5, align 8
  store %struct.cs_hsi_iface* %6, %struct.cs_hsi_iface** %3, align 8
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %8 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cs_char_data, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %14 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CS_STATE_CLOSED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %20 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %26 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HSI_MSG_READ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @SSI_CHANNEL_STATE_POLL, align 4
  %32 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %36 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %60

39:                                               ; preds = %24
  %40 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %41 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HSI_MSG_WRITE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %47 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %56 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %45, %39
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %62 = call i32 @cs_release_cmd(%struct.hsi_msg* %61)
  %63 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %64 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cs_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
