; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5520-keys.c_adp5520_keys_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5520-keys.c_adp5520_keys_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5520_keys = type { i32, i32* }

@ADP5520_MAXKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5520_keys*, i16, i32)* @adp5520_keys_report_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5520_keys_report_event(%struct.adp5520_keys* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.adp5520_keys*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adp5520_keys* %0, %struct.adp5520_keys** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADP5520_MAXKEYS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.adp5520_keys*, %struct.adp5520_keys** %4, align 8
  %21 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.adp5520_keys*, %struct.adp5520_keys** %4, align 8
  %24 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @input_report_key(i32 %22, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.adp5520_keys*, %struct.adp5520_keys** %4, align 8
  %38 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @input_sync(i32 %39)
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
