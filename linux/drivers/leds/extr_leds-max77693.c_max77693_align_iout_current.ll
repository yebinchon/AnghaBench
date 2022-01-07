; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_align_iout_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_align_iout_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i64 }

@FLED1 = common dso_local global i64 0, align 8
@FLED2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_led_device*, i32*, i32, i32, i32)* @max77693_align_iout_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_align_iout_current(%struct.max77693_led_device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.max77693_led_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %13 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @FLED1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* @FLED1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* @FLED1, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* @FLED2, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  br label %44

36:                                               ; preds = %16
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* @FLED1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* @FLED2, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 0, i32* %43, align 4
  br label %76

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i64, i64* @FLED1, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %73, %45
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @FLED2, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load %struct.max77693_led_device*, %struct.max77693_led_device** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @max77693_fled_used(%struct.max77693_led_device* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @clamp_align(i32* %62, i32 %63, i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %53
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %48

76:                                               ; preds = %36, %48
  ret void
}

declare dso_local i64 @max77693_fled_used(%struct.max77693_led_device*, i32) #1

declare dso_local i32 @clamp_align(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
