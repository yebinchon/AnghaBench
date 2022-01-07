; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_cros_ec_keyb.c_cros_ec_keyb_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_keyb = type { i32, i32, i32*, %struct.input_dev*, i32, i32, i64 }
%struct.input_dev = type { i16* }

@.str = private unnamed_addr constant [16 x i8] c"ghosting found\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"changed: [r%d c%d]: byte %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cros_ec_keyb*, i32*, i32)* @cros_ec_keyb_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ec_keyb_process(%struct.cros_ec_keyb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cros_ec_keyb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  store %struct.cros_ec_keyb* %0, %struct.cros_ec_keyb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %15 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %14, i32 0, i32 3
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %18 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @cros_ec_keyb_has_ghosting(%struct.cros_ec_keyb* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %28 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %116

31:                                               ; preds = %21, %3
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %108, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %35 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %42 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %49 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @MATRIX_SCAN_CODE(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 0
  %54 = load i16*, i16** %53, align 8
  store i16* %54, i16** %13, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  store i32 %62, i32* %10, align 4
  %63 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %64 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %45
  %77 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %78 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %85 = load i16*, i16** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %85, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @input_report_key(%struct.input_dev* %84, i16 zeroext %89, i32 %90)
  br label %92

92:                                               ; preds = %76, %45
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %39

96:                                               ; preds = %39
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %103 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %32

111:                                              ; preds = %32
  %112 = load %struct.cros_ec_keyb*, %struct.cros_ec_keyb** %4, align 8
  %113 = getelementptr inbounds %struct.cros_ec_keyb, %struct.cros_ec_keyb* %112, i32 0, i32 3
  %114 = load %struct.input_dev*, %struct.input_dev** %113, align 8
  %115 = call i32 @input_sync(%struct.input_dev* %114)
  br label %116

116:                                              ; preds = %111, %26
  ret void
}

declare dso_local i64 @cros_ec_keyb_has_ghosting(%struct.cros_ec_keyb*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i16 zeroext, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
