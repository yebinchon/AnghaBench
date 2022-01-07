; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c___tegra_bpmp_channel_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c___tegra_bpmp_channel_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_channel*, i32, i64, i8*, i64)* @__tegra_bpmp_channel_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tegra_bpmp_channel_write(%struct.tegra_bpmp_channel* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.tegra_bpmp_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %16, i64* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @memcpy(i32 %31, i8* %32, i64 %33)
  br label %35

35:                                               ; preds = %26, %23, %5
  %36 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %6, align 8
  %37 = call i32 @tegra_bpmp_post_request(%struct.tegra_bpmp_channel* %36)
  ret i32 %37
}

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @tegra_bpmp_post_request(%struct.tegra_bpmp_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
