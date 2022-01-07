; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_isl68137.c_isl68137_avs_enable_store_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_isl68137.c_isl68137_avs_enable_store_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ISL68137_VOUT_AVS = common dso_local global i32 0, align 4
@PMBUS_VOUT_COMMAND = common dso_local global i32 0, align 4
@PMBUS_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i8*, i64)* @isl68137_avs_enable_store_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl68137_avs_enable_store_page(%struct.i2c_client* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @kstrtobool(i8* %13, i32* %12)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %67

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ISL68137_VOUT_AVS, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ISL68137_VOUT_AVS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PMBUS_VOUT_COMMAND, align 4
  %34 = call i32 @pmbus_read_word_data(%struct.i2c_client* %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %67

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PMBUS_VOUT_COMMAND, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @pmbus_write_word_data(%struct.i2c_client* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %67

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PMBUS_OPERATION, align 4
  %54 = load i32, i32* @ISL68137_VOUT_AVS, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pmbus_update_byte_data(%struct.i2c_client* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  br label %64

62:                                               ; preds = %50
  %63 = load i64, i64* %9, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i64 [ %61, %59 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %47, %37, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @pmbus_update_byte_data(%struct.i2c_client*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
