; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_spaceorb.c_spaceorb_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_spaceorb.c_spaceorb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.spaceorb = type { i64, i8* }

@SPACEORB_MAX_LENGTH = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @spaceorb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spaceorb_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.spaceorb*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.spaceorb* @serio_get_drvdata(%struct.serio* %8)
  store %struct.spaceorb* %9, %struct.spaceorb** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %17 = getelementptr inbounds %struct.spaceorb, %struct.spaceorb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %22 = call i32 @spaceorb_process_packet(%struct.spaceorb* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %25 = getelementptr inbounds %struct.spaceorb, %struct.spaceorb* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %28 = getelementptr inbounds %struct.spaceorb, %struct.spaceorb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPACEORB_MAX_LENGTH, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  %37 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %38 = getelementptr inbounds %struct.spaceorb, %struct.spaceorb* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.spaceorb*, %struct.spaceorb** %7, align 8
  %41 = getelementptr inbounds %struct.spaceorb, %struct.spaceorb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %36, i8* %44, align 1
  br label %45

45:                                               ; preds = %32, %26
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local %struct.spaceorb* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @spaceorb_process_packet(%struct.spaceorb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
