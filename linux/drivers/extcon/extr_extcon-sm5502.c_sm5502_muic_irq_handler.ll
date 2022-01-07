; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-sm5502.c_sm5502_muic_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm5502_muic_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cannot handle is interrupt:%d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sm5502_muic_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm5502_muic_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sm5502_muic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sm5502_muic_info*
  store %struct.sm5502_muic_info* %11, %struct.sm5502_muic_info** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %15 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %21 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %19, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %31 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %29, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @sm5502_parse_irq(%struct.sm5502_muic_info* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %50 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.sm5502_muic_info*, %struct.sm5502_muic_info** %6, align 8
  %57 = getelementptr inbounds %struct.sm5502_muic_info, %struct.sm5502_muic_info* %56, i32 0, i32 1
  %58 = call i32 @schedule_work(i32* %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @sm5502_parse_irq(%struct.sm5502_muic_info*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
