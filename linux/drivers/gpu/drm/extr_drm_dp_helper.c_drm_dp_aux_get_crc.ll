; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_get_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_aux_get_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }

@DP_TEST_SINK = common dso_local global i32 0, align 4
@DP_TEST_SINK_START = common dso_local global i32 0, align 4
@DP_TEST_SINK_MISC = common dso_local global i32 0, align 4
@DP_TEST_COUNT_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DP_TEST_CRC_R_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, i32*)* @drm_dp_aux_get_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_aux_get_crc(%struct.drm_dp_aux* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %10 = load i32, i32* @DP_TEST_SINK, align 4
  %11 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %9, i32 %10, i32* %6)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DP_TEST_SINK_START, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %25 = load i32, i32* @DP_TEST_SINK_MISC, align 4
  %26 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %24, i32 %25, i32* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DP_TEST_COUNT_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %37 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %46 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %48 = load i32, i32* @DP_TEST_CRC_R_CR, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @drm_dp_dpcd_read(%struct.drm_dp_aux* %47, i32 %48, i32* %49, i32 6)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %40, %29, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_dp_dpcd_read(%struct.drm_dp_aux*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
