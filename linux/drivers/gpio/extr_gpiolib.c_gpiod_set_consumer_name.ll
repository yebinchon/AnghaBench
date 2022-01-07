; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_consumer_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_gpiod_set_consumer_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiod_set_consumer_name(%struct.gpio_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i8*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %7 = call i32 @VALIDATE_DESC(%struct.gpio_desc* %6)
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kstrdup_const(i8* %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree_const(i32 %23)
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @desc_set_label(%struct.gpio_desc* %25, i8* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @VALIDATE_DESC(%struct.gpio_desc*) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @desc_set_label(%struct.gpio_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
