; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_validate_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_validate_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: invalid GPIO (errorpointer)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: invalid GPIO (no device)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: backing chip is gone\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_desc*, i8*)* @validate_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_desc(%struct.gpio_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i8*, align 8
  store %struct.gpio_desc* %0, %struct.gpio_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %7 = icmp ne %struct.gpio_desc* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

9:                                                ; preds = %2
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %11 = call i64 @IS_ERR(%struct.gpio_desc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.gpio_desc* %16)
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %9
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %30 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %37 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35, %23, %13, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
