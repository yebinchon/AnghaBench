; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal_channel = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.tty_port }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.tty_port = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@SR_ERROR = common dso_local global i32 0, align 4
@CR_CMD_RESET_ERR_STATUS = common dso_local global i32 0, align 4
@SR_OVERRUN_ERROR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@SR_PARITY_ERROR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@SR_FRAMING_ERROR = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@SR_RECEIVED_BREAK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoctal_channel*, i32)* @ipoctal_irq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_irq_rx(%struct.ipoctal_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoctal_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.ipoctal_channel* %0, %struct.ipoctal_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %9, i32 0, i32 4
  store %struct.tty_port* %10, %struct.tty_port** %5, align 8
  br label %11

11:                                               ; preds = %101, %2
  %12 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = call i8* @ioread8(i32* %16)
  %18 = ptrtoint i8* %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SR_ERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %11
  %25 = load i32, i32* @CR_CMD_RESET_ERR_STATUS, align 4
  %26 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @iowrite8(i32 %25, i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SR_OVERRUN_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %43 = load i8, i8* @TTY_OVERRUN, align 1
  %44 = call i32 @tty_insert_flip_char(%struct.tty_port* %42, i8 zeroext 0, i8 zeroext %43)
  br label %45

45:                                               ; preds = %36, %24
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SR_PARITY_ERROR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i8, i8* @TTY_PARITY, align 1
  store i8 %56, i8* %7, align 1
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SR_FRAMING_ERROR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %64 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i8, i8* @TTY_FRAME, align 1
  store i8 %68, i8* %7, align 1
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SR_RECEIVED_BREAK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %76 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load i8, i8* @TTY_BREAK, align 1
  store i8 %80, i8* %7, align 1
  br label %81

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %11
  %83 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %84 = load i8, i8* %6, align 1
  %85 = load i8, i8* %7, align 1
  %86 = call i32 @tty_insert_flip_char(%struct.tty_port* %83, i8 zeroext %84, i8 zeroext %85)
  %87 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %88 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i8* @ioread8(i32* %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %95 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i8* @ioread8(i32* %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %3, align 8
  %104 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %11, label %108

108:                                              ; preds = %101
  %109 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %110 = call i32 @tty_flip_buffer_push(%struct.tty_port* %109)
  ret void
}

declare dso_local i8* @ioread8(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
