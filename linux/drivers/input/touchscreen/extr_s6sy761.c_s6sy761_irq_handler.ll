; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6sy761_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S6SY761_READ_ONE_EVENT = common dso_local global i32 0, align 4
@S6SY761_EVENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to read events\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S6SY761_MASK_LEFT_EVENTS = common dso_local global i32 0, align 4
@S6SY761_EVENT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s6sy761_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6sy761_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s6sy761_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.s6sy761_data*
  store %struct.s6sy761_data* %10, %struct.s6sy761_data** %6, align 8
  %11 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %12 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @S6SY761_READ_ONE_EVENT, align 4
  %15 = load i32, i32* @S6SY761_EVENT_SIZE, align 4
  %16 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %17 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_2__* %13, i32 %14, i32 %15, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %24 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %78

29:                                               ; preds = %2
  %30 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %31 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %40 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @S6SY761_MASK_LEFT_EVENTS, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @S6SY761_EVENT_COUNT, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp sgt i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %78

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @s6sy761_read_events(%struct.s6sy761_data* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %66 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @s6sy761_handle_events(%struct.s6sy761_data* %73, i32 %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %64, %53, %36, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @s6sy761_read_events(%struct.s6sy761_data*, i32) #1

declare dso_local i32 @s6sy761_handle_events(%struct.s6sy761_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
