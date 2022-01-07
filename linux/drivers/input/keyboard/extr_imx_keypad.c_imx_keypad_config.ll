; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i32, i64 }

@KPCR = common dso_local global i64 0, align 8
@KPDR = common dso_local global i64 0, align 8
@KDDR = common dso_local global i64 0, align 8
@KPSR = common dso_local global i64 0, align 8
@KBD_STAT_KPKR = common dso_local global i16 0, align 2
@KBD_STAT_KPKD = common dso_local global i16 0, align 2
@KBD_STAT_KDSC = common dso_local global i16 0, align 2
@KBD_STAT_KRSS = common dso_local global i16 0, align 2
@KBD_STAT_KDIE = common dso_local global i16 0, align 2
@KBD_STAT_KRIE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_keypad*)* @imx_keypad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_keypad_config(%struct.imx_keypad* %0) #0 {
  %2 = alloca %struct.imx_keypad*, align 8
  %3 = alloca i16, align 2
  store %struct.imx_keypad* %0, %struct.imx_keypad** %2, align 8
  %4 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %5 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KPCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call zeroext i16 @readw(i64 %8)
  store i16 %9, i16* %3, align 2
  %10 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %11 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 255
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %19 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 8
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %3, align 2
  %27 = load i16, i16* %3, align 2
  %28 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %29 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KPCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew(i16 zeroext %27, i64 %32)
  %34 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %35 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KPDR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call zeroext i16 @readw(i64 %38)
  store i16 %39, i16* %3, align 2
  %40 = load i16, i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %3, align 2
  %44 = load i16, i16* %3, align 2
  %45 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %46 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KPDR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writew(i16 zeroext %44, i64 %49)
  %51 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %52 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @KDDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writew(i16 zeroext -256, i64 %55)
  %57 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %58 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KPSR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call zeroext i16 @readw(i64 %61)
  store i16 %62, i16* %3, align 2
  %63 = load i16, i16* @KBD_STAT_KPKR, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @KBD_STAT_KPKD, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = load i16, i16* @KBD_STAT_KDSC, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = load i16, i16* @KBD_STAT_KRSS, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %70, %72
  %74 = load i16, i16* %3, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %3, align 2
  %78 = load i16, i16* %3, align 2
  %79 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %80 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @KPSR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writew(i16 zeroext %78, i64 %83)
  %85 = load i16, i16* @KBD_STAT_KDIE, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* %3, align 2
  %88 = zext i16 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %3, align 2
  %91 = load i16, i16* @KBD_STAT_KRIE, align 2
  %92 = zext i16 %91 to i32
  %93 = xor i32 %92, -1
  %94 = load i16, i16* %3, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, %93
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %3, align 2
  %98 = load i16, i16* %3, align 2
  %99 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %100 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @KPSR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writew(i16 zeroext %98, i64 %103)
  ret void
}

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
