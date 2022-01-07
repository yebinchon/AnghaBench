; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2841er.c_cxd2841er_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2841er_priv = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i64, i64*, i32, i32 }

@MAX_WRITE_REGSIZE = common dso_local global i32 0, align 4
@I2C_SLVX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"wr reg=%04x: len=%d is too big!\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: i2c wr failed=%d addr=%02x reg=%02x len=%d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2841er_priv*, i64, i64, i64*, i32)* @cxd2841er_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2841er_write_regs(%struct.cxd2841er_priv* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2841er_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x %struct.i2c_msg], align 16
  %17 = alloca i32, align 4
  store %struct.cxd2841er_priv* %0, %struct.cxd2841er_priv** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @MAX_WRITE_REGSIZE, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @I2C_SLVX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %28 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %34

30:                                               ; preds = %5
  %31 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %32 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  store i64 %35, i64* %15, align 8
  %36 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 0
  %38 = load i64, i64* %15, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  store i64* %22, i64** %39, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul nuw i64 8, %20
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %34
  %50 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %51 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 (i32*, i8*, i64, i32, ...) @dev_warn(i32* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %56)
  %58 = load i32, i32* @E2BIG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

60:                                               ; preds = %34
  %61 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @cxd2841er_i2c_debug(%struct.cxd2841er_priv* %61, i64 %62, i64 %63, i32 1, i64* %64, i32 %65)
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %67, i64* %68, align 16
  %69 = getelementptr inbounds i64, i64* %22, i64 1
  %70 = load i64*, i64** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @memcpy(i64* %69, i64* %70, i32 %71)
  %73 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %74 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %77 = call i32 @i2c_transfer(%struct.TYPE_2__* %75, %struct.i2c_msg* %76, i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %60
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %80, %60
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.cxd2841er_priv*, %struct.cxd2841er_priv** %7, align 8
  %91 = getelementptr inbounds %struct.cxd2841er_priv, %struct.cxd2841er_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* @KBUILD_MODNAME, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %12, align 4
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 (i32*, i8*, i64, i32, ...) @dev_warn(i32* %93, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %96, i64 %97, i64 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

102:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %89, %49
  %104 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i32, ...) #2

declare dso_local i32 @cxd2841er_i2c_debug(%struct.cxd2841er_priv*, i64, i64, i32, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @i2c_transfer(%struct.TYPE_2__*, %struct.i2c_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
