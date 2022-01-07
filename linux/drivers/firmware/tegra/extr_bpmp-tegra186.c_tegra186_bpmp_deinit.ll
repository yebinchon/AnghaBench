; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-tegra186.c_tegra186_bpmp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32*, i32*, i32*, %struct.TYPE_5__, %struct.tegra186_bpmp* }
%struct.TYPE_5__ = type { i32 }
%struct.tegra186_bpmp = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bpmp*)* @tegra186_bpmp_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra186_bpmp_deinit(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca %struct.tegra_bpmp*, align 8
  %3 = alloca %struct.tegra186_bpmp*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %2, align 8
  %5 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %5, i32 0, i32 4
  %7 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %6, align 8
  store %struct.tegra186_bpmp* %7, %struct.tegra186_bpmp** %3, align 8
  %8 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %3, align 8
  %9 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mbox_free_channel(i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @tegra186_bpmp_channel_cleanup(i32* %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @tegra186_bpmp_channel_cleanup(i32* %34)
  %36 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @tegra186_bpmp_channel_cleanup(i32* %38)
  %40 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %3, align 8
  %41 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %3, align 8
  %45 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @gen_pool_free(i32 %43, i64 %47, i32 4096)
  %49 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %3, align 8
  %50 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tegra186_bpmp*, %struct.tegra186_bpmp** %3, align 8
  %54 = getelementptr inbounds %struct.tegra186_bpmp, %struct.tegra186_bpmp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @gen_pool_free(i32 %52, i64 %56, i32 4096)
  ret void
}

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @tegra186_bpmp_channel_cleanup(i32*) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
