; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_update_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_update_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.shtc1_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SHTC1_CMD_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to send command: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to read values: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.shtc1_data*, i8*, i32)* @shtc1_update_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shtc1_update_values(%struct.i2c_client* %0, %struct.shtc1_data* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.shtc1_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.shtc1_data* %1, %struct.shtc1_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = load %struct.shtc1_data*, %struct.shtc1_data** %7, align 8
  %13 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SHTC1_CMD_LENGTH, align 4
  %16 = call i32 @i2c_master_send(%struct.i2c_client* %11, i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @SHTC1_CMD_LENGTH, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %4
  %35 = load %struct.shtc1_data*, %struct.shtc1_data** %7, align 8
  %36 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load %struct.shtc1_data*, %struct.shtc1_data** %7, align 8
  %42 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.shtc1_data*, %struct.shtc1_data** %7, align 8
  %45 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1000
  %48 = call i32 @usleep_range(i64 %43, i64 %47)
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @i2c_master_recv(%struct.i2c_client* %50, i8* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %49
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ %65, %64 ], [ %68, %66 ]
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %69, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
