; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_scan_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_scan_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i16, i64 }

@MAX_MATRIX_KEY_COLS = common dso_local global i32 0, align 4
@KPDR = common dso_local global i64 0, align 8
@KPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_keypad*, i16*)* @imx_keypad_scan_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_keypad_scan_matrix(%struct.imx_keypad* %0, i16* %1) #0 {
  %3 = alloca %struct.imx_keypad*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.imx_keypad* %0, %struct.imx_keypad** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %125, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_MATRIX_KEY_COLS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %128

11:                                               ; preds = %7
  %12 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %13 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %125

20:                                               ; preds = %11
  %21 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %22 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KPDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call zeroext i16 @readw(i64 %25)
  store i16 %26, i16* %6, align 2
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %28, 65280
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %6, align 2
  %31 = load i16, i16* %6, align 2
  %32 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %33 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KPDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writew(i16 zeroext %31, i64 %36)
  %38 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %39 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KPCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call zeroext i16 @readw(i64 %42)
  store i16 %43, i16* %6, align 2
  %44 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %45 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 255
  %48 = shl i32 %47, 8
  %49 = xor i32 %48, -1
  %50 = load i16, i16* %6, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %6, align 2
  %54 = load i16, i16* %6, align 2
  %55 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %56 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KPCR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writew(i16 zeroext %54, i64 %59)
  %61 = call i32 @udelay(i32 2)
  %62 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %63 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KPCR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call zeroext i16 @readw(i64 %66)
  store i16 %67, i16* %6, align 2
  %68 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %69 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 255
  %72 = shl i32 %71, 8
  %73 = load i16, i16* %6, align 2
  %74 = zext i16 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %6, align 2
  %77 = load i16, i16* %6, align 2
  %78 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %79 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @KPCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writew(i16 zeroext %77, i64 %82)
  %84 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %85 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @KPDR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call zeroext i16 @readw(i64 %88)
  store i16 %89, i16* %6, align 2
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 8, %90
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load i16, i16* %6, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, %93
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %6, align 2
  %98 = load i16, i16* %6, align 2
  %99 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %100 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @KPDR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writew(i16 zeroext %98, i64 %103)
  %105 = call i32 @udelay(i32 5)
  %106 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %107 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @KPDR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call zeroext i16 @readw(i64 %110)
  store i16 %111, i16* %6, align 2
  %112 = load i16, i16* %6, align 2
  %113 = zext i16 %112 to i32
  %114 = xor i32 %113, -1
  %115 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %116 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %115, i32 0, i32 1
  %117 = load i16, i16* %116, align 4
  %118 = zext i16 %117 to i32
  %119 = and i32 %114, %118
  %120 = trunc i32 %119 to i16
  %121 = load i16*, i16** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %121, i64 %123
  store i16 %120, i16* %124, align 2
  br label %125

125:                                              ; preds = %20, %19
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %7

128:                                              ; preds = %7
  %129 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %130 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @KPDR, align 8
  %133 = add nsw i64 %131, %132
  %134 = call zeroext i16 @readw(i64 %133)
  store i16 %134, i16* %6, align 2
  %135 = load i16, i16* %6, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %6, align 2
  %139 = load i16, i16* %6, align 2
  %140 = load %struct.imx_keypad*, %struct.imx_keypad** %3, align 8
  %141 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @KPDR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writew(i16 zeroext %139, i64 %144)
  ret void
}

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
