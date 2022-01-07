; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipoctal_channel*, i32, i32 }
%struct.ipoctal_channel = type { i32 }
%struct.file = type { i32 }
%struct.ipoctal = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @ipoctal_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoctal_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ipoctal_channel*, align 8
  %7 = alloca %struct.ipoctal*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ipoctal_channel* @dev_get_drvdata(i32 %11)
  store %struct.ipoctal_channel* %12, %struct.ipoctal_channel** %6, align 8
  %13 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %6, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ipoctal* @chan_to_ipoctal(%struct.ipoctal_channel* %13, i32 %16)
  store %struct.ipoctal* %17, %struct.ipoctal** %7, align 8
  %18 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %6, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 0
  store %struct.ipoctal_channel* %18, %struct.ipoctal_channel** %20, align 8
  %21 = load %struct.ipoctal*, %struct.ipoctal** %7, align 8
  %22 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ipack_get_carrier(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %6, align 8
  %31 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %30, i32 0, i32 0
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = call i32 @tty_port_open(i32* %31, %struct.tty_struct* %32, %struct.file* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.ipoctal*, %struct.ipoctal** %7, align 8
  %39 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ipack_put_carrier(i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ipoctal_channel* @dev_get_drvdata(i32) #1

declare dso_local %struct.ipoctal* @chan_to_ipoctal(%struct.ipoctal_channel*, i32) #1

declare dso_local i32 @ipack_get_carrier(i32) #1

declare dso_local i32 @tty_port_open(i32*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @ipack_put_carrier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
