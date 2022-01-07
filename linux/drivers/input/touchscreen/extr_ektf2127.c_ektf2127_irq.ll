; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ektf2127.c_ektf2127_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ektf2127_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EKTF2127_TOUCH_REPORT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading touch data: %d\0A\00", align 1
@EKTF2127_ENV_NOISY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Environment is electrically noisy\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unexpected packet header byte %#02x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ektf2127_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ektf2127_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ektf2127_ts*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ektf2127_ts*
  store %struct.ektf2127_ts* %11, %struct.ektf2127_ts** %5, align 8
  %12 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %5, align 8
  %13 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i32, i32* @EKTF2127_TOUCH_REPORT_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %5, align 8
  %21 = getelementptr inbounds %struct.ektf2127_ts, %struct.ektf2127_ts* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* @EKTF2127_TOUCH_REPORT_SIZE, align 4
  %24 = call i32 @i2c_master_recv(%struct.TYPE_2__* %22, i8* %19, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EKTF2127_TOUCH_REPORT_SIZE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = trunc i32 %30 to i8
  %32 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  br label %58

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, i8* %19, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  switch i32 %36, label %52 [
    i32 128, label %37
    i32 129, label %40
    i32 130, label %51
    i32 131, label %51
  ]

37:                                               ; preds = %33
  %38 = load %struct.ektf2127_ts*, %struct.ektf2127_ts** %5, align 8
  %39 = call i32 @ektf2127_report_event(%struct.ektf2127_ts* %38, i8* %19)
  br label %57

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, i8* %19, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @EKTF2127_ENV_NOISY, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  br label %57

51:                                               ; preds = %33, %33
  br label %57

52:                                               ; preds = %33
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = getelementptr inbounds i8, i8* %19, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8 signext %55)
  br label %57

57:                                               ; preds = %52, %51, %50, %37
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_2__*, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i8 signext) #2

declare dso_local i32 @ektf2127_report_event(%struct.ektf2127_ts*, i8*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
