; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_send_key_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_send_key_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { i32 }
%struct.adxl34x_platform_data = type { i32* }

@ADXL_X_AXIS = common dso_local global i32 0, align 4
@ADXL_Z_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adxl34x*, %struct.adxl34x_platform_data*, i32, i32)* @adxl34x_send_key_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adxl34x_send_key_events(%struct.adxl34x* %0, %struct.adxl34x_platform_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adxl34x*, align 8
  %6 = alloca %struct.adxl34x_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adxl34x* %0, %struct.adxl34x** %5, align 8
  store %struct.adxl34x_platform_data* %1, %struct.adxl34x_platform_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @ADXL_X_AXIS, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %37, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @ADXL_Z_AXIS, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ADXL_Z_AXIS, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %17, %18
  %20 = shl i32 1, %19
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.adxl34x*, %struct.adxl34x** %5, align 8
  %25 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %6, align 8
  %28 = getelementptr inbounds %struct.adxl34x_platform_data, %struct.adxl34x_platform_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @input_report_key(i32 %26, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %11

40:                                               ; preds = %11
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
