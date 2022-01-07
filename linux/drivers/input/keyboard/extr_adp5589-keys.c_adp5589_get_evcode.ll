; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_get_evcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_get_evcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5589_kpad = type { i16*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@KEY_EV_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RESET/UNLOCK key not in keycode map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp5589_kpad*, i16)* @adp5589_get_evcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5589_get_evcode(%struct.adp5589_kpad* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adp5589_kpad*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.adp5589_kpad* %0, %struct.adp5589_kpad** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %10 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %7
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %19 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %18, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %17, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @KEY_EV_PRESSED, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %4, align 8
  %38 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
