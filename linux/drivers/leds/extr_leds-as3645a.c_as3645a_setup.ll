; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3645a = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@AS_FAULT_INFO_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Fault info: %02x\0A\00", align 1
@AS_MODE_INDICATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"AS_INDICATOR_AND_TIMER_REG: %02x\0A\00", align 1
@AS_INDICATOR_AND_TIMER_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"AS_CURRENT_SET_REG: %02x\0A\00", align 1
@AS_CURRENT_SET_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"AS_CONTROL_REG: %02x\0A\00", align 1
@AS_CONTROL_REG = common dso_local global i32 0, align 4
@AS_FAULT_INFO_LED_AMOUNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3645a*)* @as3645a_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_setup(%struct.as3645a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3645a*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.as3645a* %0, %struct.as3645a** %3, align 8
  %7 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %8 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %12 = load i32, i32* @AS_FAULT_INFO_REG, align 4
  %13 = call i32 @as3645a_read(%struct.as3645a* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %23 = call i32 @as3645a_set_current(%struct.as3645a* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %78

28:                                               ; preds = %18
  %29 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %30 = call i32 @as3645a_set_timeout(%struct.as3645a* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %28
  %36 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %37 = load i32, i32* @AS_MODE_INDICATOR, align 4
  %38 = call i32 @as3645a_set_control(%struct.as3645a* %36, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %78

43:                                               ; preds = %35
  %44 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %45 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %44, i32 0, i32 0
  %46 = call i32 @as3645a_get_fault(i32* %45, i32* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %78

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %54 = load i32, i32* @AS_INDICATOR_AND_TIMER_REG, align 4
  %55 = call i32 @as3645a_read(%struct.as3645a* %53, i32 %54)
  %56 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %59 = load i32, i32* @AS_CURRENT_SET_REG, align 4
  %60 = call i32 @as3645a_read(%struct.as3645a* %58, i32 %59)
  %61 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.as3645a*, %struct.as3645a** %3, align 8
  %64 = load i32, i32* @AS_CONTROL_REG, align 4
  %65 = call i32 @as3645a_read(%struct.as3645a* %63, i32 %64)
  %66 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @AS_FAULT_INFO_LED_AMOUNT, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  br label %76

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 0, %75 ]
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %49, %41, %33, %26, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @as3645a_read(%struct.as3645a*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @as3645a_set_current(%struct.as3645a*) #1

declare dso_local i32 @as3645a_set_timeout(%struct.as3645a*) #1

declare dso_local i32 @as3645a_set_control(%struct.as3645a*, i32, i32) #1

declare dso_local i32 @as3645a_get_fault(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
