; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_wregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_wregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32*, i32, i32)* @af9013_wregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_wregs(%struct.i2c_client* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [21 x i32], align 16
  %16 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 3, %19
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %22 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  %25 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 3, %28
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 84
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  br label %84

35:                                               ; preds = %6
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 3
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %57 = call i32 @i2c_lock_bus(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %35
  %59 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %63 = call i32 @__i2c_transfer(i32 %61, %struct.i2c_msg* %62, i32 1)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %71 = call i32 @i2c_unlock_bus(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EREMOTEIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %84

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %90

84:                                               ; preds = %79, %75, %32
  %85 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @__i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
