; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_register_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_register_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@bma150_irq_open = common dso_local global i32 0, align 4
@bma150_irq_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma150_data*)* @bma150_register_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma150_register_input_device(%struct.bma150_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bma150_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %3, align 8
  %6 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %6, %struct.input_dev** %4, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = call i32 @bma150_init_input_device(%struct.bma150_data* %13, %struct.input_dev* %14)
  %16 = load i32, i32* @bma150_irq_open, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @bma150_irq_close, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %24 = call i32 @input_set_drvdata(%struct.input_dev* %22, %struct.bma150_data* %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = load %struct.bma150_data*, %struct.bma150_data** %3, align 8
  %27 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %26, i32 0, i32 0
  store %struct.input_dev* %25, %struct.input_dev** %27, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = call i32 @input_register_device(%struct.input_dev* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = call i32 @input_free_device(%struct.input_dev* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @bma150_init_input_device(%struct.bma150_data*, %struct.input_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bma150_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
