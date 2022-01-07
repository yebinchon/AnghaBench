; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_control_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_write_on_control_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i32, %struct.cs_hsi_iface* }
%struct.cs_hsi_iface = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HSI_STATUS_COMPLETED = common dso_local global i32 0, align 4
@SSI_CHANNEL_STATE_WRITING = common dso_local global i32 0, align 4
@HSI_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"unexpected status in control write callback %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @cs_hsi_write_on_control_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_write_on_control_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %4 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %5 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %4, i32 0, i32 1
  %6 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %5, align 8
  store %struct.cs_hsi_iface* %6, %struct.cs_hsi_iface** %3, align 8
  %7 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %8 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @HSI_STATUS_COMPLETED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %14 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* @SSI_CHANNEL_STATE_WRITING, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %19 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %23 = call i32 @cs_release_cmd(%struct.hsi_msg* %22)
  %24 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %25 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %29 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HSI_STATUS_ERROR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %35 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %36 = call i32 @cs_hsi_control_write_error(%struct.cs_hsi_iface* %34, %struct.hsi_msg* %35)
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %39 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %43 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %33
  br label %47

47:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cs_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cs_hsi_control_write_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
