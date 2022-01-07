; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.rtl2830_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"index=%d pid=%04x onoff=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @rtl2830_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_pid_filter(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.rtl2830_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.rtl2830_dev* %18, %struct.rtl2830_dev** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 8191
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %4
  store i32 0, i32* %5, align 4
  br label %100

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %37 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %42 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %41, i32 0, i32 0
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %46 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 0
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %52 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %58 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %11, align 8
  %64 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 24
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %71 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %69, i32 98, i32* %70, i32 4)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %44
  br label %94

75:                                               ; preds = %44
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %78, i32* %79, align 16
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 0
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 102, %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %89 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %84, i32 %87, i32* %88, i32 2)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %94

93:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %100

94:                                               ; preds = %92, %74
  %95 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %93, %30
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rtl2830_bulk_write(%struct.i2c_client*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
