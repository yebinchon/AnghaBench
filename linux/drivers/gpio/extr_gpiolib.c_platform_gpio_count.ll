; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_platform_gpio_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_platform_gpio_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpiod_lookup_table = type { %struct.gpiod_lookup* }
%struct.gpiod_lookup = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @platform_gpio_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_gpio_count(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gpiod_lookup_table*, align 8
  %7 = alloca %struct.gpiod_lookup*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.gpiod_lookup_table* @gpiod_find_lookup_table(%struct.device* %9)
  store %struct.gpiod_lookup_table* %10, %struct.gpiod_lookup_table** %6, align 8
  %11 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %6, align 8
  %12 = icmp ne %struct.gpiod_lookup_table* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %6, align 8
  %18 = getelementptr inbounds %struct.gpiod_lookup_table, %struct.gpiod_lookup_table* %17, i32 0, i32 0
  %19 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %18, align 8
  %20 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %19, i64 0
  store %struct.gpiod_lookup* %20, %struct.gpiod_lookup** %7, align 8
  br label %21

21:                                               ; preds = %53, %16
  %22 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %7, align 8
  %23 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %7, align 8
  %31 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %7, align 8
  %37 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @strcmp(i8* %35, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34, %29, %26
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %7, align 8
  %46 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %44, %41
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %7, align 8
  %55 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %54, i32 1
  store %struct.gpiod_lookup* %55, %struct.gpiod_lookup** %7, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %59, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.gpiod_lookup_table* @gpiod_find_lookup_table(%struct.device*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
