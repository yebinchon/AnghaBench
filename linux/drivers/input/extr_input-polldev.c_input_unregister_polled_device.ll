; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_input_unregister_polled_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-polldev.c_input_unregister_polled_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@devm_input_polldev_unregister = common dso_local global i32 0, align 4
@devm_input_polldev_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_unregister_polled_device(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %3 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %4 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %9 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @devm_input_polldev_unregister, align 4
  %15 = load i32, i32* @devm_input_polldev_match, align 4
  %16 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %17 = call i32 @devres_destroy(i32 %13, i32 %14, i32 %15, %struct.input_polled_dev* %16)
  %18 = call i32 @WARN_ON(i32 %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %21 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @input_unregister_device(%struct.TYPE_4__* %22)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_destroy(i32, i32, i32, %struct.input_polled_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
