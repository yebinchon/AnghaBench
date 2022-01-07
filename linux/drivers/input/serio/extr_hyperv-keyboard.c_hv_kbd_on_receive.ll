; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_on_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.synth_kbd_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hv_kbd_dev = type { i32, i32, i32, i32, i32 }
%struct.synth_kbd_keystroke = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Illegal protocol response packet (len: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Illegal keyboard event packet (len: %d)\0A\00", align 1
@IS_E0 = common dso_local global i32 0, align 4
@XTKBD_EMUL0 = common dso_local global i32 0, align 4
@IS_E1 = common dso_local global i32 0, align 4
@XTKBD_EMUL1 = common dso_local global i32 0, align 4
@IS_BREAK = common dso_local global i32 0, align 4
@XTKBD_RELEASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unhandled message type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.synth_kbd_msg*, i32)* @hv_kbd_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kbd_on_receive(%struct.hv_device* %0, %struct.synth_kbd_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.synth_kbd_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_kbd_dev*, align 8
  %8 = alloca %struct.synth_kbd_keystroke*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.synth_kbd_msg* %1, %struct.synth_kbd_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %14 = call %struct.hv_kbd_dev* @hv_get_drvdata(%struct.hv_device* %13)
  store %struct.hv_kbd_dev* %14, %struct.hv_kbd_dev** %7, align 8
  %15 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %5, align 8
  %16 = getelementptr inbounds %struct.synth_kbd_msg, %struct.synth_kbd_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__le32_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %117 [
    i32 128, label %21
    i32 129, label %38
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %27 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %122

30:                                               ; preds = %21
  %31 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %32 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %31, i32 0, i32 4
  %33 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %5, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.synth_kbd_msg* %33, i32 4)
  %35 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %35, i32 0, i32 3
  %37 = call i32 @complete(i32* %36)
  br label %122

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %44 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %122

47:                                               ; preds = %38
  %48 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %5, align 8
  %49 = bitcast %struct.synth_kbd_msg* %48 to %struct.synth_kbd_keystroke*
  store %struct.synth_kbd_keystroke* %49, %struct.synth_kbd_keystroke** %8, align 8
  %50 = load %struct.synth_kbd_keystroke*, %struct.synth_kbd_keystroke** %8, align 8
  %51 = getelementptr inbounds %struct.synth_kbd_keystroke, %struct.synth_kbd_keystroke* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__le32_to_cpu(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @IS_E0, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %69 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XTKBD_EMUL0, align 4
  %72 = call i32 @serio_interrupt(i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IS_E1, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @XTKBD_EMUL1, align 4
  %83 = call i32 @serio_interrupt(i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.synth_kbd_keystroke*, %struct.synth_kbd_keystroke** %8, align 8
  %86 = getelementptr inbounds %struct.synth_kbd_keystroke, %struct.synth_kbd_keystroke* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__le16_to_cpu(i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @IS_BREAK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @XTKBD_RELEASE, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %84
  %98 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %99 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @serio_interrupt(i32 %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %97, %47
  %104 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %7, align 8
  %105 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @IS_BREAK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %114 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %113, i32 0, i32 0
  %115 = call i32 @pm_wakeup_hard_event(i32* %114)
  br label %116

116:                                              ; preds = %112, %103
  br label %122

117:                                              ; preds = %3
  %118 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %119 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %118, i32 0, i32 0
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %116, %42, %30, %25
  ret void
}

declare dso_local %struct.hv_kbd_dev* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.synth_kbd_msg*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_wakeup_hard_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
