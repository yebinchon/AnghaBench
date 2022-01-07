; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_get_dchub_ref_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_get_dchub_ref_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn20_hubbub = type { i32 }

@DCHUBBUB_GLOBAL_TIMER_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_REFDIV = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub2_get_dchub_ref_freq(%struct.hubbub* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hubbub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dcn20_hubbub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.hubbub*, %struct.hubbub** %4, align 8
  %11 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %10)
  store %struct.dcn20_hubbub* %11, %struct.dcn20_hubbub** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %13 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_REFDIV, align 4
  %14 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_ENABLE, align 4
  %15 = call i32 @REG_GET_2(i32 %12, i32 %13, i32* %8, i32 %14, i32* %9)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = udiv i32 %22, 2
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %30, 40000
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ugt i32 %34, 60000
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %38

38:                                               ; preds = %36, %32
  br label %43

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %43

43:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
