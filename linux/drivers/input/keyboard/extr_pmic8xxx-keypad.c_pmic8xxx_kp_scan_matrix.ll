; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_scan_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_scan_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32*, i32 }

@PM8XXX_MAX_ROWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Some key events were lost\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*, i32)* @pmic8xxx_kp_scan_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic8xxx_kp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @PM8XXX_MAX_ROWS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %89 [
    i32 1, label %19
    i32 3, label %43
    i32 2, label %64
  ]

19:                                               ; preds = %2
  %20 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %21 = call i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp* %20, i32* %14, i32* null)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %94

26:                                               ; preds = %19
  %27 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %28 = call i32 @pmic8xxx_detect_ghost_keys(%struct.pmic8xxx_kp* %27, i32* %14)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %94

31:                                               ; preds = %26
  %32 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %33 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %34 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %32, i32* %14, i32* %35)
  %37 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %38 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = mul nuw i64 4, %12
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i32* %39, i32* %14, i32 %41)
  br label %92

43:                                               ; preds = %2
  %44 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %45 = call i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp* %44, i32* %14, i32* %17)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %94

50:                                               ; preds = %43
  %51 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %52 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %53 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %51, i32* %17, i32* %54)
  %56 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %57 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %56, i32* %14, i32* %17)
  %58 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %59 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = mul nuw i64 4, %12
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i32* %60, i32* %14, i32 %62)
  br label %92

64:                                               ; preds = %2
  %65 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %66 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %70 = call i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp* %69, i32* %14, i32* %17)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %94

75:                                               ; preds = %64
  %76 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %77 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %78 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %76, i32* %17, i32* %79)
  %81 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %82 = call i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp* %81, i32* %14, i32* %17)
  %83 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %4, align 8
  %84 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = mul nuw i64 4, %12
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %85, i32* %14, i32 %87)
  br label %92

89:                                               ; preds = %2
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %75, %50, %31
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %73, %48, %30, %24
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp*, i32*, i32*) #2

declare dso_local i32 @pmic8xxx_detect_ghost_keys(%struct.pmic8xxx_kp*, i32*) #2

declare dso_local i32 @__pmic8xxx_kp_scan_matrix(%struct.pmic8xxx_kp*, i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @dev_dbg(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
