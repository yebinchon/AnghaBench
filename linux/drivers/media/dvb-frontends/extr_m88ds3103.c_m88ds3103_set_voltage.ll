; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fe_sec_voltage=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid fe_sec_voltage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @m88ds3103_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %13, align 8
  store %struct.m88ds3103_dev* %14, %struct.m88ds3103_dev** %6, align 8
  %15 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %16 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %23 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %34 [
    i32 129, label %31
    i32 130, label %32
    i32 128, label %33
  ]

31:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

32:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

33:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %40

34:                                               ; preds = %29
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %67

40:                                               ; preds = %33, %32, %31
  %41 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %42 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %49 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %55, 1
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 0
  %59 = or i32 %56, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %60, i32 162, i32 3, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  br label %67

66:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %73

67:                                               ; preds = %65, %34, %26
  %68 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
