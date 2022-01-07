; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_channel_cdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_channel_cdma.c"
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
@.str = private unnamed_addr constant [8 x i8] c"%u-%s: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"inactive\0A\0A\00", align 1
@HOST1X_CLASS_HOST1X = common dso_local global i32 0, align 4
@HOST1X_UCLASS_WAIT_SYNCPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"waiting on syncpt %d val %d\0A\00", align 1
@HOST1X_UCLASS_WAIT_SYNCPT_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"waiting on syncpt %d val %d (base %d = %d; offset = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"active class %02x, offset %04x, val %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DMAPUT %08x, DMAGET %08x, DMACTL %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"CBREAD %08x, CBSTAT %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_channel*, %struct.output*)* @host1x_debug_show_channel_cdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debug_show_channel_cdma(%struct.host1x* %0, %struct.host1x_channel* %1, %struct.output* %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_channel*, align 8
  %6 = alloca %struct.output*, align 8
  %7 = alloca %struct.host1x_cdma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_channel* %1, %struct.host1x_channel** %5, align 8
  store %struct.output* %2, %struct.output** %6, align 8
  %16 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %17 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %16, i32 0, i32 0
  store %struct.host1x_cdma* %17, %struct.host1x_cdma** %7, align 8
  %18 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %19 = load i32, i32* @HOST1X_CHANNEL_DMAPUT, align 4
  %20 = call i32 @host1x_ch_readl(%struct.host1x_channel* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %22 = load i32, i32* @HOST1X_CHANNEL_DMAGET, align 4
  %23 = call i32 @host1x_ch_readl(%struct.host1x_channel* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %25 = load i32, i32* @HOST1X_CHANNEL_DMACTRL, align 4
  %26 = call i32 @host1x_ch_readl(%struct.host1x_channel* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.host1x*, %struct.host1x** %4, align 8
  %28 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %29 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @HOST1X_SYNC_CBREAD(i32 %30)
  %32 = call i32 @host1x_sync_readl(%struct.host1x* %27, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.host1x*, %struct.host1x** %4, align 8
  %34 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %35 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @HOST1X_SYNC_CBSTAT(i32 %36)
  %38 = call i32 @host1x_sync_readl(%struct.host1x* %33, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.output*, %struct.output** %6, align 8
  %40 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %41 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %44 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_name(i32 %45)
  %47 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @HOST1X_CHANNEL_DMACTRL_DMASTOP_V(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %3
  %52 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %53 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51, %3
  %59 = load %struct.output*, %struct.output** %6, align 8
  %60 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %132

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @HOST1X_SYNC_CBSTAT_CBCLASS_V(i32 %62)
  %64 = load i32, i32* @HOST1X_CLASS_HOST1X, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @HOST1X_SYNC_CBSTAT_CBOFFSET_V(i32 %67)
  %69 = load i32, i32* @HOST1X_UCLASS_WAIT_SYNCPT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.output*, %struct.output** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = ashr i32 %73, 24
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 16777215
  %77 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %76)
  br label %117

78:                                               ; preds = %66, %61
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @HOST1X_SYNC_CBSTAT_CBCLASS_V(i32 %79)
  %81 = load i32, i32* @HOST1X_CLASS_HOST1X, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %78
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @HOST1X_SYNC_CBSTAT_CBOFFSET_V(i32 %84)
  %86 = load i32, i32* @HOST1X_UCLASS_WAIT_SYNCPT_BASE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 16
  %91 = and i32 %90, 255
  store i32 %91, i32* %14, align 4
  %92 = load %struct.host1x*, %struct.host1x** %4, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @HOST1X_SYNC_SYNCPT_BASE(i32 %93)
  %95 = call i32 @host1x_sync_readl(%struct.host1x* %92, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 65535
  store i32 %97, i32* %13, align 4
  %98 = load %struct.output*, %struct.output** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = ashr i32 %99, 24
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %98, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %116

108:                                              ; preds = %83, %78
  %109 = load %struct.output*, %struct.output** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @HOST1X_SYNC_CBSTAT_CBCLASS_V(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @HOST1X_SYNC_CBSTAT_CBOFFSET_V(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %108, %88
  br label %117

117:                                              ; preds = %116, %71
  %118 = load %struct.output*, %struct.output** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  %123 = load %struct.output*, %struct.output** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.output*, %struct.output** %6, align 8
  %128 = load %struct.host1x_cdma*, %struct.host1x_cdma** %7, align 8
  %129 = call i32 @show_channel_gathers(%struct.output* %127, %struct.host1x_cdma* %128)
  %130 = load %struct.output*, %struct.output** %6, align 8
  %131 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %117, %58
  ret void
}

declare dso_local i32 @host1x_ch_readl(%struct.host1x_channel*, i32) #1

declare dso_local i32 @host1x_sync_readl(%struct.host1x*, i32) #1

declare dso_local i32 @HOST1X_SYNC_CBREAD(i32) #1

declare dso_local i32 @HOST1X_SYNC_CBSTAT(i32) #1

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @HOST1X_CHANNEL_DMACTRL_DMASTOP_V(i32) #1

declare dso_local i32 @HOST1X_SYNC_CBSTAT_CBCLASS_V(i32) #1

declare dso_local i32 @HOST1X_SYNC_CBSTAT_CBOFFSET_V(i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_BASE(i32) #1

declare dso_local i32 @show_channel_gathers(%struct.output*, %struct.host1x_cdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
