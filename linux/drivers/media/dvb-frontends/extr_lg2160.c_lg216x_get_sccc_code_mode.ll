; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_sccc_code_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_sccc_code_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg216x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATSCMH_SCCC_CODE_HLF = common dso_local global i32 0, align 4
@ATSCMH_SCCC_CODE_QTR = common dso_local global i32 0, align 4
@ATSCMH_SCCC_CODE_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg216x_state*, i32*, i32*, i32*, i32*)* @lg216x_get_sccc_code_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_get_sccc_code_mode(%struct.lg216x_state* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.lg216x_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lg216x_state* %0, %struct.lg216x_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %14 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %5
  %19 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %20 = call i32 @lg216x_read_reg(%struct.lg216x_state* %19, i32 790, i32* %11)
  store i32 %20, i32* %12, align 4
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.lg216x_state*, %struct.lg216x_state** %6, align 8
  %23 = call i32 @lg216x_read_reg(%struct.lg216x_state* %22, i32 1298, i32* %11)
  store i32 %23, i32* %12, align 4
  br label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %24, %21, %18
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @lg_fail(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %84

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 6
  %35 = and i32 %34, 3
  switch i32 %35, label %42 [
    i32 0, label %36
    i32 1, label %39
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @ATSCMH_SCCC_CODE_HLF, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @ATSCMH_SCCC_CODE_QTR, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ATSCMH_SCCC_CODE_RES, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39, %36
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 3
  switch i32 %48, label %55 [
    i32 0, label %49
    i32 1, label %52
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @ATSCMH_SCCC_CODE_HLF, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @ATSCMH_SCCC_CODE_QTR, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @ATSCMH_SCCC_CODE_RES, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 2
  %61 = and i32 %60, 3
  switch i32 %61, label %68 [
    i32 0, label %62
    i32 1, label %65
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @ATSCMH_SCCC_CODE_HLF, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  br label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @ATSCMH_SCCC_CODE_QTR, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load i32, i32* @ATSCMH_SCCC_CODE_RES, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65, %62
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 3
  switch i32 %73, label %80 [
    i32 0, label %74
    i32 1, label %77
  ]

74:                                               ; preds = %71
  %75 = load i32, i32* @ATSCMH_SCCC_CODE_HLF, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @ATSCMH_SCCC_CODE_QTR, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @ATSCMH_SCCC_CODE_RES, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77, %74
  br label %84

84:                                               ; preds = %83, %31
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local i32 @lg216x_read_reg(%struct.lg216x_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
