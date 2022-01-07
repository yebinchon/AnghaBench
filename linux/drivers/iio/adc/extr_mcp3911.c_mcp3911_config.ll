; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp3911.c_mcp3911_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp3911 = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"device-addr\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"invalid device address (%i). Must be in range 0-3.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"use device address %i\0A\00", align 1
@MCP3911_REG_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"use external voltage reference\0A\00", align 1
@MCP3911_CONFIG_VREFEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"use internal voltage reference (1.2V)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"use external clock as clocksource\0A\00", align 1
@MCP3911_CONFIG_CLKEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"use crystal oscillator as clocksource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp3911*, %struct.device_node*)* @mcp3911_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp3911_config(%struct.mcp3911* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcp3911*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcp3911* %0, %struct.mcp3911** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %10 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %9, i32 0, i32 0
  %11 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %13 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %18 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %22 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %2
  %28 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %29 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %33 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %37 = load i32, i32* @MCP3911_REG_CONFIG, align 4
  %38 = call i32 @mcp3911_read(%struct.mcp3911* %36, i32 %37, i32* %6, i32 2)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %96

43:                                               ; preds = %27
  %44 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %45 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %50 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @MCP3911_CONFIG_VREFEXT, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %67

57:                                               ; preds = %43
  %58 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %59 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @MCP3911_CONFIG_VREFEXT, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %57, %48
  %68 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %69 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %74 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @MCP3911_CONFIG_CLKEXT, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %91

81:                                               ; preds = %67
  %82 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %83 = getelementptr inbounds %struct.mcp3911, %struct.mcp3911* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @MCP3911_CONFIG_CLKEXT, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %81, %72
  %92 = load %struct.mcp3911*, %struct.mcp3911** %4, align 8
  %93 = load i32, i32* @MCP3911_REG_CONFIG, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mcp3911_write(%struct.mcp3911* %92, i32 %93, i32 %94, i32 2)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %41, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mcp3911_read(%struct.mcp3911*, i32, i32*, i32) #1

declare dso_local i32 @mcp3911_write(%struct.mcp3911*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
