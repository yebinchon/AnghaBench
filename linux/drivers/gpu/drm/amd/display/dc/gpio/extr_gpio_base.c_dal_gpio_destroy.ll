; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gpio*, %struct.gpio*, %struct.gpio* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_gpio_destroy(%struct.gpio** %0) #0 {
  %2 = alloca %struct.gpio**, align 8
  store %struct.gpio** %0, %struct.gpio*** %2, align 8
  %3 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %4 = icmp ne %struct.gpio** %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %7 = load %struct.gpio*, %struct.gpio** %6, align 8
  %8 = icmp ne %struct.gpio* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %1
  %10 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %71

11:                                               ; preds = %5
  %12 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %13 = load %struct.gpio*, %struct.gpio** %12, align 8
  %14 = call i32 @dal_gpio_close(%struct.gpio* %13)
  %15 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %16 = load %struct.gpio*, %struct.gpio** %15, align 8
  %17 = getelementptr inbounds %struct.gpio, %struct.gpio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %65 [
    i32 132, label %19
    i32 133, label %30
    i32 131, label %41
    i32 129, label %52
    i32 128, label %63
    i32 130, label %64
  ]

19:                                               ; preds = %11
  %20 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %21 = load %struct.gpio*, %struct.gpio** %20, align 8
  %22 = getelementptr inbounds %struct.gpio, %struct.gpio* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.gpio*, %struct.gpio** %23, align 8
  %25 = call i32 @kfree(%struct.gpio* %24)
  %26 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %27 = load %struct.gpio*, %struct.gpio** %26, align 8
  %28 = getelementptr inbounds %struct.gpio, %struct.gpio* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store %struct.gpio* null, %struct.gpio** %29, align 8
  br label %66

30:                                               ; preds = %11
  %31 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %32 = load %struct.gpio*, %struct.gpio** %31, align 8
  %33 = getelementptr inbounds %struct.gpio, %struct.gpio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load %struct.gpio*, %struct.gpio** %34, align 8
  %36 = call i32 @kfree(%struct.gpio* %35)
  %37 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %38 = load %struct.gpio*, %struct.gpio** %37, align 8
  %39 = getelementptr inbounds %struct.gpio, %struct.gpio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store %struct.gpio* null, %struct.gpio** %40, align 8
  br label %66

41:                                               ; preds = %11
  %42 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %43 = load %struct.gpio*, %struct.gpio** %42, align 8
  %44 = getelementptr inbounds %struct.gpio, %struct.gpio* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.gpio*, %struct.gpio** %45, align 8
  %47 = call i32 @kfree(%struct.gpio* %46)
  %48 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %49 = load %struct.gpio*, %struct.gpio** %48, align 8
  %50 = getelementptr inbounds %struct.gpio, %struct.gpio* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.gpio* null, %struct.gpio** %51, align 8
  br label %66

52:                                               ; preds = %11
  %53 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %54 = load %struct.gpio*, %struct.gpio** %53, align 8
  %55 = getelementptr inbounds %struct.gpio, %struct.gpio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.gpio*, %struct.gpio** %56, align 8
  %58 = call i32 @kfree(%struct.gpio* %57)
  %59 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %60 = load %struct.gpio*, %struct.gpio** %59, align 8
  %61 = getelementptr inbounds %struct.gpio, %struct.gpio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.gpio* null, %struct.gpio** %62, align 8
  br label %66

63:                                               ; preds = %11
  br label %66

64:                                               ; preds = %11
  br label %66

65:                                               ; preds = %11
  br label %66

66:                                               ; preds = %65, %64, %63, %52, %41, %30, %19
  %67 = load %struct.gpio**, %struct.gpio*** %2, align 8
  %68 = load %struct.gpio*, %struct.gpio** %67, align 8
  %69 = call i32 @kfree(%struct.gpio* %68)
  %70 = load %struct.gpio**, %struct.gpio*** %2, align 8
  store %struct.gpio* null, %struct.gpio** %70, align 8
  br label %71

71:                                               ; preds = %66, %9
  ret void
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @dal_gpio_close(%struct.gpio*) #1

declare dso_local i32 @kfree(%struct.gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
