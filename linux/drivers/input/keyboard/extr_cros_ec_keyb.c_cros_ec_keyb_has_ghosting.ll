; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_has_ghosting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_has_ghosting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_keyb = type { i32*, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"ghost found at: B[%02d]:0x%02x & B[%02d]:0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_keyb*, i32*)* @cros_ec_keyb_has_ghosting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_keyb_has_ghosting(%struct.cros_ec_keyb* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_keyb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32*, align 8
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %13 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %16 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %73, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %21 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %76

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %69, %24
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %41 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %49, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @hweight8(i32 %58)
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 1, i32* %3, align 4
  br label %77

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %38

72:                                               ; preds = %38
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %18

76:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
