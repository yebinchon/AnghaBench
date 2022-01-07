; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_driver = type { i16*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i16, %struct.i2c_adapter* }

@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [174 x i8] c"This adapter dropped support for I2C classes and won't auto-detect %s devices anymore. If you need it, check 'Documentation/i2c/instantiating-devices.rst' for alternatives.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_CLIENT_END = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [48 x i8] c"found normal entry for adapter %d, addr 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_driver*)* @i2c_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_detect(%struct.i2c_adapter* %0, %struct.i2c_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_driver* %1, %struct.i2c_driver** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %13, i32 0, i32 0
  %15 = load i16*, i16** %14, align 8
  store i16* %15, i16** %6, align 8
  %16 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i16*, i16** %6, align 8
  %22 = icmp ne i16* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %103

24:                                               ; preds = %20
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 1
  %33 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %103

38:                                               ; preds = %24
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %103

48:                                               ; preds = %38
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.i2c_client* @kzalloc(i32 16, i32 %49)
  store %struct.i2c_client* %50, %struct.i2c_client** %7, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = icmp ne %struct.i2c_client* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %103

56:                                               ; preds = %48
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  store %struct.i2c_adapter* %57, %struct.i2c_adapter** %59, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %96, %56
  %61 = load i16*, i16** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @I2C_CLIENT_END, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %60
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %10, align 4
  %74 = load i16*, i16** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %79)
  %81 = load i16*, i16** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %81, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  store i16 %85, i16* %87, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %89 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %90 = call i32 @i2c_detect_address(%struct.i2c_client* %88, %struct.i2c_driver* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %99

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %60

99:                                               ; preds = %94, %60
  %100 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %101 = call i32 @kfree(%struct.i2c_client* %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %53, %47, %30, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_detect_address(%struct.i2c_client*, %struct.i2c_driver*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
