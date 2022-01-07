; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_add_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_add_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_ad7417_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.wf_sensor_ops*, %struct.wf_ad7417_priv*, i32 }
%struct.wf_sensor_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_ad7417_priv*, i32, i8*, %struct.wf_sensor_ops*)* @wf_ad7417_add_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_ad7417_add_sensor(%struct.wf_ad7417_priv* %0, i32 %1, i8* %2, %struct.wf_sensor_ops* %3) #0 {
  %5 = alloca %struct.wf_ad7417_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wf_sensor_ops*, align 8
  store %struct.wf_ad7417_priv* %0, %struct.wf_ad7417_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.wf_sensor_ops* %3, %struct.wf_sensor_ops** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %12 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kasprintf(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %13)
  %15 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %14, i32* %21, align 8
  %22 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %23 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.wf_ad7417_priv* %22, %struct.wf_ad7417_priv** %29, align 8
  %30 = load %struct.wf_sensor_ops*, %struct.wf_sensor_ops** %8, align 8
  %31 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %32 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.wf_sensor_ops* %30, %struct.wf_sensor_ops** %37, align 8
  %38 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %39 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = call i32 @wf_register_sensor(%struct.TYPE_2__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %4
  %47 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %48 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %47, i32 0, i32 0
  %49 = call i32 @kref_get(i32* %48)
  br label %50

50:                                               ; preds = %46, %4
  ret void
}

declare dso_local i32 @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @wf_register_sensor(%struct.TYPE_2__*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
