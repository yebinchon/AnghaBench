; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_peek_on_control_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_peek_on_control_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, %struct.TYPE_3__, %struct.cs_hsi_iface* }
%struct.TYPE_3__ = type { i32 }
%struct.cs_hsi_iface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Control peek RX error detected\0A\00", align 1
@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Peek on control complete, reading\0A\00", align 1
@cs_hsi_read_on_control_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_peek_on_control_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_peek_on_control_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %5 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %6 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %5, i32 0, i32 3
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %6, align 8
  store %struct.cs_hsi_iface* %7, %struct.cs_hsi_iface** %3, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %15 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %21 = call i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface* %19, %struct.hsi_msg* %20)
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %33 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %38 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @cs_hsi_read_on_control_complete, align 4
  %41 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %42 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %44 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %47 = call i32 @hsi_async_read(%struct.TYPE_4__* %45, %struct.hsi_msg* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %22
  %51 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %52 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %53 = call i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface* %51, %struct.hsi_msg* %52)
  br label %54

54:                                               ; preds = %13, %50, %22
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hsi_async_read(%struct.TYPE_4__*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
