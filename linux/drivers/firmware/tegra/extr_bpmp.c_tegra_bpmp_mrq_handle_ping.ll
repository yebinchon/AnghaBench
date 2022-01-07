; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_mrq_handle_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_mrq_handle_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mrq_ping_request = type { i32 }
%struct.mrq_ping_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tegra_bpmp_channel*, i8*)* @tegra_bpmp_mrq_handle_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bpmp_mrq_handle_ping(i32 %0, %struct.tegra_bpmp_channel* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_bpmp_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mrq_ping_request*, align 8
  %8 = alloca %struct.mrq_ping_response, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tegra_bpmp_channel* %1, %struct.tegra_bpmp_channel** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mrq_ping_request*
  store %struct.mrq_ping_request* %14, %struct.mrq_ping_request** %7, align 8
  %15 = call i32 @memset(%struct.mrq_ping_response* %8, i32 0, i32 4)
  %16 = load %struct.mrq_ping_request*, %struct.mrq_ping_request** %7, align 8
  %17 = getelementptr inbounds %struct.mrq_ping_request, %struct.mrq_ping_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  %20 = getelementptr inbounds %struct.mrq_ping_response, %struct.mrq_ping_response* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %22 = call i32 @tegra_bpmp_mrq_return(%struct.tegra_bpmp_channel* %21, i32 0, %struct.mrq_ping_response* %8, i32 4)
  ret void
}

declare dso_local i32 @memset(%struct.mrq_ping_response*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_mrq_return(%struct.tegra_bpmp_channel*, i32, %struct.mrq_ping_response*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
