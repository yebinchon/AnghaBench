; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_amimouse.c_amimouse_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_amimouse.c_amimouse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.input_dev = type { i32 }

@amiga_custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 2
@amimouse_lastx = common dso_local global i16 0, align 2
@amimouse_lasty = common dso_local global i16 0, align 2
@IRQ_AMIGA_VERTB = common dso_local global i32 0, align 4
@amimouse_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"amimouse\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't allocate irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @amimouse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amimouse_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 0), align 2
  store i16 %5, i16* %3, align 2
  %6 = load i16, i16* %3, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* @amimouse_lastx, align 2
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = ashr i32 %11, 8
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* @amimouse_lasty, align 2
  %14 = load i32, i32* @IRQ_AMIGA_VERTB, align 4
  %15 = load i32, i32* @amimouse_interrupt, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %17 = call i32 @request_irq(i32 %14, i32 %15, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.input_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i32, i32* @IRQ_AMIGA_VERTB, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
