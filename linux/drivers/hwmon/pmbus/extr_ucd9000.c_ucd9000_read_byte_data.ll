; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ucd9000.c_ucd9000_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ucd9000.c_ucd9000_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ucd9000_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucd9000_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %65 [
    i32 129, label %11
    i32 128, label %38
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %70

17:                                               ; preds = %11
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = call i32 @ucd9000_get_fan_config(%struct.i2c_client* %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = call i32 @ucd9000_get_fan_config(%struct.i2c_client* %27, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %8, align 4
  br label %68

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %38
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = call i32 @ucd9000_get_fan_config(%struct.i2c_client* %45, i32 2)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %70

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %55 = call i32 @ucd9000_get_fan_config(%struct.i2c_client* %54, i32 3)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %3
  %66 = load i32, i32* @ENODATA, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %60, %33
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %58, %49, %41, %31, %22, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ucd9000_get_fan_config(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
