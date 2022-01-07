; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c___pmic8xxx_kp_scan_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c___pmic8xxx_kp_scan_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"key [%d:%d] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@PM8XXX_ROW_SHIFT = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmic8xxx_kp*, i32*, i32*)* @__pmic8xxx_kp_scan_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.pmic8xxx_kp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %106, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %14 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %109

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %22, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %17
  br label %106

32:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %102, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %36 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %102

46:                                               ; preds = %39
  %47 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %48 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i8* %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @PM8XXX_ROW_SHIFT, align 4
  %68 = call i32 @MATRIX_SCAN_CODE(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %70 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @EV_MSC, align 4
  %73 = load i32, i32* @MSC_SCAN, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @input_event(i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %77 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %80 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @input_report_key(i32 %78, i32 %85, i32 %96)
  %98 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %99 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @input_sync(i32 %100)
  br label %102

102:                                              ; preds = %46, %45
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %33

105:                                              ; preds = %33
  br label %106

106:                                              ; preds = %105, %31
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %11

109:                                              ; preds = %11
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
