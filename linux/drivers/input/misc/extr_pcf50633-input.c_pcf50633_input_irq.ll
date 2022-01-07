; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf50633-input.c_pcf50633_input_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcf50633-input.c_pcf50633_input_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633_input = type { i32, i32 }

@PCF50633_REG_OOCSTAT = common dso_local global i32 0, align 4
@PCF50633_OOCSTAT_ONKEY = common dso_local global i32 0, align 4
@PCF50633_IRQ_ONKEYF = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@PCF50633_IRQ_ONKEYR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pcf50633_input_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_input_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633_input*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pcf50633_input*
  store %struct.pcf50633_input* %8, %struct.pcf50633_input** %5, align 8
  %9 = load %struct.pcf50633_input*, %struct.pcf50633_input** %5, align 8
  %10 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCF50633_REG_OOCSTAT, align 4
  %13 = call i32 @pcf50633_reg_read(i32 %11, i32 %12)
  %14 = load i32, i32* @PCF50633_OOCSTAT_ONKEY, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PCF50633_IRQ_ONKEYF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.pcf50633_input*, %struct.pcf50633_input** %5, align 8
  %24 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KEY_POWER, align 4
  %27 = call i32 @input_report_key(i32 %25, i32 %26, i32 1)
  br label %42

28:                                               ; preds = %19, %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PCF50633_IRQ_ONKEYR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.pcf50633_input*, %struct.pcf50633_input** %5, align 8
  %37 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KEY_POWER, align 4
  %40 = call i32 @input_report_key(i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %35, %32, %28
  br label %42

42:                                               ; preds = %41, %22
  %43 = load %struct.pcf50633_input*, %struct.pcf50633_input** %5, align 8
  %44 = getelementptr inbounds %struct.pcf50633_input, %struct.pcf50633_input* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_sync(i32 %45)
  ret void
}

declare dso_local i32 @pcf50633_reg_read(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
