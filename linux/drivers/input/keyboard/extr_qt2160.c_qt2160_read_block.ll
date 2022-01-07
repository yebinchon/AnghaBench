; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt2160.c_qt2160_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"couldn't send request. Returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"couldn't read registers. Returned %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't read register. Returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i32)* @qt2160_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2160_read_block(%struct.i2c_client* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_I2C, align 4
  %17 = call i64 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %20, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %87

33:                                               ; preds = %19
  %34 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @i2c_master_recv(%struct.i2c_client* %34, i32* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %87

47:                                               ; preds = %33
  br label %86

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %78, %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %9, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %87

67:                                               ; preds = %53
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %87

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %49

85:                                               ; preds = %49
  br label %86

86:                                               ; preds = %85, %47
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %72, %61, %41, %27
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
