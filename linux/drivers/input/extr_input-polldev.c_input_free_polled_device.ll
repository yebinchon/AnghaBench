; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_input_free_polled_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_input_free_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@devm_input_polldev_release = common dso_local global i32 0, align 4
@devm_input_polldev_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_free_polled_device(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %3 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %4 = icmp ne %struct.input_polled_dev* %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %7 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %12 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @devm_input_polldev_release, align 4
  %18 = load i32, i32* @devm_input_polldev_match, align 4
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %20 = call i32 @devres_destroy(i32 %16, i32 %17, i32 %18, %struct.input_polled_dev* %19)
  %21 = call i32 @WARN_ON(i32 %20)
  br label %22

22:                                               ; preds = %10, %5
  %23 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %24 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @input_put_device(%struct.TYPE_4__* %25)
  %27 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %28 = call i32 @kfree(%struct.input_polled_dev* %27)
  br label %29

29:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_destroy(i32, i32, i32, %struct.input_polled_dev*) #1

declare dso_local i32 @input_put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.input_polled_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
