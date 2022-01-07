; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.isl29125_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ISL29125_CONF1 = common dso_local global i32 0, align 4
@isl29125_regs = common dso_local global %struct.TYPE_5__* null, align 8
@ISL29125_STATUS = common dso_local global i32 0, align 4
@ISL29125_STATUS_CONV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29125_data*, i32)* @isl29125_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29125_read_data(%struct.isl29125_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl29125_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isl29125_data* %0, %struct.isl29125_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 5, i32* %6, align 4
  %8 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %9 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* @ISL29125_CONF1, align 4
  %12 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %13 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @isl29125_regs, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %14, %20
  %22 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__* %10, i32 %11, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %2
  %28 = call i32 @msleep(i32 101)
  br label %29

29:                                               ; preds = %48, %27
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %35 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* @ISL29125_STATUS, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_6__* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %72

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ISL29125_STATUS_CONV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @msleep(i32 20)
  br label %29

50:                                               ; preds = %47, %29
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %55 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %72

61:                                               ; preds = %50
  %62 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %63 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @isl29125_regs, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_6__* %64, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %53, %41
  %73 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %74 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* @ISL29125_CONF1, align 4
  %77 = load %struct.isl29125_data*, %struct.isl29125_data** %4, align 8
  %78 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__* %75, i32 %76, i32 %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %72, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
