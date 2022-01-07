; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_temp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_temp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { %struct.wf_ad7417_priv* }
%struct.wf_ad7417_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @wf_ad7417_temp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_ad7417_temp_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_ad7417_priv*, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %11 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %10, i32 0, i32 0
  %12 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %11, align 8
  store %struct.wf_ad7417_priv* %12, %struct.wf_ad7417_priv** %6, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %15 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %17, align 16
  %18 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %22 = call i32 @i2c_master_send(i32 %20, i64* %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %31 = call i32 @i2c_master_recv(i32 %29, i64* %30, i32 2)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %46

35:                                               ; preds = %26
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %37 = bitcast i64* %36 to i32*
  %38 = call i64 @be16_to_cpup(i32* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %44 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %34, %25
  %47 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %6, align 8
  %48 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i64*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i64*, i32) #1

declare dso_local i64 @be16_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
