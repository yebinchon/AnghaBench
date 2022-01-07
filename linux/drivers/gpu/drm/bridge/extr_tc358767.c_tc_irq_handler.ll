; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@INTSTS_G = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_SYSERR = common dso_local global i32 0, align 4
@SYSSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"syserr %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GPIO%d: %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.tc_data*
  store %struct.tc_data* %13, %struct.tc_data** %6, align 8
  %14 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %15 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INTSTS_G, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %103

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @INT_SYSERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  %34 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %35 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SYSSTAT, align 4
  %38 = call i32 @regmap_read(i32 %36, i32 %37, i32* %9)
  %39 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %40 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %46 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %44
  %50 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %51 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %58 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @INT_GPIO_H(i64 %59)
  %61 = and i32 %56, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %64 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @INT_GPIO_LC(i64 %65)
  %67 = and i32 %62, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %69 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %72 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %82 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %73, i8* %77, i8* %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %55
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %55
  %89 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %90 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @drm_kms_helper_hotplug_event(i64 %92)
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %49, %44
  %96 = load %struct.tc_data*, %struct.tc_data** %6, align 8
  %97 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @INTSTS_G, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @regmap_write(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %26, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @INT_GPIO_H(i64) #1

declare dso_local i32 @INT_GPIO_LC(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i8*, i8*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
