; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9033_dev* }
%struct.af9033_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"index=%d pid=%04x onoff=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @af9033_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_pid_filter(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.af9033_dev*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.af9033_dev*, %struct.af9033_dev** %15, align 8
  store %struct.af9033_dev* %16, %struct.af9033_dev** %10, align 8
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %10, align 8
  %18 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %17, i32 0, i32 1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 0
  %23 = and i32 %22, 255
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %24, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 8191
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

37:                                               ; preds = %4
  %38 = load %struct.af9033_dev*, %struct.af9033_dev** %10, align 8
  %39 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %42 = call i32 @regmap_bulk_write(i32 %40, i32 8452502, i32* %41, i32 2)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %65

46:                                               ; preds = %37
  %47 = load %struct.af9033_dev*, %struct.af9033_dev** %10, align 8
  %48 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 8452500, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %65

55:                                               ; preds = %46
  %56 = load %struct.af9033_dev*, %struct.af9033_dev** %10, align 8
  %57 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 8452501, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %71

65:                                               ; preds = %63, %54, %45
  %66 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %64, %36
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
