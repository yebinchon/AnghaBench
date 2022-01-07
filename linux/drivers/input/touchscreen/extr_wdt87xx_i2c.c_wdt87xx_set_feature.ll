; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@PKT_WRITE_SIZE = common dso_local global i32 0, align 4
@CMD_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set feature failed: %d\0A\00", align 1
@WDT_COMMAND_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i64)* @wdt87xx_set_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_set_feature(%struct.i2c_client* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @PKT_WRITE_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 34, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 15
  br i1 %29, label %30, label %47

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  store i32 48, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  store i32 3, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %16, i64 %45
  store i32 %42, i32* %46, align 4
  br label %61

47:                                               ; preds = %3
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @CMD_REPORT_ID_OFFSET, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 48, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %16, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %16, i64 %59
  store i32 3, i32* %60, align 4
  br label %61

61:                                               ; preds = %47, %30
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %16, i64 %64
  store i32 35, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %7, align 8
  %71 = and i64 %70, 255
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %16, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i64, i64* %7, align 8
  %78 = and i64 %77, 65280
  %79 = lshr i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %16, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %86, %87
  %89 = mul nuw i64 4, %14
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %61
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %120

94:                                               ; preds = %61
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %16, i64 %96
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @memcpy(i32* %97, i32* %98, i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @i2c_master_send(%struct.i2c_client* %106, i32* %16, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %94
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %120

117:                                              ; preds = %94
  %118 = load i32, i32* @WDT_COMMAND_DELAY_MS, align 4
  %119 = call i32 @mdelay(i32 %118)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %111, %91
  %121 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @mdelay(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
