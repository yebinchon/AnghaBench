; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_sch56xx_watchdog_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch56xx-common.c_sch56xx_watchdog_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sch56xx_watchdog_data = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.mutex*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.device*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.mutex = type { i32 }

@SCH56XX_REG_WDOG_CONTROL = common dso_local global i32 0, align 4
@SCH56XX_REG_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@SCH56XX_WDOG_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Watchdog not enabled by BIOS, not registering\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sch56xx watchdog\00", align 1
@WDIOF_KEEPALIVEPING = common dso_local global i32 0, align 4
@WDIOF_SETTIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@WDIOF_MAGICCLOSE = common dso_local global i32 0, align 4
@watchdog_ops = common dso_local global i32 0, align 4
@WDOG_NO_WAY_OUT = common dso_local global i32 0, align 4
@WDOG_ACTIVE = common dso_local global i32 0, align 4
@SCH56XX_WDOG_TIME_BASE_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Registering watchdog chardev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sch56xx_watchdog_data* @sch56xx_watchdog_register(%struct.device* %0, i32 %1, i32 %2, %struct.mutex* %3, i32 %4) #0 {
  %6 = alloca %struct.sch56xx_watchdog_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mutex*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sch56xx_watchdog_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mutex* %3, %struct.mutex** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mutex*, %struct.mutex** %10, align 8
  %17 = call i32 @mutex_lock(%struct.mutex* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SCH56XX_REG_WDOG_CONTROL, align 4
  %20 = call i32 @sch56xx_read_virtual_reg(i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SCH56XX_REG_WDOG_OUTPUT_ENABLE, align 4
  %23 = call i32 @sch56xx_read_virtual_reg(i32 %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.mutex*, %struct.mutex** %10, align 8
  %25 = call i32 @mutex_unlock(%struct.mutex* %24)
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store %struct.sch56xx_watchdog_data* null, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

29:                                               ; preds = %5
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.sch56xx_watchdog_data* null, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @SCH56XX_WDOG_OUTPUT_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.sch56xx_watchdog_data* null, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

43:                                               ; preds = %36, %33
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sch56xx_watchdog_data* @kzalloc(i32 88, i32 %44)
  store %struct.sch56xx_watchdog_data* %45, %struct.sch56xx_watchdog_data** %12, align 8
  %46 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %47 = icmp ne %struct.sch56xx_watchdog_data* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store %struct.sch56xx_watchdog_data* null, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %52 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mutex*, %struct.mutex** %10, align 8
  %54 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %55 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %54, i32 0, i32 5
  store %struct.mutex* %53, %struct.mutex** %55, align 8
  %56 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %57 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strlcpy(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %63 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @WDIOF_KEEPALIVEPING, align 4
  %66 = load i32, i32* @WDIOF_SETTIMEOUT, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %69 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* @nowayout, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %49
  %74 = load i32, i32* @WDIOF_MAGICCLOSE, align 4
  %75 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %76 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %49
  %81 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %82 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %81, i32 0, i32 4
  %83 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %84 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %85, align 8
  %86 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %87 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  store i32* @watchdog_ops, i32** %88, align 8
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %91 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  store %struct.device* %89, %struct.device** %92, align 8
  %93 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %94 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 60, i32* %95, align 8
  %96 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %97 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %100 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i32 15300, i32* %101, align 8
  %102 = load i64, i64* @nowayout, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %80
  %105 = load i32, i32* @WDOG_NO_WAY_OUT, align 4
  %106 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %107 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = call i32 @set_bit(i32 %105, i32* %108)
  br label %110

110:                                              ; preds = %104, %80
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @SCH56XX_WDOG_OUTPUT_ENABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @WDOG_ACTIVE, align 4
  %117 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %118 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = call i32 @set_bit(i32 %116, i32* %119)
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @SCH56XX_WDOG_TIME_BASE_SEC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %128 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %127, i32 0, i32 0
  store i32 60, i32* %128, align 8
  br label %132

129:                                              ; preds = %121
  %130 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %131 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %135 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %138 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %140 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %139, i32 0, i32 3
  %141 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %142 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %140, %struct.sch56xx_watchdog_data* %141)
  %143 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %144 = getelementptr inbounds %struct.sch56xx_watchdog_data, %struct.sch56xx_watchdog_data* %143, i32 0, i32 3
  %145 = call i32 @watchdog_register_device(%struct.TYPE_5__* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %132
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  %152 = call i32 @kfree(%struct.sch56xx_watchdog_data* %151)
  store %struct.sch56xx_watchdog_data* null, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

153:                                              ; preds = %132
  %154 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %12, align 8
  store %struct.sch56xx_watchdog_data* %154, %struct.sch56xx_watchdog_data** %6, align 8
  br label %155

155:                                              ; preds = %153, %148, %48, %41, %32, %28
  %156 = load %struct.sch56xx_watchdog_data*, %struct.sch56xx_watchdog_data** %6, align 8
  ret %struct.sch56xx_watchdog_data* %156
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @sch56xx_read_virtual_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.sch56xx_watchdog_data* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.sch56xx_watchdog_data*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.sch56xx_watchdog_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
