; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"fe_sec_tone_mode=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid fe_sec_tone_mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @m88ds3103_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %23 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %64

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %33 [
    i32 128, label %31
    i32 129, label %32
  ]

31:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  store i32 71, i32* %11, align 4
  br label %39

32:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %39

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %64

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 7
  %42 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %43 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 5
  %48 = or i32 %41, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %49, i32 162, i32 224, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %64

55:                                               ; preds = %39
  store i32 4, i32* %9, align 4
  %56 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %56, i32 161, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %70

64:                                               ; preds = %62, %54, %33, %26
  %65 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
