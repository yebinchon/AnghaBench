; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_bl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_bl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@IQS5XX_BL_BLK_LEN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IQS5XX_BL_ADDR_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to write block at address 0x%04X: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i32)* @iqs5xx_bl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_bl_write(%struct.i2c_client* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @IQS5XX_BL_BLK_LEN_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 4, %17
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IQS5XX_BL_BLK_LEN_MAX, align 4
  %23 = srem i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %87

28:                                               ; preds = %4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IQS5XX_BL_ADDR_MASK, align 4
  %33 = xor i32 %31, %32
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = mul nuw i64 4, %18
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32* %20, i32** %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %67, %28
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @put_unaligned_be16(i32 %47, i32* %20)
  %49 = getelementptr inbounds i32, i32* %20, i64 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = mul nuw i64 4, %18
  %55 = sub i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(i32* %49, i32* %53, i32 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_transfer(i32 %60, %struct.i2c_msg* %10, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  br label %72

65:                                               ; preds = %44
  %66 = call i32 @usleep_range(i32 10000, i32 10100)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* @IQS5XX_BL_BLK_LEN_MAX, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %40

71:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %87

72:                                               ; preds = %64
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %78, %71, %25
  %88 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
