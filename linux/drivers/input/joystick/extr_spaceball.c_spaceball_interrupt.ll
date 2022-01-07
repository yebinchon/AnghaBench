; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_spaceball.c_spaceball_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_spaceball.c_spaceball_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.spaceball = type { i32, i8*, i32 }

@SPACEBALL_MAX_LENGTH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @spaceball_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spaceball_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.spaceball*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.spaceball* @serio_get_drvdata(%struct.serio* %8)
  store %struct.spaceball* %9, %struct.spaceball** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %43 [
    i32 13, label %12
    i32 94, label %19
    i32 77, label %30
    i32 81, label %30
    i32 83, label %30
  ]

12:                                               ; preds = %3
  %13 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %14 = call i32 @spaceball_process_packet(%struct.spaceball* %13)
  %15 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %16 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %18 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %21 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %26 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %69

27:                                               ; preds = %19
  %28 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %29 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %3, %3, %3, %27
  %31 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %32 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %37 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %3, %42
  %44 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %45 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %50 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %53 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SPACEBALL_MAX_LENGTH, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i8, i8* %5, align 1
  %59 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %60 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.spaceball*, %struct.spaceball** %7, align 8
  %63 = getelementptr inbounds %struct.spaceball, %struct.spaceball* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  store i8 %58, i8* %67, align 1
  br label %68

68:                                               ; preds = %57, %51
  br label %69

69:                                               ; preds = %68, %24, %12
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local %struct.spaceball* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @spaceball_process_packet(%struct.spaceball*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
