; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_wr_reg_val_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_wr_reg_val_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m88ds3103_dev = type { i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.m88ds3103_reg_val = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"tab_len=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m88ds3103_dev*, %struct.m88ds3103_reg_val*, i32)* @m88ds3103_wr_reg_val_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_wr_reg_val_tab(%struct.m88ds3103_dev* %0, %struct.m88ds3103_reg_val* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m88ds3103_dev*, align 8
  %6 = alloca %struct.m88ds3103_reg_val*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [83 x i32], align 16
  store %struct.m88ds3103_dev* %0, %struct.m88ds3103_dev** %5, align 8
  store %struct.m88ds3103_reg_val* %1, %struct.m88ds3103_reg_val** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %5, align 8
  %14 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %13, i32 0, i32 2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 86
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %98

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %92, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %26
  %31 = load %struct.m88ds3103_reg_val*, %struct.m88ds3103_reg_val** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %31, i64 %33
  %35 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [83 x i32], [83 x i32]* %12, i64 0, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %71, label %44

44:                                               ; preds = %30
  %45 = load %struct.m88ds3103_reg_val*, %struct.m88ds3103_reg_val** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %45, i64 %47
  %49 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.m88ds3103_reg_val*, %struct.m88ds3103_reg_val** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %51, i64 %54
  %56 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp ne i32 %50, %58
  br i1 %59, label %71, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %5, align 8
  %64 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = srem i32 %62, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %60, %44, %30
  %72 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %5, align 8
  %73 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.m88ds3103_reg_val*, %struct.m88ds3103_reg_val** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %75, i64 %77
  %79 = getelementptr inbounds %struct.m88ds3103_reg_val, %struct.m88ds3103_reg_val* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = getelementptr inbounds [83 x i32], [83 x i32]* %12, i64 0, i64 0
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @regmap_bulk_write(i32 %74, i32 %82, i32* %83, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  br label %98

90:                                               ; preds = %71
  store i32 -1, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %26

97:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %104

98:                                               ; preds = %89, %22
  %99 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %97
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
