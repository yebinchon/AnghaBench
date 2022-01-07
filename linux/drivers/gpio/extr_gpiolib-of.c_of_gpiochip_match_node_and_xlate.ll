; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_match_node_and_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_gpiochip_match_node_and_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, %struct.TYPE_4__* }
%struct.of_phandle_args = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i8*)* @of_gpiochip_match_node_and_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_gpiochip_match_node_and_xlate(%struct.gpio_chip* %0, i8* %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.of_phandle_args*
  store %struct.of_phandle_args* %7, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %20, align 8
  %22 = icmp ne i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 0
  %26 = load i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i64 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %25, align 8
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %29 = call i64 %26(%struct.gpio_chip* %27, %struct.of_phandle_args* %28, i32* null)
  %30 = icmp sge i64 %29, 0
  br label %31

31:                                               ; preds = %23, %18, %2
  %32 = phi i1 [ false, %18 ], [ false, %2 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
