; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.gpiod_lookup_table = type { %struct.gpiod_lookup* }
%struct.gpiod_lookup = type { i32, i64, i32, i64, i64 }
%struct.gpio_chip = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot find GPIO chip %s, deferring\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"requested GPIO %d is out of range [0..%d] for chip %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i8*, i32, i64*)* @gpiod_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @gpiod_find(%struct.device* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca %struct.gpiod_lookup_table*, align 8
  %12 = alloca %struct.gpiod_lookup*, align 8
  %13 = alloca %struct.gpio_chip*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.gpio_desc* @ERR_PTR(i32 %15)
  store %struct.gpio_desc* %16, %struct.gpio_desc** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.gpiod_lookup_table* @gpiod_find_lookup_table(%struct.device* %17)
  store %struct.gpiod_lookup_table* %18, %struct.gpiod_lookup_table** %11, align 8
  %19 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %11, align 8
  %20 = icmp ne %struct.gpiod_lookup_table* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %22, %struct.gpio_desc** %5, align 8
  br label %109

23:                                               ; preds = %4
  %24 = load %struct.gpiod_lookup_table*, %struct.gpiod_lookup_table** %11, align 8
  %25 = getelementptr inbounds %struct.gpiod_lookup_table, %struct.gpiod_lookup_table* %24, i32 0, i32 0
  %26 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %25, align 8
  %27 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %26, i64 0
  store %struct.gpiod_lookup* %27, %struct.gpiod_lookup** %12, align 8
  br label %28

28:                                               ; preds = %104, %23
  %29 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %30 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %28
  %34 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %35 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %104

40:                                               ; preds = %33
  %41 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %42 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %50 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i64 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %45
  br label %104

56:                                               ; preds = %48, %40
  %57 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %58 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.gpio_chip* @find_chip_by_name(i64 %59)
  store %struct.gpio_chip* %60, %struct.gpio_chip** %13, align 8
  %61 = load %struct.gpio_chip*, %struct.gpio_chip** %13, align 8
  %62 = icmp ne %struct.gpio_chip* %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %66 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.gpio_desc* @ERR_PTR(i32 %70)
  store %struct.gpio_desc* %71, %struct.gpio_desc** %5, align 8
  br label %109

72:                                               ; preds = %56
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %13, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %77 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %75, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %13, align 8
  %84 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %13, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.gpio_desc* @ERR_PTR(i32 %91)
  store %struct.gpio_desc* %92, %struct.gpio_desc** %5, align 8
  br label %109

93:                                               ; preds = %72
  %94 = load %struct.gpio_chip*, %struct.gpio_chip** %13, align 8
  %95 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %96 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %94, i32 %97)
  store %struct.gpio_desc* %98, %struct.gpio_desc** %10, align 8
  %99 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %100 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  store i64 %101, i64* %102, align 8
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %103, %struct.gpio_desc** %5, align 8
  br label %109

104:                                              ; preds = %55, %39
  %105 = load %struct.gpiod_lookup*, %struct.gpiod_lookup** %12, align 8
  %106 = getelementptr inbounds %struct.gpiod_lookup, %struct.gpiod_lookup* %105, i32 1
  store %struct.gpiod_lookup* %106, %struct.gpiod_lookup** %12, align 8
  br label %28

107:                                              ; preds = %28
  %108 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %108, %struct.gpio_desc** %5, align 8
  br label %109

109:                                              ; preds = %107, %93, %80, %63, %21
  %110 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %110
}

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local %struct.gpiod_lookup_table* @gpiod_find_lookup_table(%struct.device*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local %struct.gpio_chip* @find_chip_by_name(i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
