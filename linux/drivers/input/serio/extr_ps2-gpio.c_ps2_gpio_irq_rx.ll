; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_irq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_irq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2_gpio_data = type { i8, i8, i32, i32, i32, i32 }

@ps2_gpio_irq_rx.old_jiffies = internal global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"RX: timeout, probably we missed an interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"RX: failed to get data gpio val: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RX: start bit should be low\0A\00", align 1
@SERIO_PARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"RX: parity error\0A\00", align 1
@PS2_DEV_RET_NACK = common dso_local global i8 0, align 1
@PS2_DEV_RET_ACK = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RX: sending byte 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RX: stop bit should be high\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"RX: got out of sync with the device\0A\00", align 1
@PS2_CMD_RESEND = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2_gpio_data*)* @ps2_gpio_irq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_gpio_irq_rx(%struct.ps2_gpio_data* %0) #0 {
  %2 = alloca %struct.ps2_gpio_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ps2_gpio_data* %0, %struct.ps2_gpio_data** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %8 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  store i8 %9, i8* %3, align 1
  %10 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %11 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %4, align 1
  %13 = load i64, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  %20 = sub i64 %18, %19
  %21 = call i64 @usecs_to_jiffies(i32 100)
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %25 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %147

28:                                               ; preds = %17
  %29 = load i64, i64* @jiffies, align 8
  store i64 %29, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  %30 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %31 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gpiod_get_value(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %41 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %147

45:                                               ; preds = %28
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  switch i32 %47, label %139 [
    i32 129, label %48
    i32 138, label %58
    i32 137, label %58
    i32 136, label %58
    i32 135, label %58
    i32 134, label %58
    i32 133, label %58
    i32 132, label %58
    i32 131, label %58
    i32 130, label %72
    i32 128, label %126
  ]

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %54 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %147

57:                                               ; preds = %48
  br label %144

58:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 %62, %65
  %67 = load i8, i8* %3, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %3, align 1
  br label %71

71:                                               ; preds = %61, %58
  br label %144

72:                                               ; preds = %45
  %73 = load i8, i8* %3, align 1
  %74 = call i32 @hweight8(i8 zeroext %73)
  %75 = and i32 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = xor i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @SERIO_PARITY, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %84 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_warn(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %88 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  br label %147

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %95 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %93
  %99 = load i8, i8* %3, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @PS2_DEV_RET_NACK, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %147

105:                                              ; preds = %98
  %106 = load i8, i8* %3, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @PS2_DEV_RET_ACK, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %144

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %93
  %115 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %116 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i8, i8* %3, align 1
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @serio_interrupt(i32 %117, i8 zeroext %118, i32 %119)
  %121 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %122 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i8, i8* %3, align 1
  %125 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %124)
  br label %144

126:                                              ; preds = %45
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %135 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %147

138:                                              ; preds = %126
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  store i64 0, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  br label %153

139:                                              ; preds = %45
  %140 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %141 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %147

144:                                              ; preds = %114, %111, %71, %57
  %145 = load i8, i8* %4, align 1
  %146 = add i8 %145, 1
  store i8 %146, i8* %4, align 1
  br label %153

147:                                              ; preds = %139, %133, %104, %91, %52, %39, %23
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  store i64 0, i64* @ps2_gpio_irq_rx.old_jiffies, align 8
  %148 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %149 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PS2_CMD_RESEND, align 4
  %152 = call i32 @__ps2_gpio_write(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %144, %138
  %154 = load i8, i8* %4, align 1
  %155 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %156 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %155, i32 0, i32 1
  store i8 %154, i8* %156, align 1
  %157 = load i8, i8* %3, align 1
  %158 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %159 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %158, i32 0, i32 0
  store i8 %157, i8* %159, align 4
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %160
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hweight8(i8 zeroext) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext) #1

declare dso_local i32 @__ps2_gpio_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
