; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal_channel = type { i64, i64, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IMR_DELTA_BREAK_A = common dso_local global i32 0, align 4
@IMR_DELTA_BREAK_B = common dso_local global i32 0, align 4
@CR_CMD_RESET_BREAK_CHANGE = common dso_local global i32 0, align 4
@SR_TX_EMPTY = common dso_local global i32 0, align 4
@CR_DISABLE_TX = common dso_local global i32 0, align 4
@IPACK1_DEVICE_ID_SBS_OCTAL_485 = common dso_local global i64 0, align 8
@CR_CMD_NEGATE_RTSN = common dso_local global i32 0, align 4
@CR_ENABLE_RX = common dso_local global i32 0, align 4
@SR_RX_READY = common dso_local global i32 0, align 4
@SR_TX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoctal_channel*)* @ipoctal_irq_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_irq_channel(%struct.ipoctal_channel* %0) #0 {
  %2 = alloca %struct.ipoctal_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipoctal_channel* %0, %struct.ipoctal_channel** %2, align 8
  %5 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %5, i32 0, i32 6
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @ioread8(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %12 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %11, i32 0, i32 5
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i32 @ioread8(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IMR_DELTA_BREAK_A, align 4
  %19 = load i32, i32* @IMR_DELTA_BREAK_B, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @CR_CMD_RESET_BREAK_CHANGE, align 4
  %25 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %26 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %25, i32 0, i32 5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = call i32 @iowrite8(i32 %24, i32* %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SR_TX_EMPTY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  %37 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %38 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load i32, i32* @CR_DISABLE_TX, align 4
  %43 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %44 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %43, i32 0, i32 5
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = call i32 @iowrite8(i32 %42, i32* %47)
  %49 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %50 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPACK1_DEVICE_ID_SBS_OCTAL_485, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %41
  %55 = load i32, i32* @CR_CMD_NEGATE_RTSN, align 4
  %56 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %57 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %56, i32 0, i32 5
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @iowrite8(i32 %55, i32* %60)
  %62 = load i32, i32* @CR_ENABLE_RX, align 4
  %63 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %64 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %63, i32 0, i32 5
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @iowrite8(i32 %62, i32* %67)
  %69 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %70 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %54, %41
  br label %72

72:                                               ; preds = %71, %36, %31
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %75 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SR_RX_READY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ipoctal_irq_rx(%struct.ipoctal_channel* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %79, %72
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %91 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @SR_TX_READY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %102 = call i32 @ipoctal_irq_tx(%struct.ipoctal_channel* %101)
  br label %103

103:                                              ; preds = %100, %95, %88
  ret void
}

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ipoctal_irq_rx(%struct.ipoctal_channel*, i32) #1

declare dso_local i32 @ipoctal_irq_tx(%struct.ipoctal_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
