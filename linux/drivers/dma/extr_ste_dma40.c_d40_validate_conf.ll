; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_validate_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_validate_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.stedma40_chan_cfg = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STEDMA40_MODE_LOGICAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid direction.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid device type (%d)\0A\00", align 1
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"periph to periph not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"src (burst x width) != dst (burst x width)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*, %struct.stedma40_chan_cfg*)* @d40_validate_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_validate_conf(%struct.d40_chan* %0, %struct.stedma40_chan_cfg* %1) #0 {
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca %struct.stedma40_chan_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  store %struct.stedma40_chan_cfg* %1, %struct.stedma40_chan_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STEDMA40_MODE_LOGICAL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %19 = call i32 (%struct.d40_chan*, i8*, ...) @chan_err(%struct.d40_chan* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %30 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %28, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %43 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %38, %35
  %49 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %38, %25
  %54 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %55 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.d40_chan*, i8*, ...) @chan_err(%struct.d40_chan* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %69 = call i32 (%struct.d40_chan*, i8*, ...) @chan_err(%struct.d40_chan* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @d40_psize_2_burst_size(i32 %73, i32 %77)
  %79 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %78, %82
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @d40_psize_2_burst_size(i32 %84, i32 %88)
  %90 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %91 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  %95 = icmp ne i32 %83, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %72
  %97 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %98 = call i32 (%struct.d40_chan*, i8*, ...) @chan_err(%struct.d40_chan* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %96, %72
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @chan_err(%struct.d40_chan*, i8*, ...) #1

declare dso_local i32 @d40_psize_2_burst_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
