; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-rt8973a.c_rt8973a_muic_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt8973a_muic_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Cannot handle this interrupt (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt8973a_muic_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt8973a_muic_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt8973a_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rt8973a_muic_info*
  store %struct.rt8973a_muic_info* %9, %struct.rt8973a_muic_info** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %13 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %19 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %18, i32 0, i32 7
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %17, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %29 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %28, i32 0, i32 7
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %55 [
    i32 141, label %42
    i32 137, label %45
    i32 135, label %48
    i32 136, label %51
    i32 140, label %54
    i32 138, label %54
    i32 139, label %54
    i32 142, label %54
    i32 128, label %54
    i32 129, label %54
    i32 132, label %54
    i32 131, label %54
    i32 133, label %54
    i32 134, label %54
    i32 130, label %54
  ]

42:                                               ; preds = %40
  %43 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %44 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %61

45:                                               ; preds = %40
  %46 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %47 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  br label %61

48:                                               ; preds = %40
  %49 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %50 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %61

51:                                               ; preds = %40
  %52 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %53 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %52, i32 0, i32 4
  store i32 1, i32* %53, align 8
  br label %61

54:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  br label %55

55:                                               ; preds = %40, %54
  %56 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %57 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %51, %48, %45, %42
  %62 = load %struct.rt8973a_muic_info*, %struct.rt8973a_muic_info** %5, align 8
  %63 = getelementptr inbounds %struct.rt8973a_muic_info, %struct.rt8973a_muic_info* %62, i32 0, i32 5
  %64 = call i32 @schedule_work(i32* %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
