; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_attr_show_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_attr_show_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_drvdata = type { %struct.gpio_button_data*, %struct.TYPE_3__* }
%struct.gpio_button_data = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gpio_keys_drvdata*, i8*, i32, i32)* @gpio_keys_attr_show_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_keys_attr_show_helper(%struct.gpio_keys_drvdata* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.gpio_keys_drvdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gpio_button_data*, align 8
  store %struct.gpio_keys_drvdata* %0, %struct.gpio_keys_drvdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @get_n_events_by_type(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64* @bitmap_zalloc(i32 %17, i32 %18)
  store i64* %19, i64** %11, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* @ENOMEM, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %85

25:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %65, %25
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %6, align 8
  %36 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %35, i32 0, i32 0
  %37 = load %struct.gpio_button_data*, %struct.gpio_button_data** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %37, i64 %39
  store %struct.gpio_button_data* %40, %struct.gpio_button_data** %14, align 8
  %41 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %42 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %65

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %54 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %65

58:                                               ; preds = %52, %49
  %59 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %60 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %11, align 8
  %64 = call i32 @__set_bit(i32 %62, i64* %63)
  br label %65

65:                                               ; preds = %58, %57, %48
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %26

68:                                               ; preds = %26
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = sub nsw i64 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = load i64*, i64** %11, align 8
  %74 = call i64 @scnprintf(i8* %69, i64 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72, i64* %73)
  store i64 %74, i64* %12, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 10, i8* %78, align 1
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i64*, i64** %11, align 8
  %83 = call i32 @bitmap_free(i64* %82)
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %68, %22
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @get_n_events_by_type(i32) #1

declare dso_local i64* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i64*) #1

declare dso_local i32 @bitmap_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
