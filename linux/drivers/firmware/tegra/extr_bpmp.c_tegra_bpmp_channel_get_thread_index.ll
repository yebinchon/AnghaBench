; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_channel_get_thread_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_channel_get_thread_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { %struct.tegra_bpmp* }
%struct.tegra_bpmp = type { %struct.tegra_bpmp_channel*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_channel*)* @tegra_bpmp_channel_get_thread_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_channel_get_thread_index(%struct.tegra_bpmp_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp_channel*, align 8
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %3, align 8
  %7 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %7, i32 0, i32 0
  %9 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  store %struct.tegra_bpmp* %9, %struct.tegra_bpmp** %4, align 8
  %10 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %3, align 8
  %18 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %18, i32 0, i32 0
  %20 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %19, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %20, i32 0, i32 0
  %22 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %21, align 8
  %23 = ptrtoint %struct.tegra_bpmp_channel* %17 to i64
  %24 = ptrtoint %struct.tegra_bpmp_channel* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
