; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_voltage_divider_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_voltage_divider_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rescale = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"output-ohms\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to read output-ohms: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"full-ohms\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to read full-ohms: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rescale*)* @rescale_voltage_divider_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_voltage_divider_props(%struct.device* %0, %struct.rescale* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rescale*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rescale* %1, %struct.rescale** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.rescale*, %struct.rescale** %5, align 8
  %10 = getelementptr inbounds %struct.rescale, %struct.rescale* %9, i32 0, i32 0
  %11 = call i32 @device_property_read_u32(%struct.device* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.rescale*, %struct.rescale** %5, align 8
  %22 = getelementptr inbounds %struct.rescale, %struct.rescale* %21, i32 0, i32 1
  %23 = call i32 @device_property_read_u32(%struct.device* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %19
  %32 = load %struct.rescale*, %struct.rescale** %5, align 8
  %33 = getelementptr inbounds %struct.rescale, %struct.rescale* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rescale*, %struct.rescale** %5, align 8
  %36 = getelementptr inbounds %struct.rescale, %struct.rescale* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gcd(i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rescale*, %struct.rescale** %5, align 8
  %41 = getelementptr inbounds %struct.rescale, %struct.rescale* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.rescale*, %struct.rescale** %5, align 8
  %46 = getelementptr inbounds %struct.rescale, %struct.rescale* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, %44
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %31, %26, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
