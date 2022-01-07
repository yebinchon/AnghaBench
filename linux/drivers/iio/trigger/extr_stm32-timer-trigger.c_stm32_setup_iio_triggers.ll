; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_setup_iio_triggers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_setup_iio_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_timer_trigger = type { i8**, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iio_trigger = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@timer_trigger_ops = common dso_local global i32 0, align 4
@stm32_trigger_attr_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_timer_trigger*)* @stm32_setup_iio_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_setup_iio_triggers(%struct.stm32_timer_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_timer_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_timer_trigger* %0, %struct.stm32_timer_trigger** %3, align 8
  %9 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %5, align 8
  br label %12

12:                                               ; preds = %84, %35, %1
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %87

21:                                               ; preds = %19
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @stm32_timer_is_trgo_name(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @stm32_timer_is_trgo2_name(i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  br label %12

38:                                               ; preds = %30, %21
  %39 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  store %struct.iio_trigger* %44, %struct.iio_trigger** %6, align 8
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %46 = icmp ne %struct.iio_trigger* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %88

50:                                               ; preds = %38
  %51 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %52 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %57 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %60 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %59, i32 0, i32 1
  store i32* @timer_trigger_ops, i32** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63, %50
  %67 = load i32, i32* @stm32_trigger_attr_groups, align 4
  %68 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %69 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %73 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %74 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %72, %struct.stm32_timer_trigger* %73)
  %75 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %3, align 8
  %76 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %79 = call i32 @devm_iio_trigger_register(%struct.TYPE_5__* %77, %struct.iio_trigger* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %71
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %5, align 8
  br label %12

87:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %82, %47
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @stm32_timer_is_trgo_name(i8*) #1

declare dso_local i32 @stm32_timer_is_trgo2_name(i8*) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.stm32_timer_trigger*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.TYPE_5__*, %struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
