; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32 }

@rpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"setting pen detect pull-up to %d Ohms\0A\00", align 1
@five_wire = common dso_local global i64 0, align 8
@WM9713_45W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"setting 5-wire touchscreen mode.\00", align 1
@pil = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Pressure measurement not supported in 5 wire mode, disabling\0A\00", align 1
@WM9712_PIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 400uA.\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"setting pressure measurement current to 200uA.\00", align 1
@pressure = common dso_local global i64 0, align 8
@delay = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"supplied delay out of range.\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"setting adc sample delay to %d u Secs.\00", align 1
@delay_table = common dso_local global i32* null, align 8
@mask = common dso_local global i32 0, align 4
@coord = common dso_local global i64 0, align 8
@WM9713_WAIT = common dso_local global i32 0, align 4
@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG2 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG3 = common dso_local global i32 0, align 4
@AC97_GPIO_STICKY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @wm9713_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9713_phy_init(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 @WM97XX_DELAY(i32 4)
  %7 = call i32 @WM97XX_SLT(i32 5)
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 @WM9712_RPU(i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @rpu, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 65472
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @rpu, align 4
  %16 = call i32 @WM9712_RPU(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @rpu, align 4
  %23 = sdiv i32 64000, %22
  %24 = call i32 (i32, i8*, ...) @dev_info(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i64, i64* @five_wire, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* @WM9713_45W, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %33 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_info(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @pil, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %40 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @pil, align 4
  br label %43

43:                                               ; preds = %38, %28
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* @pil, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @WM9712_PIL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %52 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_info(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %64

55:                                               ; preds = %44
  %56 = load i32, i32* @pil, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %60 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @dev_info(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %55
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* @pil, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i64 0, i64* @pressure, align 8
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* @delay, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @delay, align 4
  %73 = icmp sgt i32 %72, 15
  br i1 %73, label %74, label %88

74:                                               ; preds = %71, %68
  %75 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %76 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_info(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* @delay, align 4
  %79 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %80 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @delay_table, align 8
  %83 = load i32, i32* @delay, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @dev_info(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %74, %71
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 65295
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @delay, align 4
  %92 = call i32 @WM97XX_DELAY(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @mask, align 4
  %96 = and i32 %95, 3
  %97 = shl i32 %96, 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i64, i64* @coord, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %88
  %103 = load i32, i32* @WM9713_WAIT, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %88
  %107 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %108 = call i32 @wm97xx_reg_read(%struct.wm97xx* %107, i32 90)
  %109 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %110 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %112 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @wm97xx_reg_write(%struct.wm97xx* %111, i32 %112, i32 %113)
  %115 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %116 = load i32, i32* @AC97_WM9713_DIG2, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @wm97xx_reg_write(%struct.wm97xx* %115, i32 %116, i32 %117)
  %119 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %120 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @wm97xx_reg_write(%struct.wm97xx* %119, i32 %120, i32 %121)
  %123 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %124 = load i32, i32* @AC97_GPIO_STICKY, align 4
  %125 = call i32 @wm97xx_reg_write(%struct.wm97xx* %123, i32 %124, i32 0)
  ret void
}

declare dso_local i32 @WM97XX_DELAY(i32) #1

declare dso_local i32 @WM97XX_SLT(i32) #1

declare dso_local i32 @WM9712_RPU(i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
