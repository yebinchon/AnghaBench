; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_offs_to_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-dwapb.c_dwapb_offs_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwapb_gpio_port = type { i32 }
%struct.dwapb_gpio = type { i32, %struct.dwapb_gpio_port* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwapb_gpio_port* (%struct.dwapb_gpio*, i32)* @dwapb_offs_to_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwapb_gpio_port* @dwapb_offs_to_port(%struct.dwapb_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.dwapb_gpio_port*, align 8
  %4 = alloca %struct.dwapb_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwapb_gpio_port*, align 8
  %7 = alloca i32, align 4
  store %struct.dwapb_gpio* %0, %struct.dwapb_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %11 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.dwapb_gpio*, %struct.dwapb_gpio** %4, align 8
  %16 = getelementptr inbounds %struct.dwapb_gpio, %struct.dwapb_gpio* %15, i32 0, i32 1
  %17 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %17, i64 %19
  store %struct.dwapb_gpio_port* %20, %struct.dwapb_gpio_port** %6, align 8
  %21 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %6, align 8
  %22 = getelementptr inbounds %struct.dwapb_gpio_port, %struct.dwapb_gpio_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = udiv i32 %24, 32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %6, align 8
  store %struct.dwapb_gpio_port* %28, %struct.dwapb_gpio_port** %3, align 8
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  store %struct.dwapb_gpio_port* null, %struct.dwapb_gpio_port** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.dwapb_gpio_port*, %struct.dwapb_gpio_port** %3, align 8
  ret %struct.dwapb_gpio_port* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
