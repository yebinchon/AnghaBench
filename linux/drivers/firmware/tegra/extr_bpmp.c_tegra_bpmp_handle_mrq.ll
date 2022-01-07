; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_handle_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_handle_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_channel = type { i32 }
%struct.tegra_bpmp_mrq = type { i32, i32 (i32, %struct.tegra_bpmp_channel.0*, i32)* }
%struct.tegra_bpmp_channel.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bpmp*, i32, %struct.tegra_bpmp_channel*)* @tegra_bpmp_handle_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bpmp_handle_mrq(%struct.tegra_bpmp* %0, i32 %1, %struct.tegra_bpmp_channel* %2) #0 {
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp_channel*, align 8
  %7 = alloca %struct.tegra_bpmp_mrq*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tegra_bpmp_channel* %2, %struct.tegra_bpmp_channel** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.tegra_bpmp_mrq* @tegra_bpmp_find_mrq(%struct.tegra_bpmp* %12, i32 %13)
  store %struct.tegra_bpmp_mrq* %14, %struct.tegra_bpmp_mrq** %7, align 8
  %15 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %16 = icmp ne %struct.tegra_bpmp_mrq* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @tegra_bpmp_mrq_return(%struct.tegra_bpmp_channel* %21, i32 %23, i32* %8, i32 4)
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %27 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %26, i32 0, i32 1
  %28 = load i32 (i32, %struct.tegra_bpmp_channel.0*, i32)*, i32 (i32, %struct.tegra_bpmp_channel.0*, i32)** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %31 = bitcast %struct.tegra_bpmp_channel* %30 to %struct.tegra_bpmp_channel.0*
  %32 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %33 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(i32 %29, %struct.tegra_bpmp_channel.0* %31, i32 %34)
  %36 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tegra_bpmp_mrq* @tegra_bpmp_find_mrq(%struct.tegra_bpmp*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tegra_bpmp_mrq_return(%struct.tegra_bpmp_channel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
