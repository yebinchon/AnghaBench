; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tegra_bpmp_message = type { %struct.TYPE_10__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.tegra_bpmp_channel = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_bpmp_message*, align 8
  %6 = alloca %struct.tegra_bpmp_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_bpmp_message* %1, %struct.tegra_bpmp_message** %5, align 8
  %9 = call i32 (...) @irqs_disabled()
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  %16 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %17 = call i32 @tegra_bpmp_message_valid(%struct.tegra_bpmp_message* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %81

22:                                               ; preds = %15
  %23 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %24 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.tegra_bpmp_channel* @tegra_bpmp_write_threaded(%struct.tegra_bpmp* %23, i32 %26, i32 %30, i32 %34)
  store %struct.tegra_bpmp_channel* %35, %struct.tegra_bpmp_channel** %6, align 8
  %36 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %37 = call i64 @IS_ERR(%struct.tegra_bpmp_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.tegra_bpmp_channel* %40)
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %22
  %43 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %44 = call i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %42
  %50 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @usecs_to_jiffies(i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %59 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @wait_for_completion_timeout(i32* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %81

67:                                               ; preds = %49
  %68 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %69 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = call i32 @tegra_bpmp_channel_read(%struct.tegra_bpmp_channel* %68, i32 %72, i32 %76, i32* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %67, %64, %47, %39, %19, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @tegra_bpmp_message_valid(%struct.tegra_bpmp_message*) #1

declare dso_local %struct.tegra_bpmp_channel* @tegra_bpmp_write_threaded(%struct.tegra_bpmp*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @tegra_bpmp_channel_read(%struct.tegra_bpmp_channel*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
