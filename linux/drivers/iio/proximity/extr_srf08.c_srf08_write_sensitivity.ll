; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_write_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_write_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srf08_data = type { i32, i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SRF08_WRITE_MAX_GAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"write_sensitivity - err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srf08_data*, i32)* @srf08_write_sensitivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf08_write_sensitivity(%struct.srf08_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srf08_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.srf08_data* %0, %struct.srf08_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %11 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %22 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %33 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %31, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  br label %48

44:                                               ; preds = %30, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %19

48:                                               ; preds = %42, %19
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %51 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %49, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %48
  %60 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %61 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %60, i32 0, i32 1
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = load i32, i32* @SRF08_WRITE_MAX_GAIN, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %63, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %75 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %59
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %81 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.srf08_data*, %struct.srf08_data** %4, align 8
  %83 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %69, %56, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
