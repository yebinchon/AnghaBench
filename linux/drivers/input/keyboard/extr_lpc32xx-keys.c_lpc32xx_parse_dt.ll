; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.lpc32xx_kscan_drv = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"rows and columns must be equal!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"nxp,debounce-delay-ms\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"nxp,scan-delay-ms\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"debounce or scan delay not specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.lpc32xx_kscan_drv*)* @lpc32xx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_parse_dt(%struct.device* %0, %struct.lpc32xx_kscan_drv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lpc32xx_kscan_drv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.lpc32xx_kscan_drv* %1, %struct.lpc32xx_kscan_drv** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @matrix_keypad_parse_properties(%struct.device* %13, i64* %7, i64* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @get_count_order(i64 %32)
  %34 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %35 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %37, i32 0, i32 1
  %39 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %41, i32 0, i32 0
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %42)
  %44 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %28
  %49 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %5, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48, %28
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53, %23, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @matrix_keypad_parse_properties(%struct.device*, i64*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @get_count_order(i64) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
