; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_write_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_write_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error writing addr %#x reg %#x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32, i8*, i32, i32)* @icn8505_write_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_write_xfer(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [35 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds [35 x i32], [35 x i32]* %16, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %23 = load i32, i32* %12, align 4
  %24 = sdiv i32 %23, 8
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 32
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %92

37:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sdiv i32 %40, 8
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %47, 8
  %49 = sub nsw i32 %45, %48
  %50 = ashr i32 %44, %49
  %51 = and i32 %50, 255
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [35 x i32], [35 x i32]* %16, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %38

58:                                               ; preds = %38
  %59 = getelementptr inbounds [35 x i32], [35 x i32]* %16, i64 0, i64 0
  %60 = load i32, i32* %12, align 4
  %61 = sdiv i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memcpy(i32* %63, i8* %64, i32 %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @i2c_transfer(i32 %69, %struct.i2c_msg* %19, i32 1)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %91

73:                                               ; preds = %58
  %74 = load i32, i32* %18, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %8, align 4
  br label %92

91:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %89, %34
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
