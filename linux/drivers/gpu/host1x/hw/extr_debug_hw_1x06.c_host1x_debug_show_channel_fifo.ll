; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x06.c_host1x_debug_show_channel_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x06.c_host1x_debug_show_channel_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.host1x_channel = type { i32 }
%struct.output = type { i32 }

@INVALID_PAYLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%u: fifo:\0A\00", align 1
@HOST1X_CHANNEL_CMDFIFO_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CMDFIFO_STAT %08x\0A\00", align 1
@HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@HOST1X_CHANNEL_CMDFIFO_RDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"CMDFIFO_RDATA %08x\0A\00", align 1
@HOST1X_HV_ICG_EN_OVERRIDE = common dso_local global i32 0, align 4
@HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE = common dso_local global i32 0, align 4
@HOST1X_HV_CMDFIFO_PEEK_CTRL = common dso_local global i32 0, align 4
@HOST1X_HV_CMDFIFO_PEEK_PTRS = common dso_local global i32 0, align 4
@HOST1X_HV_CMDFIFO_PEEK_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%03x 0x%08x: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"])\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c", ...])\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_channel*, %struct.output*)* @host1x_debug_show_channel_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debug_show_channel_fifo(%struct.host1x* %0, %struct.host1x_channel* %1, %struct.output* %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_channel*, align 8
  %6 = alloca %struct.output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.host1x_channel* %1, %struct.host1x_channel** %5, align 8
  store %struct.output* %2, %struct.output** %6, align 8
  %14 = load i32, i32* @INVALID_PAYLOAD, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.output*, %struct.output** %6, align 8
  %16 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %17 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %21 = load i32, i32* @HOST1X_CHANNEL_CMDFIFO_STAT, align 4
  %22 = call i32 @host1x_ch_readl(%struct.host1x_channel* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.output*, %struct.output** %6, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @HOST1X_CHANNEL_CMDFIFO_STAT_EMPTY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.output*, %struct.output** %6, align 8
  %32 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %145

33:                                               ; preds = %3
  %34 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %35 = load i32, i32* @HOST1X_CHANNEL_CMDFIFO_RDATA, align 4
  %36 = call i32 @host1x_ch_readl(%struct.host1x_channel* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.output*, %struct.output** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.host1x*, %struct.host1x** %4, align 8
  %41 = load i32, i32* @HOST1X_HV_ICG_EN_OVERRIDE, align 4
  %42 = call i32 @host1x_hypervisor_writel(%struct.host1x* %40, i32 1, i32 %41)
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %47 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load %struct.host1x*, %struct.host1x** %4, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_CTRL, align 4
  %55 = call i32 @host1x_hypervisor_writel(%struct.host1x* %52, i32 %53, i32 %54)
  %56 = load %struct.host1x*, %struct.host1x** %4, align 8
  %57 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_PTRS, align 4
  %58 = call i32 @host1x_hypervisor_readl(%struct.host1x* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @HOST1X_HV_CMDFIFO_PEEK_PTRS_RD_PTR_V(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @HOST1X_HV_CMDFIFO_PEEK_PTRS_WR_PTR_V(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.host1x*, %struct.host1x** %4, align 8
  %64 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %65 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @HOST1X_HV_CMDFIFO_SETUP(i32 %66)
  %68 = call i32 @host1x_hypervisor_readl(%struct.host1x* %63, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @HOST1X_HV_CMDFIFO_SETUP_BASE_V(i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @HOST1X_HV_CMDFIFO_SETUP_LIMIT_V(i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %126, %33
  store i32 0, i32* %13, align 4
  %74 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_CTRL_ENABLE, align 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load %struct.host1x_channel*, %struct.host1x_channel** %5, align 8
  %78 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @HOST1X_HV_CMDFIFO_PEEK_CTRL_ADDR(i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load %struct.host1x*, %struct.host1x** %4, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_CTRL, align 4
  %90 = call i32 @host1x_hypervisor_writel(%struct.host1x* %87, i32 %88, i32 %89)
  %91 = load %struct.host1x*, %struct.host1x** %4, align 8
  %92 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_READ, align 4
  %93 = call i32 @host1x_hypervisor_readl(%struct.host1x* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %73
  %97 = load %struct.output*, %struct.output** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.output*, %struct.output** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @show_channel_command(%struct.output* %103, i32 %104, i32* %11)
  store i32 %105, i32* %12, align 4
  br label %116

106:                                              ; preds = %73
  %107 = load %struct.output*, %struct.output** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ugt i32 %109, 1
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %113 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %108, i8* %112)
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %106, %96
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %7, align 4
  br label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %122, %120
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %73, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.output*, %struct.output** %6, align 8
  %135 = call i32 (%struct.output*, i8*, ...) @host1x_debug_cont(%struct.output* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.output*, %struct.output** %6, align 8
  %138 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %139 = load %struct.host1x*, %struct.host1x** %4, align 8
  %140 = load i32, i32* @HOST1X_HV_CMDFIFO_PEEK_CTRL, align 4
  %141 = call i32 @host1x_hypervisor_writel(%struct.host1x* %139, i32 0, i32 %140)
  %142 = load %struct.host1x*, %struct.host1x** %4, align 8
  %143 = load i32, i32* @HOST1X_HV_ICG_EN_OVERRIDE, align 4
  %144 = call i32 @host1x_hypervisor_writel(%struct.host1x* %142, i32 0, i32 %143)
  br label %145

145:                                              ; preds = %136, %30
  ret void
}

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @host1x_ch_readl(%struct.host1x_channel*, i32) #1

declare dso_local i32 @host1x_hypervisor_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_PEEK_CTRL_CHANNEL(i32) #1

declare dso_local i32 @host1x_hypervisor_readl(%struct.host1x*, i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_PEEK_PTRS_RD_PTR_V(i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_PEEK_PTRS_WR_PTR_V(i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_SETUP(i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_SETUP_BASE_V(i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_SETUP_LIMIT_V(i32) #1

declare dso_local i32 @HOST1X_HV_CMDFIFO_PEEK_CTRL_ADDR(i32) #1

declare dso_local i32 @show_channel_command(%struct.output*, i32, i32*) #1

declare dso_local i32 @host1x_debug_cont(%struct.output*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
