; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.max77843_muic_info = type { i32, i32, i32, i32 }

@max77843_muic_irqs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Cannot recognize IRQ(%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max77843_muic_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max77843_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.max77843_muic_info*
  store %struct.max77843_muic_info* %9, %struct.max77843_muic_info** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @max77843_muic_irqs, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @max77843_muic_irqs, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @max77843_muic_irqs, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %44 [
    i32 143, label %37
    i32 141, label %37
    i32 142, label %37
    i32 139, label %40
    i32 140, label %40
    i32 138, label %40
    i32 137, label %40
    i32 136, label %40
    i32 129, label %43
    i32 128, label %43
    i32 135, label %43
    i32 134, label %43
    i32 133, label %43
    i32 130, label %43
    i32 132, label %43
    i32 131, label %43
  ]

37:                                               ; preds = %35, %35, %35
  %38 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %5, align 8
  %39 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %50

40:                                               ; preds = %35, %35, %35, %35, %35
  %41 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %5, align 8
  %42 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %50

43:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35
  br label %50

44:                                               ; preds = %35
  %45 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %5, align 8
  %46 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %43, %40, %37
  %51 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %5, align 8
  %52 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %51, i32 0, i32 2
  %53 = call i32 @schedule_work(i32* %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
