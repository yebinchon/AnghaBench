; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_read_distance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_read_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb1232_data = type { i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MB1232_RANGE_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write command - err: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"i2c_master_recv: ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"distance=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb1232_data*)* @mb1232_read_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb1232_read_distance(%struct.mb1232_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb1232_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mb1232_data* %0, %struct.mb1232_data** %3, align 8
  %8 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %9 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %12 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %15 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %14, i32 0, i32 2
  %16 = call i32 @reinit_completion(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* @MB1232_RANGE_COMMAND, align 4
  %19 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %79

27:                                               ; preds = %1
  %28 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %29 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %34 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %33, i32 0, i32 2
  %35 = load i32, i32* @HZ, align 4
  %36 = sdiv i32 %35, 10
  %37 = call i32 @wait_for_completion_killable_timeout(i32* %34, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %79

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %79

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  br label %51

49:                                               ; preds = %27
  %50 = call i32 @msleep(i32 15)
  br label %51

51:                                               ; preds = %49, %48
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = bitcast i32* %7 to i8*
  %54 = call i32 @i2c_master_recv(%struct.i2c_client* %52, i8* %53, i32 4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %79

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @__be16_to_cpu(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %62
  %75 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %76 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %67, %57, %44, %40, %22
  %80 = load %struct.mb1232_data*, %struct.mb1232_data** %3, align 8
  %81 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @__be16_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
