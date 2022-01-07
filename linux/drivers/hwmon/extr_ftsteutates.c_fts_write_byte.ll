; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.fts_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"page select - page: 0x%.02x\0A\00", align 1
@FTS_PAGE_SELECT_REG = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [36 x i8] c"write - reg: 0x%.02x: val: 0x%.02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i16, i8)* @fts_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_write_byte(%struct.i2c_client* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.fts_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = ashr i32 %11, 8
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %8, align 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.fts_data* @dev_get_drvdata(i32* %15)
  store %struct.fts_data* %16, %struct.fts_data** %9, align 8
  %17 = load %struct.fts_data*, %struct.fts_data** %9, align 8
  %18 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i16
  %24 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i16 zeroext %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i16, i16* @FTS_PAGE_SELECT_REG, align 2
  %27 = load i8, i8* %8, align 1
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %25, i16 zeroext %26, i8 zeroext %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %47

32:                                               ; preds = %3
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i16, i16* %5, align 2
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 (i32*, i8*, i16, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %39, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i16, i16* %5, align 2
  %45 = load i8, i8* %6, align 1
  %46 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i16 zeroext %44, i8 zeroext %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %32, %31
  %48 = load %struct.fts_data*, %struct.fts_data** %9, align 8
  %49 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.fts_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i16 zeroext, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
