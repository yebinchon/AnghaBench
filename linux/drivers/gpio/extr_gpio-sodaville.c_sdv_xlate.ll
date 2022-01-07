; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sodaville.c_sdv_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sodaville.c_sdv_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i32*, i32*)* @sdv_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdv_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %18 = call %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* %17)
  %19 = icmp ne %struct.device_node* %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %46

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32*, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  switch i32 %38, label %42 [
    i32 128, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %29, %29
  %40 = load i32, i32* %15, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %42, %26, %20
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
