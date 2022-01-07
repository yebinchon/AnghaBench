; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_global_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_global_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.tegra_dma* }
%struct.tegra_dma = type { i64, i32 }

@TEGRA_APBDMA_GENERAL = common dso_local global i32 0, align 4
@TEGRA_APBDMA_GENERAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*)* @tegra_dma_global_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_global_resume(%struct.tegra_dma_channel* %0) #0 {
  %2 = alloca %struct.tegra_dma_channel*, align 8
  %3 = alloca %struct.tegra_dma*, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %2, align 8
  %4 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %4, i32 0, i32 0
  %6 = load %struct.tegra_dma*, %struct.tegra_dma** %5, align 8
  store %struct.tegra_dma* %6, %struct.tegra_dma** %3, align 8
  %7 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %10, i32 0, i32 0
  %12 = load %struct.tegra_dma*, %struct.tegra_dma** %11, align 8
  %13 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %21, i32 0, i32 0
  %23 = load %struct.tegra_dma*, %struct.tegra_dma** %22, align 8
  %24 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %30 = load i32, i32* @TEGRA_APBDMA_GENERAL, align 4
  %31 = load i32, i32* @TEGRA_APBDMA_GENERAL_ENABLE, align 4
  %32 = call i32 @tdma_write(%struct.tegra_dma* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tdma_write(%struct.tegra_dma*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
