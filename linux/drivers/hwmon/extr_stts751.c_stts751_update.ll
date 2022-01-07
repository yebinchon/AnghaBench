; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i64, i32, i64 }

@stts751_intervals = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*)* @stts751_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_update(%struct.stts751_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stts751_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %3, align 8
  %6 = load i32*, i32** @stts751_intervals, align 8
  %7 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @msecs_to_jiffies(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %15 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i64 @time_after(i64 %13, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %24 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %29 = call i32 @stts751_update_temp(%struct.stts751_priv* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %27
  %35 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %36 = call i32 @stts751_update_alert(%struct.stts751_priv* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %34
  %42 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %43 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %46 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %22
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %39, %32
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @stts751_update_temp(%struct.stts751_priv*) #1

declare dso_local i32 @stts751_update_alert(%struct.stts751_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
