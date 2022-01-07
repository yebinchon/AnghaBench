; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_wr_reg_val_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_wr_reg_val_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af9033_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.reg_val = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"tab_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tab len %d is too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@MAX_TAB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.af9033_dev*, %struct.reg_val*, i32)* @af9033_wr_reg_val_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_wr_reg_val_tab(%struct.af9033_dev* %0, %struct.reg_val* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.af9033_dev*, align 8
  %6 = alloca %struct.reg_val*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [213 x i32], align 16
  store %struct.af9033_dev* %0, %struct.af9033_dev** %5, align 8
  store %struct.reg_val* %1, %struct.reg_val** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.af9033_dev*, %struct.af9033_dev** %5, align 8
  %14 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 852
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %99

30:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %89, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %31
  %36 = load %struct.reg_val*, %struct.reg_val** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %36, i64 %38
  %40 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [213 x i32], [213 x i32]* %12, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %35
  %50 = load %struct.reg_val*, %struct.reg_val** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %50, i64 %52
  %54 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.reg_val*, %struct.reg_val** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %56, i64 %59
  %61 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp ne i32 %55, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %49, %35
  %66 = load %struct.af9033_dev*, %struct.af9033_dev** %5, align 8
  %67 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.reg_val*, %struct.reg_val** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %69, i64 %71
  %73 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = getelementptr inbounds [213 x i32], [213 x i32]* %12, i64 0, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @regmap_bulk_write(i32 %68, i32 %76, i32* %77, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %93

84:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %88

85:                                               ; preds = %49
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %31

92:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %99

93:                                               ; preds = %83
  %94 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %92, %23
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
