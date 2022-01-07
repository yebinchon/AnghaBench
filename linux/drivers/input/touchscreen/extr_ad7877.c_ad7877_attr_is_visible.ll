; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7877.c_ad7877_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attribute }
%struct.attribute = type { i64 }
%struct.TYPE_3__ = type { %struct.attribute }
%struct.kobject = type { i32 }

@dev_attr_aux3 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gpio3 = common dso_local global i64 0, align 8
@dev_attr_gpio3 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i32)* @ad7877_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ad7877_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.attribute*, %struct.attribute** %5, align 8
  %9 = getelementptr inbounds %struct.attribute, %struct.attribute* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.attribute*, %struct.attribute** %5, align 8
  %12 = icmp eq %struct.attribute* %11, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_aux3, i32 0, i32 0)
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* @gpio3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %16, %13
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.attribute*, %struct.attribute** %5, align 8
  %20 = icmp eq %struct.attribute* %19, getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dev_attr_gpio3, i32 0, i32 0)
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* @gpio3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i64, i64* %7, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
