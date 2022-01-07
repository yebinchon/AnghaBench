; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca8418_keypad.c_tca8418_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca8418_keypad = type { i32 }

@REG_KP_GPIO1 = common dso_local global i32 0, align 4
@REG_KP_GPIO2 = common dso_local global i32 0, align 4
@REG_KP_GPIO3 = common dso_local global i32 0, align 4
@REG_DEBOUNCE_DIS1 = common dso_local global i32 0, align 4
@REG_DEBOUNCE_DIS2 = common dso_local global i32 0, align 4
@REG_DEBOUNCE_DIS3 = common dso_local global i32 0, align 4
@REG_CFG = common dso_local global i32 0, align 4
@CFG_INT_CFG = common dso_local global i32 0, align 4
@CFG_OVR_FLOW_IEN = common dso_local global i32 0, align 4
@CFG_KE_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tca8418_keypad*, i32, i32)* @tca8418_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca8418_configure(%struct.tca8418_keypad* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tca8418_keypad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tca8418_keypad* %0, %struct.tca8418_keypad** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 -1, %10
  %12 = xor i32 %11, -1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 -1, %13
  %15 = xor i32 %14, -1
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %20 = load i32, i32* @REG_KP_GPIO1, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %26 = load i32, i32* @REG_KP_GPIO2, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %25, i32 %26, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %33 = load i32, i32* @REG_KP_GPIO3, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 16
  %36 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %32, i32 %33, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %40 = load i32, i32* @REG_DEBOUNCE_DIS1, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %46 = load i32, i32* @REG_DEBOUNCE_DIS2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %45, i32 %46, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %53 = load i32, i32* @REG_DEBOUNCE_DIS3, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 16
  %56 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %52, i32 %53, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %3
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %3
  %64 = load %struct.tca8418_keypad*, %struct.tca8418_keypad** %5, align 8
  %65 = load i32, i32* @REG_CFG, align 4
  %66 = load i32, i32* @CFG_INT_CFG, align 4
  %67 = load i32, i32* @CFG_OVR_FLOW_IEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CFG_KE_IEN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @tca8418_write_byte(%struct.tca8418_keypad* %64, i32 %65, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %63, %61
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @tca8418_write_byte(%struct.tca8418_keypad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
