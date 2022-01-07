; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_update_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_update_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.kxtj9_data = type { i32, i32, i32 }

@kxtj9_odr_table = common dso_local global %struct.TYPE_3__* null, align 8
@CTRL_REG1 = common dso_local global i32 0, align 4
@DATA_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxtj9_data*, i32)* @kxtj9_update_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_update_odr(%struct.kxtj9_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxtj9_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kxtj9_odr_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kxtj9_odr_table, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %21 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kxtj9_odr_table, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %35

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8

35:                                               ; preds = %30, %8
  %36 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %37 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CTRL_REG1, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %72

45:                                               ; preds = %35
  %46 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %47 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DATA_CTRL, align 4
  %50 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %51 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %72

58:                                               ; preds = %45
  %59 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %60 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CTRL_REG1, align 4
  %63 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %64 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(i32 %61, i32 %62, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %56, %43
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
