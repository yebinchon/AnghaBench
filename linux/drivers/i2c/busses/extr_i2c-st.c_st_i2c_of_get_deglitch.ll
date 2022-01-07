; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_of_get_deglitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_of_get_deglitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.st_i2c_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"st,i2c-min-scl-pulse-width-us\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"st,i2c-min-scl-pulse-width-us invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"st,i2c-min-sda-pulse-width-us\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"st,i2c-min-sda-pulse-width-us invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.st_i2c_dev*)* @st_i2c_of_get_deglitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_of_get_deglitch(%struct.device_node* %0, %struct.st_i2c_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_i2c_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.st_i2c_dev* %1, %struct.st_i2c_dev** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %9 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %8, i32 0, i32 2
  %10 = call i32 @of_property_read_u32(%struct.device_node* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ENODATA, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EOVERFLOW, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15, %2
  %21 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %22 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %15
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %29 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %28, i32 0, i32 1
  %30 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EOVERFLOW, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %26
  %41 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %5, align 8
  %42 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
