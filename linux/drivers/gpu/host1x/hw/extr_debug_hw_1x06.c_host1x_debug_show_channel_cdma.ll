; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x06.c_host1x_debug_show_channel_cdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x06.c_host1x_debug_show_channel_cdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.host1x_channel = type { %struct.host1x_cdma, i32, i32 }
%struct.host1x_cdma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.output = type { i32 }

@HOST1X_CHANNEL_DMAPUT = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMAGET = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMACTRL = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_CMDP_OFFSET = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_CMDP_CLASS = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_CHANNELSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%u-%s: \00", align 1
@HOST1X_CHANNEL_DMACTRL_DMASTOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"inactive\0A\0A\00", align 1
@HOST1X_CLASS_HOST1X = common dso_local global i64 0, align 8
@HOST1X_UCLASS_WAIT_SYNCPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"waiting on syncpt\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"active class %02x, offset %04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DMAPUT %08x, DMAGET %08x, DMACTL %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CHANNELSTAT %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_channel*, %struct.output*)* @host1x_debug_show_channel_cdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debug_show_channel_cdma(%struct.host1x* %0, %struct.host1x_channel* %1, %struct.output* %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_channel*, align 8
  %6 = alloca %struct.output*, align 8
  %7 = alloca %struct.host1x_cdma*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_channel* %1, %struct.host1x_channel** %5, align 8
  store %struct.output* %2, %struct.output** %6, align 8
  %14 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %15 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %14, i32 0, i32 0
  store %struct.host1x_cdma* %15, %struct.host1x_cdma** %7, align 8
  %16 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %17 = load i32, i32* @HOST1X_CHANNEL_DMAPUT, align 4
  %18 = call i64 @host1x_ch_readl(%struct.host1x_channel* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %20 = load i32, i32* @HOST1X_CHANNEL_DMAGET, align 4
  %21 = call i64 @host1x_ch_readl(%struct.host1x_channel* %19, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %23 = load i32, i32* @HOST1X_CHANNEL_DMACTRL, align 4
  %24 = call i64 @host1x_ch_readl(%struct.host1x_channel* %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %26 = load i32, i32* @HOST1X_CHANNEL_CMDP_OFFSET, align 4
  %27 = call i64 @host1x_ch_readl(%struct.host1x_channel* %25, i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %29 = load i32, i32* @HOST1X_CHANNEL_CMDP_CLASS, align 4
  %30 = call i64 @host1x_ch_readl(%struct.host1x_channel* %28, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %32 = load i32, i32* @HOST1X_CHANNEL_CHANNELSTAT, align 4
  %33 = call i64 @host1x_ch_readl(%struct.host1x_channel* %31, i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.output*, %struct.output** %6, align 8
  %35 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %36 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %39 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_name(i32 %40)
  %42 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @HOST1X_CHANNEL_DMACTRL_DMASTOP, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %3
  %48 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %49 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47, %3
  %55 = load %struct.output*, %struct.output** %6, align 8
  %56 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %87

57:                                               ; preds = %47
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @HOST1X_CLASS_HOST1X, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @HOST1X_UCLASS_WAIT_SYNCPT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.output*, %struct.output** %6, align 8
  %67 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %73

68:                                               ; preds = %61, %57
  %69 = load %struct.output*, %struct.output** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.output*, %struct.output** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %75, i64 %76, i64 %77)
  %79 = load %struct.output*, %struct.output** %6, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load %struct.output*, %struct.output** %6, align 8
  %83 = load %struct.host1x_cdma*, %struct.host1x_cdma** %7, align 8
  %84 = call i32 @show_channel_gathers(%struct.output* %82, %struct.host1x_cdma* %83)
  %85 = load %struct.output*, %struct.output** %6, align 8
  %86 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %73, %54
  ret void
}

declare dso_local i64 @host1x_ch_readl(%struct.host1x_channel*, i32) #1

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @show_channel_gathers(%struct.output*, %struct.host1x_cdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
