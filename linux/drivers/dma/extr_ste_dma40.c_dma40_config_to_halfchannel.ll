; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma40_config_to_halfchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma40_config_to_halfchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i32 }
%struct.stedma40_half_channel_info = type { i32, i32 }

@STEDMA40_PSIZE_LOG_16 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_LOG_8 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_LOG_4 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_LOG_1 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_PHY_16 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_PHY_8 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_PHY_4 = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_PHY_1 = common dso_local global i32 0, align 4
@STEDMA40_NO_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*, %struct.stedma40_half_channel_info*, i32)* @dma40_config_to_halfchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma40_config_to_halfchannel(%struct.d40_chan* %0, %struct.stedma40_half_channel_info* %1, i32 %2) #0 {
  %4 = alloca %struct.d40_chan*, align 8
  %5 = alloca %struct.stedma40_half_channel_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %4, align 8
  store %struct.stedma40_half_channel_info* %1, %struct.stedma40_half_channel_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %9 = call i64 @chan_is_logical(%struct.d40_chan* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 16
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @STEDMA40_PSIZE_LOG_16, align 4
  store i32 %15, i32* %7, align 4
  br label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @STEDMA40_PSIZE_LOG_8, align 4
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @STEDMA40_PSIZE_LOG_4, align 4
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @STEDMA40_PSIZE_LOG_1, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %14
  br label %51

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 16
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @STEDMA40_PSIZE_PHY_16, align 4
  store i32 %35, i32* %7, align 4
  br label %50

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @STEDMA40_PSIZE_PHY_8, align 4
  store i32 %40, i32* %7, align 4
  br label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @STEDMA40_PSIZE_PHY_4, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @STEDMA40_PSIZE_PHY_1, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info** %5, align 8
  %54 = getelementptr inbounds %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @STEDMA40_NO_FLOW_CTRL, align 4
  %56 = load %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info** %5, align 8
  %57 = getelementptr inbounds %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret i32 0
}

declare dso_local i64 @chan_is_logical(%struct.d40_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
