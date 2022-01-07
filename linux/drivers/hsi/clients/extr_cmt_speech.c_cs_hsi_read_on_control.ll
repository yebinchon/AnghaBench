; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_read_on_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hsi_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SSI_CHANNEL_STATE_READING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Control read already pending (%d)\0A\00", align 1
@SSI_CHANNEL_STATE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Control read error (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Issuing RX on control\0A\00", align 1
@cs_hsi_peek_on_control_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*)* @cs_hsi_read_on_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_read_on_control(%struct.cs_hsi_iface* %0) #0 {
  %2 = alloca %struct.cs_hsi_iface*, align 8
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %2, align 8
  %5 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %6 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %9 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %16 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %20 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 2
  %25 = call i32 @spin_unlock(i32* %24)
  br label %78

26:                                               ; preds = %1
  %27 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %28 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSI_CHANNEL_STATE_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %35 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %39 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %43 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  br label %78

45:                                               ; preds = %26
  %46 = load i32, i32* @SSI_CHANNEL_STATE_READING, align 4
  %47 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %48 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %52 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %57 = call %struct.hsi_msg* @cs_claim_cmd(%struct.cs_hsi_iface* %56)
  store %struct.hsi_msg* %57, %struct.hsi_msg** %3, align 8
  %58 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %59 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %62 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @cs_hsi_peek_on_control_complete, align 4
  %65 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %66 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %68 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %71 = call i32 @hsi_async_read(%struct.TYPE_4__* %69, %struct.hsi_msg* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %45
  %75 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %2, align 8
  %76 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %77 = call i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface* %75, %struct.hsi_msg* %76)
  br label %78

78:                                               ; preds = %14, %33, %74, %45
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.hsi_msg* @cs_claim_cmd(%struct.cs_hsi_iface*) #1

declare dso_local i32 @hsi_async_read(%struct.TYPE_4__*, %struct.hsi_msg*) #1

declare dso_local i32 @cs_hsi_control_read_error(%struct.cs_hsi_iface*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
