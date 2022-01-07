; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helene_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@MAX_WRITE_REGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wr reg=%04x: len=%d vs %zu is too big!\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.helene_priv*, i32, i32*, i32)* @helene_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helene_write_regs(%struct.helene_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.helene_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.helene_priv* %0, %struct.helene_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_WRITE_REGSIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %27 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %28 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul nuw i64 4, %17
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %4
  %36 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %37 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nuw i64 4, %17
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_warn(i32* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42, i32 %44)
  %46 = load i32, i32* @E2BIG, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %88

48:                                               ; preds = %4
  %49 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @helene_i2c_debug(%struct.helene_priv* %49, i32 %50, i32 1, i32* %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %54, i32* %55, align 16
  %56 = getelementptr inbounds i32, i32* %19, i64 1
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @memcpy(i32* %56, i32* %57, i32 %58)
  %60 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %61 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %13, i64 0, i64 0
  %64 = call i32 @i2c_transfer(%struct.TYPE_2__* %62, %struct.i2c_msg* %63, i32 1)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %48
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EREMOTEIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %67, %48
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %78 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* @KBUILD_MODNAME, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_warn(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %76, %35
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @helene_i2c_debug(%struct.helene_priv*, i32, i32, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

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
