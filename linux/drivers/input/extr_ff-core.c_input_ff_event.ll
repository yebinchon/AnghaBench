; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-core.c_input_ff_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-core.c_input_ff_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.ff_device* }
%struct.ff_device = type { i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)* }

@EV_FF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ff_device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 1
  %13 = load %struct.ff_device*, %struct.ff_device** %12, align 8
  store %struct.ff_device* %13, %struct.ff_device** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @EV_FF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %69

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %54 [
    i32 128, label %20
    i32 129, label %37
  ]

20:                                               ; preds = %18
  %21 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @test_bit(i32 128, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp ugt i32 %27, 65535
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  br label %68

30:                                               ; preds = %26
  %31 = load %struct.ff_device*, %struct.ff_device** %10, align 8
  %32 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %31, i32 0, i32 2
  %33 = load i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)** %32, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 %33(%struct.input_dev* %34, i32 %35)
  br label %68

37:                                               ; preds = %18
  %38 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @test_bit(i32 129, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = icmp ugt i32 %44, 65535
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %37
  br label %68

47:                                               ; preds = %43
  %48 = load %struct.ff_device*, %struct.ff_device** %10, align 8
  %49 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %48, i32 0, i32 1
  %50 = load i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)** %49, align 8
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 %50(%struct.input_dev* %51, i32 %52)
  br label %68

54:                                               ; preds = %18
  %55 = load %struct.ff_device*, %struct.ff_device** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @check_effect_access(%struct.ff_device* %55, i32 %56, i32* null)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ff_device*, %struct.ff_device** %10, align 8
  %61 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %60, i32 0, i32 0
  %62 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %61, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 %62(%struct.input_dev* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %67, %47, %46, %30, %29
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %17
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @check_effect_access(%struct.ff_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
