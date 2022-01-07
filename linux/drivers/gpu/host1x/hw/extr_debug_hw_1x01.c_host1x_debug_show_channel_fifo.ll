; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_channel_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_channel_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.host1x_channel = type { i32 }
%struct.output = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%u: fifo:\0A\00", align 1
@HOST1X_CHANNEL_FIFOSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"FIFOSTAT %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@HOST1X_SYNC_CFPEEK_CTRL = common dso_local global i32 0, align 4
@HOST1X_SYNC_CFPEEK_PTRS = common dso_local global i32 0, align 4
@HOST1X_SYNC_CFPEEK_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%08x: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c", ...])\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_channel*, %struct.output*)* @host1x_debug_show_channel_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debug_show_channel_fifo(%struct.host1x* %0, %struct.host1x_channel* %1, %struct.output* %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_channel*, align 8
  %6 = alloca %struct.output*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_channel* %1, %struct.host1x_channel** %5, align 8
  store %struct.output* %2, %struct.output** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.output*, %struct.output** %6, align 8
  %14 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %15 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %19 = load i32, i32* @HOST1X_CHANNEL_FIFOSTAT, align 4
  %20 = call i64 @host1x_ch_readl(%struct.host1x_channel* %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.output*, %struct.output** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @HOST1X_CHANNEL_FIFOSTAT_CFEMPTY_V(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.output*, %struct.output** %6, align 8
  %29 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %124

30:                                               ; preds = %3
  %31 = load %struct.host1x*, %struct.host1x** %4, align 8
  %32 = load i32, i32* @HOST1X_SYNC_CFPEEK_CTRL, align 4
  %33 = call i32 @host1x_sync_writel(%struct.host1x* %31, i32 0, i32 %32)
  %34 = load %struct.host1x*, %struct.host1x** %4, align 8
  %35 = call i32 @HOST1X_SYNC_CFPEEK_CTRL_ENA_F(i32 1)
  %36 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %37 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @HOST1X_SYNC_CFPEEK_CTRL_CHANNR_F(i32 %38)
  %40 = or i32 %35, %39
  %41 = load i32, i32* @HOST1X_SYNC_CFPEEK_CTRL, align 4
  %42 = call i32 @host1x_sync_writel(%struct.host1x* %34, i32 %40, i32 %41)
  %43 = load %struct.host1x*, %struct.host1x** %4, align 8
  %44 = load i32, i32* @HOST1X_SYNC_CFPEEK_PTRS, align 4
  %45 = call i64 @host1x_sync_readl(%struct.host1x* %43, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @HOST1X_SYNC_CFPEEK_PTRS_CF_RD_PTR_V(i64 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @HOST1X_SYNC_CFPEEK_PTRS_CF_WR_PTR_V(i64 %48)
  store i64 %49, i64* %9, align 8
  %50 = load %struct.host1x*, %struct.host1x** %4, align 8
  %51 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %52 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @HOST1X_SYNC_CF_SETUP(i32 %53)
  %55 = call i64 @host1x_sync_readl(%struct.host1x* %50, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @HOST1X_SYNC_CF_SETUP_BASE_V(i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @HOST1X_SYNC_CF_SETUP_LIMIT_V(i64 %58)
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %108, %30
  %61 = load %struct.host1x*, %struct.host1x** %4, align 8
  %62 = load i32, i32* @HOST1X_SYNC_CFPEEK_CTRL, align 4
  %63 = call i32 @host1x_sync_writel(%struct.host1x* %61, i32 0, i32 %62)
  %64 = load %struct.host1x*, %struct.host1x** %4, align 8
  %65 = call i32 @HOST1X_SYNC_CFPEEK_CTRL_ENA_F(i32 1)
  %66 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %67 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @HOST1X_SYNC_CFPEEK_CTRL_CHANNR_F(i32 %68)
  %70 = or i32 %65, %69
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @HOST1X_SYNC_CFPEEK_CTRL_ADDR_F(i64 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @HOST1X_SYNC_CFPEEK_CTRL, align 4
  %75 = call i32 @host1x_sync_writel(%struct.host1x* %64, i32 %73, i32 %74)
  %76 = load %struct.host1x*, %struct.host1x** %4, align 8
  %77 = load i32, i32* @HOST1X_SYNC_CFPEEK_READ, align 4
  %78 = call i64 @host1x_sync_readl(%struct.host1x* %76, i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %60
  %82 = load %struct.output*, %struct.output** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load %struct.output*, %struct.output** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @show_channel_command(%struct.output* %85, i64 %86, i32* null)
  store i32 %87, i32* %12, align 4
  br label %98

88:                                               ; preds = %60
  %89 = load %struct.output*, %struct.output** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = icmp ugt i32 %91, 1
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %95 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %90, i8* %94)
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %88, %81
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %8, align 8
  br label %107

104:                                              ; preds = %98
  %105 = load i64, i64* %8, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %104, %102
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %60, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.output*, %struct.output** %6, align 8
  %117 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.output*, %struct.output** %6, align 8
  %120 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %121 = load %struct.host1x*, %struct.host1x** %4, align 8
  %122 = load i32, i32* @HOST1X_SYNC_CFPEEK_CTRL, align 4
  %123 = call i32 @host1x_sync_writel(%struct.host1x* %121, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %118, %27
  ret void
}

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i64 @host1x_ch_readl(%struct.host1x_channel*, i32) #1

declare dso_local i64 @HOST1X_CHANNEL_FIFOSTAT_CFEMPTY_V(i64) #1

declare dso_local i32 @host1x_sync_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @HOST1X_SYNC_CFPEEK_CTRL_ENA_F(i32) #1

declare dso_local i32 @HOST1X_SYNC_CFPEEK_CTRL_CHANNR_F(i32) #1

declare dso_local i64 @host1x_sync_readl(%struct.host1x*, i32) #1

declare dso_local i64 @HOST1X_SYNC_CFPEEK_PTRS_CF_RD_PTR_V(i64) #1

declare dso_local i64 @HOST1X_SYNC_CFPEEK_PTRS_CF_WR_PTR_V(i64) #1

declare dso_local i32 @HOST1X_SYNC_CF_SETUP(i32) #1

declare dso_local i64 @HOST1X_SYNC_CF_SETUP_BASE_V(i64) #1

declare dso_local i64 @HOST1X_SYNC_CF_SETUP_LIMIT_V(i64) #1

declare dso_local i32 @HOST1X_SYNC_CFPEEK_CTRL_ADDR_F(i64) #1

declare dso_local i32 @show_channel_command(%struct.output*, i64, i32*) #1

declare dso_local i32 @host1x_debug_cont(%struct.output*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
