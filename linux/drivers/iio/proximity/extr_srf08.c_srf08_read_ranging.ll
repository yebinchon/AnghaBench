; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_read_ranging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_read_ranging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srf08_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@SRF08_WRITE_COMMAND = common dso_local global i32 0, align 4
@SRF08_CMD_RANGING_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write command - err: %d\0A\00", align 1
@SRF08_READ_SW_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"device not ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SRF08_READ_ECHO_1_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot read distance: ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srf08_data*)* @srf08_read_ranging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf08_read_ranging(%struct.srf08_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srf08_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.srf08_data* %0, %struct.srf08_data** %3, align 8
  %8 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %9 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %12 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %15 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %14, i32 0, i32 2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  %17 = load i32, i32* @SRF08_WRITE_COMMAND, align 4
  %18 = load i32, i32* @SRF08_CMD_RANGING_CM, align 4
  %19 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %28 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %96

31:                                               ; preds = %1
  %32 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %33 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 172
  %36 = add nsw i32 1, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @msleep(i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %56, %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %44 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %43, i32 0, i32 2
  %45 = load %struct.i2c_client*, %struct.i2c_client** %44, align 8
  %46 = load i32, i32* @SRF08_READ_SW_REVISION, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 255
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %59

54:                                               ; preds = %50, %42
  %55 = call i32 @msleep(i32 5)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %39

59:                                               ; preds = %53, %39
  %60 = load i32, i32* %5, align 4
  %61 = icmp sge i32 %60, 255
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62, %59
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %70 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %96

74:                                               ; preds = %62
  %75 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %76 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %75, i32 0, i32 2
  %77 = load %struct.i2c_client*, %struct.i2c_client** %76, align 8
  %78 = load i32, i32* @SRF08_READ_ECHO_1_HIGH, align 4
  %79 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %88 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %74
  %92 = load %struct.srf08_data*, %struct.srf08_data** %3, align 8
  %93 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %82, %65, %22
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
