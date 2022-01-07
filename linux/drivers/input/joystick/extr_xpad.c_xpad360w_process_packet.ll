; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360w_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360w_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32, i8*)* @xpad360w_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad360w_process_packet(%struct.usb_xpad* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_xpad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xpad* %0, %struct.usb_xpad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %24 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %31 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %33 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %32, i32 0, i32 2
  %34 = call i32 @schedule_work(i32* %33)
  br label %35

35:                                               ; preds = %28, %15
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %60

43:                                               ; preds = %36
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %46 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.input_dev* @rcu_dereference(i32 %47)
  store %struct.input_dev* %48, %struct.input_dev** %7, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = icmp ne %struct.input_dev* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = call i32 @xpad360_process_packet(%struct.usb_xpad* %52, %struct.input_dev* %53, i32 %54, i8* %56)
  br label %58

58:                                               ; preds = %51, %43
  %59 = call i32 (...) @rcu_read_unlock()
  br label %60

60:                                               ; preds = %58, %42
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.input_dev* @rcu_dereference(i32) #1

declare dso_local i32 @xpad360_process_packet(%struct.usb_xpad*, %struct.input_dev*, i32, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
