; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_get_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_get_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipoctal_channel* }
%struct.ipoctal_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* @ipoctal_get_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoctal_get_icount(%struct.tty_struct* %0, %struct.serial_icounter_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_icounter_struct*, align 8
  %5 = alloca %struct.ipoctal_channel*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_icounter_struct* %1, %struct.serial_icounter_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  store %struct.ipoctal_channel* %8, %struct.ipoctal_channel** %5, align 8
  %9 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %10 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %12 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %14 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %22 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %28 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %34 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %40 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serial_icounter_struct*, %struct.serial_icounter_struct** %4, align 8
  %46 = getelementptr inbounds %struct.serial_icounter_struct, %struct.serial_icounter_struct* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
