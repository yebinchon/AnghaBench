; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.fts_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"page select - page: 0x%.02x\0A\00", align 1
@FTS_PAGE_SELECT_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"read - reg: 0x%.02x: val: 0x%.02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i16)* @fts_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_read_byte(%struct.i2c_client* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.fts_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %6, align 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.fts_data* @dev_get_drvdata(i32* %13)
  store %struct.fts_data* %14, %struct.fts_data** %7, align 8
  %15 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %16 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i16
  %22 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i16 zeroext %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load i32, i32* @FTS_PAGE_SELECT_REG, align 4
  %25 = load i8, i8* %6, align 1
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i8 zeroext %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %43

30:                                               ; preds = %2
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %4, align 2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i16, i16* %4, align 2
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i16 zeroext %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i16, i16* %4, align 2
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %40, i32 %41)
  br label %43

43:                                               ; preds = %30, %29
  %44 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %45 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.fts_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
