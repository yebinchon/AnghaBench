; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_adc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_adc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32, %struct.wf_ad7417_priv* }
%struct.wf_ad7417_priv = type { i32, i32, %struct.TYPE_3__*, %struct.wf_sensor* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"ADC chan %d [%s] raw value: 0x%x, conv to: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Error reading ADC, try %d...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @wf_ad7417_adc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_ad7417_adc_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_ad7417_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %13 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %12, i32 0, i32 1
  %14 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %13, align 8
  store %struct.wf_ad7417_priv* %14, %struct.wf_ad7417_priv** %6, align 8
  %15 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %16 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %17 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %16, i32 0, i32 3
  %18 = load %struct.wf_sensor*, %struct.wf_sensor** %17, align 8
  %19 = ptrtoint %struct.wf_sensor* %15 to i64
  %20 = ptrtoint %struct.wf_sensor* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %105, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %108

31:                                               ; preds = %28
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %34 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 31
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 5
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %42 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %45 = call i32 @i2c_master_send(%struct.TYPE_3__* %43, i32* %44, i32 2)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %93

49:                                               ; preds = %31
  %50 = call i32 @msleep(i32 1)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 4, i32* %51, align 4
  %52 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %53 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %56 = call i32 @i2c_master_send(%struct.TYPE_3__* %54, i32* %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %93

60:                                               ; preds = %49
  %61 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %62 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %65 = call i32 @i2c_master_recv(%struct.TYPE_3__* %63, i32* %64, i32 2)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %93

69:                                               ; preds = %60
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %71 = call i32 @be16_to_cpup(i32* %70)
  %72 = ashr i32 %71, 6
  store i32 %72, i32* %11, align 4
  %73 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @wf_ad7417_adc_convert(%struct.wf_ad7417_priv* %73, i32 %74, i32 %75, i32* %76)
  %78 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %79 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %84 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_vdbg(i32* %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %86, i32 %88)
  %90 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %91 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  store i32 0, i32* %3, align 4
  br label %112

93:                                               ; preds = %68, %59, %48
  %94 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_dbg(i32* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 9
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i32 @msleep(i32 10)
  br label %104

104:                                              ; preds = %102, %93
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %28

108:                                              ; preds = %28
  %109 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %110 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  store i32 -1, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %69
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @wf_ad7417_adc_convert(%struct.wf_ad7417_priv*, i32, i32, i32*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
