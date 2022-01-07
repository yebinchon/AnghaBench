; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max34440.c_max34440_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PMBUS_STATUS_MFR_SPECIFIC = common dso_local global i32 0, align 4
@MAX34440_STATUS_OC_WARN = common dso_local global i32 0, align 4
@PB_IOUT_OC_WARNING = common dso_local global i32 0, align 4
@MAX34440_STATUS_OC_FAULT = common dso_local global i32 0, align 4
@PB_IOUT_OC_FAULT = common dso_local global i32 0, align 4
@MAX34440_STATUS_OT_WARN = common dso_local global i32 0, align 4
@PB_TEMP_OT_WARNING = common dso_local global i32 0, align 4
@MAX34440_STATUS_OT_FAULT = common dso_local global i32 0, align 4
@PB_TEMP_OT_FAULT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @max34440_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max34440_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
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
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pmbus_set_page(%struct.i2c_client* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %77 [
    i32 129, label %23
    i32 128, label %50
  ]

23:                                               ; preds = %21
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %26 = call i32 @pmbus_read_word_data(%struct.i2c_client* %24, i32 0, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MAX34440_STATUS_OC_WARN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @PB_IOUT_OC_WARNING, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @MAX34440_STATUS_OC_FAULT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @PB_IOUT_OC_FAULT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %80

50:                                               ; preds = %21
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %53 = call i32 @pmbus_read_word_data(%struct.i2c_client* %51, i32 0, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %82

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MAX34440_STATUS_OT_WARN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @PB_TEMP_OT_WARNING, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @MAX34440_STATUS_OT_FAULT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @PB_TEMP_OT_FAULT, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %80

77:                                               ; preds = %21
  %78 = load i32, i32* @ENODATA, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %76, %49
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %56, %29, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pmbus_set_page(%struct.i2c_client*, i32) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
