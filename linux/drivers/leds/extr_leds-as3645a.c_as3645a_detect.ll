; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3645a = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@AS_DESIGN_INFO_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't read design info reg\0A\00", align 1
@AS_VERSION_CONTROL_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't read version control reg\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"AS3645A not detected (model %d rfu %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"AMS, Austria Micro Systems\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ADI, Analog Devices Inc.\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"NSC, National Semiconductor\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"NXP\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"TI, Texas Instrument\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Chip vendor: %s (%d) Version: %d\0A\00", align 1
@AS_PASSWORD_REG = common dso_local global i32 0, align 4
@AS_PASSWORD_UNLOCK_VALUE = common dso_local global i32 0, align 4
@AS_BOOST_REG = common dso_local global i32 0, align 4
@AS_BOOST_CURRENT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3645a*)* @as3645a_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_detect(%struct.as3645a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3645a*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.as3645a* %0, %struct.as3645a** %3, align 8
  %11 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %12 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %16 = load i32, i32* @AS_DESIGN_INFO_REG, align 4
  %17 = call i32 @as3645a_read(%struct.as3645a* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @AS_DESIGN_INFO_FACTORY(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AS_DESIGN_INFO_MODEL(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %30 = load i32, i32* @AS_VERSION_CONTROL_REG, align 4
  %31 = call i32 @as3645a_read(%struct.as3645a* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %82

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @AS_VERSION_CONTROL_RFU(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @AS_VERSION_CONTROL_VERSION(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %38
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %82

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %62 [
    i32 1, label %57
    i32 2, label %58
    i32 3, label %59
    i32 4, label %60
    i32 5, label %61
  ]

57:                                               ; preds = %55
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %63

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %63

59:                                               ; preds = %55
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %63

60:                                               ; preds = %55
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %63

61:                                               ; preds = %55
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %63

62:                                               ; preds = %55
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %57
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_info(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %65, i32 %66, i32 %67)
  %69 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %70 = load i32, i32* @AS_PASSWORD_REG, align 4
  %71 = load i32, i32* @AS_PASSWORD_UNLOCK_VALUE, align 4
  %72 = call i32 @as3645a_write(%struct.as3645a* %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %63
  %78 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %79 = load i32, i32* @AS_BOOST_REG, align 4
  %80 = load i32, i32* @AS_BOOST_CURRENT_DISABLE, align 4
  %81 = call i32 @as3645a_write(%struct.as3645a* %78, i32 %79, i32 %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %75, %48, %34, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @as3645a_read(%struct.as3645a*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @AS_DESIGN_INFO_FACTORY(i32) #1

declare dso_local i32 @AS_DESIGN_INFO_MODEL(i32) #1

declare dso_local i32 @AS_VERSION_CONTROL_RFU(i32) #1

declare dso_local i32 @AS_VERSION_CONTROL_VERSION(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local i32 @as3645a_write(%struct.as3645a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
