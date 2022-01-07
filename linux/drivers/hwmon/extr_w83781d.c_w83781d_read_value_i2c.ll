; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_read_value_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_read_value_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83781d_data = type { %struct.i2c_client**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@W83781D_REG_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83781d_data*, i32)* @w83781d_read_value_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_read_value_i2c(%struct.w83781d_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.w83781d_data* %0, %struct.w83781d_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %10 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 15
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* @W83781D_REG_BANK, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %58

33:                                               ; preds = %25
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 0
  %36 = load %struct.i2c_client**, %struct.i2c_client*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %36, i64 %39
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  store %struct.i2c_client* %41, %struct.i2c_client** %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 255
  switch i32 %43, label %54 [
    i32 80, label %44
    i32 82, label %47
    i32 83, label %50
    i32 85, label %53
  ]

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %46 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %45, i32 0)
  store i32 %46, i32* %6, align 4
  br label %57

47:                                               ; preds = %33
  %48 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %49 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 1)
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %33
  %51 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %52 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %51, i32 2)
  store i32 %52, i32* %6, align 4
  br label %57

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %33, %53
  %55 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %56 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %55, i32 3)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50, %47, %44
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* @W83781D_REG_BANK, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
