; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_check_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_check_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SMBus is busy, can't use it!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Clearing status flags (%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed clearing status flags (%02x)\0A\00", align 1
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@SMBAUXSTS_CRCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Clearing aux status flags (%02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed clearing aux status flags (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*)* @i801_check_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_pre(%struct.i801_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i801_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %3, align 8
  %5 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %6 = call i32 @SMBHSTSTS(%struct.i801_priv* %5)
  %7 = call i32 @inb_p(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %14 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_FLAGS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %28 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %35 = call i32 @SMBHSTSTS(%struct.i801_priv* %34)
  %36 = call i32 @outb_p(i32 %33, i32 %35)
  %37 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %38 = call i32 @SMBHSTSTS(%struct.i801_priv* %37)
  %39 = call i32 @inb_p(i32 %38)
  %40 = load i32, i32* @STATUS_FLAGS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %46 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %99

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %56 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %54
  %62 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %63 = call i32 @SMBAUXSTS(%struct.i801_priv* %62)
  %64 = call i32 @inb_p(i32 %63)
  %65 = load i32, i32* @SMBAUXSTS_CRCE, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %61
  %70 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %71 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %78 = call i32 @SMBAUXSTS(%struct.i801_priv* %77)
  %79 = call i32 @outb_p(i32 %76, i32 %78)
  %80 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %81 = call i32 @SMBAUXSTS(%struct.i801_priv* %80)
  %82 = call i32 @inb_p(i32 %81)
  %83 = load i32, i32* @SMBAUXSTS_CRCE, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %69
  %88 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %89 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %61
  br label %98

98:                                               ; preds = %97, %54
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %87, %44, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBAUXSTS(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
