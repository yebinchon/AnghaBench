; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_set_it_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_set_it_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.cm3323_data = type { i32, i32 }

@cm3323_int_time = common dso_local global %struct.TYPE_3__* null, align 8
@CM3323_CONF_IT_MASK = common dso_local global i32 0, align 4
@CM3323_CONF_IT_SHIFT = common dso_local global i32 0, align 4
@CM3323_CMD_CONF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3323_data*, i32, i32)* @cm3323_set_it_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3323_set_it_bits(%struct.cm3323_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm3323_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cm3323_data* %0, %struct.cm3323_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %61, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3323_int_time, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3323_int_time, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %17, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3323_int_time, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %25
  %35 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %36 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CM3323_CONF_IT_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CM3323_CONF_IT_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %47 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CM3323_CMD_CONF, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @i2c_smbus_write_word_data(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %67

56:                                               ; preds = %34
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %59 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %67

60:                                               ; preds = %25, %16
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %11

64:                                               ; preds = %11
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %56, %54
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
