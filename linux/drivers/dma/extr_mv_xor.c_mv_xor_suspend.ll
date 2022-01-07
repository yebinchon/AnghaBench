; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_xor_device = type { %struct.mv_xor_chan** }
%struct.mv_xor_chan = type { i8*, i8* }

@MV_XOR_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @mv_xor_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_xor_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_xor_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mv_xor_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.mv_xor_device* %9, %struct.mv_xor_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MV_XOR_MAX_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.mv_xor_device*, %struct.mv_xor_device** %5, align 8
  %16 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %15, i32 0, i32 0
  %17 = load %struct.mv_xor_chan**, %struct.mv_xor_chan*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mv_xor_chan*, %struct.mv_xor_chan** %17, i64 %19
  %21 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %20, align 8
  store %struct.mv_xor_chan* %21, %struct.mv_xor_chan** %7, align 8
  %22 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %23 = icmp ne %struct.mv_xor_chan* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %36

25:                                               ; preds = %14
  %26 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %27 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %26)
  %28 = call i8* @readl_relaxed(i32 %27)
  %29 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %30 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %32 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %31)
  %33 = call i8* @readl_relaxed(i32 %32)
  %34 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %35 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %10

39:                                               ; preds = %10
  ret i32 0
}

declare dso_local %struct.mv_xor_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @readl_relaxed(i32) #1

declare dso_local i32 @XOR_CONFIG(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_MASK(%struct.mv_xor_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
