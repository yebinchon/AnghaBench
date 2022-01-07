; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_init_recovery_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx.c_i2c_imx_init_recovery_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_i2c_struct = type { %struct.TYPE_2__, i8*, i8*, i8*, %struct.i2c_bus_recovery_info }
%struct.TYPE_2__ = type { %struct.i2c_bus_recovery_info* }
%struct.i2c_bus_recovery_info = type { i32, i32, i32, i8*, i8* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@GPIOD_OUT_HIGH_OPEN_DRAIN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"recovery information incomplete\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"using scl%s for recovery\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c",sda\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@i2c_imx_prepare_recovery = common dso_local global i32 0, align 4
@i2c_imx_unprepare_recovery = common dso_local global i32 0, align 4
@i2c_generic_scl_recovery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_i2c_struct*, %struct.platform_device*)* @i2c_imx_init_recovery_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_imx_init_recovery_info(%struct.imx_i2c_struct* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_i2c_struct*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.i2c_bus_recovery_info*, align 8
  store %struct.imx_i2c_struct* %0, %struct.imx_i2c_struct** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %8 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %7, i32 0, i32 4
  store %struct.i2c_bus_recovery_info* %8, %struct.i2c_bus_recovery_info** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i8* @devm_pinctrl_get(i32* %10)
  %12 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %13 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %15 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %20 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %2
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %29 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %3, align 4
  br label %128

32:                                               ; preds = %18
  %33 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %34 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** @PINCTRL_STATE_DEFAULT, align 8
  %37 = call i8* @pinctrl_lookup_state(i8* %35, i8* %36)
  %38 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %39 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %41 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @pinctrl_lookup_state(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %45 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* @GPIOD_IN, align 4
  %49 = call i8* @devm_gpiod_get(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @GPIOD_OUT_HIGH_OPEN_DRAIN, align 4
  %55 = call i8* @devm_gpiod_get(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  %62 = load i32, i32* @EPROBE_DEFER, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %32
  %66 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  %70 = load i32, i32* @EPROBE_DEFER, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65, %32
  %74 = load i32, i32* @EPROBE_DEFER, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %128

76:                                               ; preds = %65
  %77 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %78 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %76
  %83 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %84 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %90 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %96 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %88, %82, %76
  %101 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %128

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* @i2c_imx_prepare_recovery, align 4
  %116 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %117 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @i2c_imx_unprepare_recovery, align 4
  %119 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %120 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @i2c_generic_scl_recovery, align 4
  %122 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %123 = getelementptr inbounds %struct.i2c_bus_recovery_info, %struct.i2c_bus_recovery_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.i2c_bus_recovery_info*, %struct.i2c_bus_recovery_info** %6, align 8
  %125 = load %struct.imx_i2c_struct*, %struct.imx_i2c_struct** %4, align 8
  %126 = getelementptr inbounds %struct.imx_i2c_struct, %struct.imx_i2c_struct* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store %struct.i2c_bus_recovery_info* %124, %struct.i2c_bus_recovery_info** %127, align 8
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %105, %100, %73, %24
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i8* @devm_pinctrl_get(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
