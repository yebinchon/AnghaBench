; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_xfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_nmk_i2c_xfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_READ = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@I2C_SR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@abort_causes = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*, i32)* @nmk_i2c_xfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_i2c_xfer_one(%struct.nmk_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nmk_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @I2C_M_RD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @I2C_READ, align 4
  %14 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @read_i2c(%struct.nmk_i2c_dev* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @I2C_WRITE, align 4
  %22 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @write_i2c(%struct.nmk_i2c_dev* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %31, %28
  %37 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %38 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I2C_SR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 2
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %69

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %7, align 4
  %51 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = load i8**, i8*** @abort_causes, align 8
  %57 = call i32 @ARRAY_SIZE(i8** %56)
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %66

60:                                               ; preds = %47
  %61 = load i8**, i8*** @abort_causes, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  br label %66

66:                                               ; preds = %60, %59
  %67 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %59 ], [ %65, %60 ]
  %68 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %36
  %70 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %71 = call i32 @init_hw(%struct.nmk_i2c_dev* %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %78 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %31
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @read_i2c(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @write_i2c(%struct.nmk_i2c_dev*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @init_hw(%struct.nmk_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
