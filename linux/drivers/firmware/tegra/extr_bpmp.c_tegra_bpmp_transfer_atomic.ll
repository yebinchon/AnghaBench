; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_transfer_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_transfer_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, %struct.tegra_bpmp_channel* }
%struct.tegra_bpmp_channel = type { i32 }
%struct.tegra_bpmp_message = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_transfer_atomic(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_bpmp_message*, align 8
  %6 = alloca %struct.tegra_bpmp_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_bpmp_message* %1, %struct.tegra_bpmp_message** %5, align 8
  %8 = call i32 (...) @irqs_disabled()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %19 = call i32 @tegra_bpmp_message_valid(%struct.tegra_bpmp_message* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %17
  %25 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %25, i32 0, i32 1
  %27 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %26, align 8
  store %struct.tegra_bpmp_channel* %27, %struct.tegra_bpmp_channel** %6, align 8
  %28 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %32 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MSG_ACK, align 4
  %36 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tegra_bpmp_channel_write(%struct.tegra_bpmp_channel* %31, i32 %34, i32 %35, i32 %39, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %24
  %48 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %83

52:                                               ; preds = %24
  %53 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %54 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %57 = call i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %83

62:                                               ; preds = %52
  %63 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %64 = call i32 @tegra_bpmp_wait_response(%struct.tegra_bpmp_channel* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %83

69:                                               ; preds = %62
  %70 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %71 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %72 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %76 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @__tegra_bpmp_channel_read(%struct.tegra_bpmp_channel* %70, i32 %74, i32 %78, i32* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %69, %67, %60, %47, %21, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @tegra_bpmp_message_valid(%struct.tegra_bpmp_message*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tegra_bpmp_channel_write(%struct.tegra_bpmp_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp*) #1

declare dso_local i32 @tegra_bpmp_wait_response(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @__tegra_bpmp_channel_read(%struct.tegra_bpmp_channel*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
