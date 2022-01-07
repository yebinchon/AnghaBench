; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_migor_ts.c_migor_ts_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.migor_ts_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unable to write i2c index\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to read i2c page\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @migor_ts_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migor_ts_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.migor_ts_priv*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [16 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.migor_ts_priv*
  store %struct.migor_ts_priv* %11, %struct.migor_ts_priv** %5, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 64)
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %14, align 16
  %15 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %16 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %19 = call i32 @i2c_master_send(%struct.TYPE_3__* %17, i32* %18, i32 1)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %23 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %96

27:                                               ; preds = %2
  %28 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %29 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %32 = call i32 @i2c_master_recv(%struct.TYPE_3__* %30, i32* %31, i32 64)
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 64
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %37 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %96

41:                                               ; preds = %27
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 9
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 8
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 8
  %47 = load i32, i32* %46, align 16
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %7, align 2
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 11
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 10
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %6, align 2
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 12
  %59 = load i32, i32* %58, align 16
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  switch i32 %62, label %95 [
    i32 130, label %63
    i32 128, label %63
    i32 129, label %85
  ]

63:                                               ; preds = %41, %41
  %64 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %65 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BTN_TOUCH, align 4
  %68 = call i32 @input_report_key(i32 %66, i32 %67, i32 1)
  %69 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %70 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ABS_X, align 4
  %73 = load i16, i16* %7, align 2
  %74 = call i32 @input_report_abs(i32 %71, i32 %72, i16 zeroext %73)
  %75 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %76 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ABS_Y, align 4
  %79 = load i16, i16* %6, align 2
  %80 = call i32 @input_report_abs(i32 %77, i32 %78, i16 zeroext %79)
  %81 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %82 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @input_sync(i32 %83)
  br label %95

85:                                               ; preds = %41
  %86 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %87 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BTN_TOUCH, align 4
  %90 = call i32 @input_report_key(i32 %88, i32 %89, i32 0)
  %91 = load %struct.migor_ts_priv*, %struct.migor_ts_priv** %5, align 8
  %92 = getelementptr inbounds %struct.migor_ts_priv, %struct.migor_ts_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @input_sync(i32 %93)
  br label %95

95:                                               ; preds = %41, %85, %63
  br label %96

96:                                               ; preds = %95, %35, %21
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %97
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
