; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_ivc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_ivc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ivc = type { i32 }
%struct.tegra_bpmp = type { %struct.tegra186_bpmp* }
%struct.tegra186_bpmp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_ivc*, i8*)* @tegra186_bpmp_ivc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra186_bpmp_ivc_notify(%struct.tegra_ivc* %0, i8* %1) #0 {
  %3 = alloca %struct.tegra_ivc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca %struct.tegra186_bpmp*, align 8
  store %struct.tegra_ivc* %0, %struct.tegra_ivc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.tegra_bpmp*
  store %struct.tegra_bpmp* %8, %struct.tegra_bpmp** %5, align 8
  %9 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %9, i32 0, i32 0
  %11 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %10, align 8
  store %struct.tegra186_bpmp* %11, %struct.tegra186_bpmp** %6, align 8
  %12 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %6, align 8
  %13 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %23 = call i32 @tegra186_bpmp_ring_doorbell(%struct.tegra_bpmp* %22)
  br label %24

24:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tegra186_bpmp_ring_doorbell(%struct.tegra_bpmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
