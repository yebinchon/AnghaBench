; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_limit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_limit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht3x_limit_commands = type { i32 }
%struct.device = type { i32 }
%struct.sht3x_data = type { i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@SHT3X_CMD_LENGTH = common dso_local global i32 0, align 4
@SHT3X_WORD_LEN = common dso_local global i32 0, align 4
@SHT3X_CRC8_LEN = common dso_local global i32 0, align 4
@limit_commands = common dso_local global %struct.sht3x_limit_commands* null, align 8
@sht3x_crc8_table = common dso_local global i32 0, align 4
@SHT3X_CRC8_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64, i64, i32, i32)* @limit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @limit_store(%struct.device* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sht3x_data*, align 8
  %18 = alloca %struct.i2c_client*, align 8
  %19 = alloca %struct.sht3x_limit_commands*, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %22 = load i32, i32* @SHT3X_WORD_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @SHT3X_CRC8_LEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store i8* %28, i8** %14, align 8
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call %struct.sht3x_data* @dev_get_drvdata(%struct.device* %29)
  store %struct.sht3x_data* %30, %struct.sht3x_data** %17, align 8
  %31 = load %struct.sht3x_data*, %struct.sht3x_data** %17, align 8
  %32 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %31, i32 0, i32 3
  %33 = load %struct.i2c_client*, %struct.i2c_client** %32, align 8
  store %struct.i2c_client* %33, %struct.i2c_client** %18, align 8
  %34 = load %struct.sht3x_limit_commands*, %struct.sht3x_limit_commands** @limit_commands, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.sht3x_limit_commands, %struct.sht3x_limit_commands* %34, i64 %35
  store %struct.sht3x_limit_commands* %36, %struct.sht3x_limit_commands** %19, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.sht3x_limit_commands*, %struct.sht3x_limit_commands** %19, align 8
  %39 = getelementptr inbounds %struct.sht3x_limit_commands, %struct.sht3x_limit_commands* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %42 = call i32 @memcpy(i8* %37, i32 %40, i32 %41)
  %43 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %14, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 45000
  %49 = mul nsw i32 %48, 24543
  %50 = ashr i32 %49, 23
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 42950
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 65024
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @cpu_to_be16(i32 %57)
  %59 = load i8*, i8** %14, align 8
  %60 = bitcast i8* %59 to i32*
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SHT3X_WORD_LEN, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %14, align 8
  %65 = load i32, i32* @sht3x_crc8_table, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* @SHT3X_WORD_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i32, i32* @SHT3X_WORD_LEN, align 4
  %72 = load i32, i32* @SHT3X_CRC8_INIT, align 4
  %73 = call signext i8 @crc8(i32 %65, i8* %70, i32 %71, i32 %72)
  %74 = load i8*, i8** %14, align 8
  store i8 %73, i8* %74, align 1
  %75 = load %struct.sht3x_data*, %struct.sht3x_data** %17, align 8
  %76 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %75, i32 0, i32 2
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  %79 = trunc i64 %26 to i32
  %80 = call i32 @i2c_master_send(%struct.i2c_client* %78, i8* %28, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.sht3x_data*, %struct.sht3x_data** %17, align 8
  %82 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, %26
  br i1 %86, label %87, label %98

87:                                               ; preds = %5
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  br label %96

93:                                               ; preds = %87
  %94 = load i64, i64* @EIO, align 8
  %95 = sub i64 0, %94
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i64 [ %92, %90 ], [ %95, %93 ]
  store i64 %97, i64* %6, align 8
  store i32 1, i32* %20, align 4
  br label %112

98:                                               ; preds = %5
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.sht3x_data*, %struct.sht3x_data** %17, align 8
  %101 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.sht3x_data*, %struct.sht3x_data** %17, align 8
  %107 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i64, i64* %8, align 8
  store i64 %111, i64* %6, align 8
  store i32 1, i32* %20, align 4
  br label %112

112:                                              ; preds = %98, %96
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i64, i64* %6, align 8
  ret i64 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sht3x_data* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local signext i8 @crc8(i32, i8*, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
