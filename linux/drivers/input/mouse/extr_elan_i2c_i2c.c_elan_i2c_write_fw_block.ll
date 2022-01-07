; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_write_fw_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_write_fw_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@ETP_FW_PAGE_SIZE = common dso_local global i32 0, align 4
@ETP_I2C_IAP_REG_L = common dso_local global i32 0, align 4
@ETP_I2C_IAP_REG_H = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to write page %d: %d\0A\00", align 1
@ETP_I2C_IAP_CTRL_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to read IAP write result: %d\0A\00", align 1
@ETP_FW_IAP_PAGE_ERR = common dso_local global i32 0, align 4
@ETP_FW_IAP_INTF_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"IAP reports failed write: %04hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i32, i32)* @elan_i2c_write_fw_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_write_fw_block(%struct.i2c_client* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %21 = add nsw i32 %20, 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @ETP_I2C_IAP_REG_L, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* @ETP_I2C_IAP_REG_H, align 4
  %28 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %24, i64 2
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %32 = call i32 @memcpy(i32* %29, i32* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ETP_FW_PAGE_SIZE, align 4
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %24, i64 %36
  %38 = call i32 @put_unaligned_le16(i32 %33, i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = mul nuw i64 4, %22
  %41 = trunc i64 %40 to i32
  %42 = call i32 @i2c_master_send(%struct.i2c_client* %39, i32* %24, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nuw i64 4, %22
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %54, %52 ]
  store i32 %56, i32* %16, align 4
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

62:                                               ; preds = %4
  %63 = call i32 @msleep(i32 35)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %65 = load i32, i32* @ETP_I2C_IAP_CTRL_CMD, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %67 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %64, i32 %65, i32* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

75:                                               ; preds = %62
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %77 = call i32 @le16_to_cpup(i32* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @ETP_FW_IAP_PAGE_ERR, align 4
  %80 = load i32, i32* @ETP_FW_IAP_INTF_ERR, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load %struct.device*, %struct.device** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

90:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %90, %84, %70, %55
  %92 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @put_unaligned_le16(i32, i32*) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @elan_i2c_read_cmd(%struct.i2c_client*, i32, i32*) #2

declare dso_local i32 @le16_to_cpup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
