; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_xor_device = type { i64, %struct.mv_xor_chan** }
%struct.mv_xor_chan = type { i32, i32 }
%struct.mbus_dram_target_info = type { i32 }

@MV_XOR_MAX_CHANNELS = common dso_local global i32 0, align 4
@XOR_ARMADA_37XX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_xor_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_resume(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv_xor_device*, align 8
  %5 = alloca %struct.mbus_dram_target_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_xor_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mv_xor_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.mv_xor_device* %9, %struct.mv_xor_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MV_XOR_MAX_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.mv_xor_device*, %struct.mv_xor_device** %4, align 8
  %16 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %15, i32 0, i32 1
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
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %27 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %30 = call i32 @XOR_CONFIG(%struct.mv_xor_chan* %29)
  %31 = call i32 @writel_relaxed(i32 %28, i32 %30)
  %32 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %33 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %7, align 8
  %36 = call i32 @XOR_INTR_MASK(%struct.mv_xor_chan* %35)
  %37 = call i32 @writel_relaxed(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.mv_xor_device*, %struct.mv_xor_device** %4, align 8
  %43 = getelementptr inbounds %struct.mv_xor_device, %struct.mv_xor_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XOR_ARMADA_37XX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.mv_xor_device*, %struct.mv_xor_device** %4, align 8
  %49 = call i32 @mv_xor_conf_mbus_windows_a3700(%struct.mv_xor_device* %48)
  store i32 0, i32* %2, align 4
  br label %59

50:                                               ; preds = %41
  %51 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %51, %struct.mbus_dram_target_info** %5, align 8
  %52 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %5, align 8
  %53 = icmp ne %struct.mbus_dram_target_info* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.mv_xor_device*, %struct.mv_xor_device** %4, align 8
  %56 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %5, align 8
  %57 = call i32 @mv_xor_conf_mbus_windows(%struct.mv_xor_device* %55, %struct.mbus_dram_target_info* %56)
  br label %58

58:                                               ; preds = %54, %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.mv_xor_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @XOR_CONFIG(%struct.mv_xor_chan*) #1

declare dso_local i32 @XOR_INTR_MASK(%struct.mv_xor_chan*) #1

declare dso_local i32 @mv_xor_conf_mbus_windows_a3700(%struct.mv_xor_device*) #1

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @mv_xor_conf_mbus_windows(%struct.mv_xor_device*, %struct.mbus_dram_target_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
