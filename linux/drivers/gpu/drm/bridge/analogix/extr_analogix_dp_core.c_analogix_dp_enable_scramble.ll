; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_scramble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_scramble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@DP_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*, i32)* @analogix_dp_enable_scramble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_enable_scramble(%struct.analogix_dp_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %12 = call i32 @analogix_dp_enable_scrambling(%struct.analogix_dp_device* %11)
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 0
  %15 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %16 = call i32 @drm_dp_dpcd_readb(i32* %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %10
  %22 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %22, i32 0, i32 0
  %24 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @drm_dp_dpcd_writeb(i32* %23, i32 %24, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %32 = call i32 @analogix_dp_disable_scrambling(%struct.analogix_dp_device* %31)
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 0
  %35 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %36 = call i32 @drm_dp_dpcd_readb(i32* %34, i32 %35, i32* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %30
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %43 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %42, i32 0, i32 0
  %44 = load i32, i32* @DP_TRAINING_PATTERN_SET, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @drm_dp_dpcd_writeb(i32* %43, i32 %44, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %41, %21
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  br label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %39, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @analogix_dp_enable_scrambling(%struct.analogix_dp_device*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @analogix_dp_disable_scrambling(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
