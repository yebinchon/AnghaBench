; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_35597_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_35597_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.truly_nt35597 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@regulator_enable_loads = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.truly_nt35597*)* @truly_35597_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_35597_power_on(%struct.truly_nt35597* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.truly_nt35597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.truly_nt35597* %0, %struct.truly_nt35597** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %9 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %15 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @regulator_enable_loads, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_set_load(i32 %21, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %38 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %39)
  %41 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %42 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @regulator_bulk_enable(i32 %40, %struct.TYPE_3__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %36
  %50 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %51 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gpiod_set_value(i32 %52, i32 0)
  %54 = call i32 @usleep_range(i32 10000, i32 20000)
  %55 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %56 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gpiod_set_value(i32 %57, i32 1)
  %59 = call i32 @usleep_range(i32 10000, i32 20000)
  %60 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %61 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @gpiod_set_value(i32 %62, i32 0)
  %64 = call i32 @usleep_range(i32 10000, i32 20000)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %49, %47, %30
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
