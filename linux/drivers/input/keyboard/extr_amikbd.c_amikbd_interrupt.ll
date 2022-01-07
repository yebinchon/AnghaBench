; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_amikbd.c_amikbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_amikbd.c_amikbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }
%struct.input_dev = type { i32 }

@ciaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@amikbd_messages = common dso_local global i32* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amikbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amikbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.input_dev*
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 0), align 4
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %15 = or i32 %14, 64
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %16 = call i32 @udelay(i32 85)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %18 = and i32 %17, -65
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = ashr i32 %27, 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 120
  br i1 %32, label %33, label %52

33:                                               ; preds = %2
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 98
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %39 = load i8, i8* %6, align 1
  %40 = call i32 @input_report_key(%struct.input_dev* %38, i8 zeroext %39, i8 zeroext 1)
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @input_report_key(%struct.input_dev* %41, i8 zeroext %42, i8 zeroext 0)
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = load i8, i8* %6, align 1
  %47 = load i8, i8* %7, align 1
  %48 = call i32 @input_report_key(%struct.input_dev* %45, i8 zeroext %46, i8 zeroext %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %51 = call i32 @input_sync(%struct.input_dev* %50)
  br label %61

52:                                               ; preds = %2
  %53 = load i32*, i32** @amikbd_messages, align 8
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 120
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @printk(i32 %59)
  br label %61

61:                                               ; preds = %52, %49
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @printk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
