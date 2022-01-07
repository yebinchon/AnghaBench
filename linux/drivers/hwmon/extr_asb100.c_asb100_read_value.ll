; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32, %struct.i2c_client** }

@ASB100_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @asb100_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_read_value(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asb100_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.asb100_data* %10, %struct.asb100_data** %5, align 8
  %11 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %12 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i32, i32* @ASB100_REG_BANK, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %60

35:                                               ; preds = %27
  %36 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %37 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %36, i32 0, i32 1
  %38 = load %struct.i2c_client**, %struct.i2c_client*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %38, i64 %41
  %43 = load %struct.i2c_client*, %struct.i2c_client** %42, align 8
  store %struct.i2c_client* %43, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 255
  switch i32 %45, label %56 [
    i32 80, label %46
    i32 82, label %49
    i32 83, label %52
    i32 85, label %55
  ]

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %47, i32 0)
  store i32 %48, i32* %7, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 1)
  store i32 %51, i32* %7, align 4
  br label %59

52:                                               ; preds = %35
  %53 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %54 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %53, i32 2)
  store i32 %54, i32* %7, align 4
  br label %59

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %35, %55
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %57, i32 3)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %52, %49, %46
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* @ASB100_REG_BANK, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.asb100_data*, %struct.asb100_data** %5, align 8
  %69 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
