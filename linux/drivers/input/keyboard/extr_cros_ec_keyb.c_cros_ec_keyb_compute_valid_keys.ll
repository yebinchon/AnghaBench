; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_compute_valid_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_compute_valid_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_keyb = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16*, i32 }

@KEY_BATTERY = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [27 x i8] c"valid_keys[%02d] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cros_ec_keyb*)* @cros_ec_keyb_compute_valid_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ec_keyb_compute_valid_keys(%struct.cros_ec_keyb* %0) #0 {
  %2 = alloca %struct.cros_ec_keyb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %2, align 8
  %8 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %9 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %12 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i16*, i16** %14, align 8
  store i16* %15, i16** %6, align 8
  %16 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %17 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %83, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %28 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %67, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %35 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %32
  %39 = load i16*, i16** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @MATRIX_SCAN_CODE(i32 %40, i32 %41, i32 %42)
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %7, align 2
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @KEY_BATTERY, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %59 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %55, %49, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %32

70:                                               ; preds = %32
  %71 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %72 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %2, align 8
  %76 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %70
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %25

86:                                               ; preds = %25
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
