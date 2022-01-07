; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_current_sense_amplifier_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_current_sense_amplifier_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rescale = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"sense-resistor-micro-ohms\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to read the sense resistance: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"sense-gain-mult\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sense-gain-div\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rescale*)* @rescale_current_sense_amplifier_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_current_sense_amplifier_props(%struct.device* %0, %struct.rescale* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rescale*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rescale* %1, %struct.rescale** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @device_property_read_u32(%struct.device* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @device_property_read_u32(%struct.device* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @device_property_read_u32(%struct.device* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @gcd(i32 %25, i32 1000000)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sdiv i32 1000000, %27
  %29 = load %struct.rescale*, %struct.rescale** %5, align 8
  %30 = getelementptr inbounds %struct.rescale, %struct.rescale* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.rescale*, %struct.rescale** %5, align 8
  %35 = getelementptr inbounds %struct.rescale, %struct.rescale* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.rescale*, %struct.rescale** %5, align 8
  %37 = getelementptr inbounds %struct.rescale, %struct.rescale* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @gcd(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.rescale*, %struct.rescale** %5, align 8
  %43 = getelementptr inbounds %struct.rescale, %struct.rescale* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.rescale*, %struct.rescale** %5, align 8
  %50 = getelementptr inbounds %struct.rescale, %struct.rescale* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.rescale*, %struct.rescale** %5, align 8
  %54 = getelementptr inbounds %struct.rescale, %struct.rescale* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @gcd(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %58, %59
  %61 = load %struct.rescale*, %struct.rescale** %5, align 8
  %62 = getelementptr inbounds %struct.rescale, %struct.rescale* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.rescale*, %struct.rescale** %5, align 8
  %67 = getelementptr inbounds %struct.rescale, %struct.rescale* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, %65
  store i32 %69, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %20, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
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
