; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_verify_allow_pstate_change_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_verify_allow_pstate_change_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn10_hubbub = type { i32 }

@hubbub1_verify_allow_pstate_change_high.pstate_wait_timeout_us = internal global i32 200, align 4
@hubbub1_verify_allow_pstate_change_high.pstate_wait_expected_timeout_us = internal global i32 40, align 4
@hubbub1_verify_allow_pstate_change_high.max_sampled_pstate_wait_us = internal global i32 0, align 4
@hubbub1_verify_allow_pstate_change_high.forced_pstate_allow = internal global i32 0, align 4
@DCHUBBUB_ARB_DRAM_STATE_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE = common dso_local global i32 0, align 4
@DCHUBBUB_TEST_DEBUG_INDEX = common dso_local global i32 0, align 4
@DCHUBBUB_TEST_DEBUG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pstate took longer than expected ~%dus\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pstate TEST_DEBUG_DATA: 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubbub1_verify_allow_pstate_change_high(%struct.hubbub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dcn10_hubbub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  %7 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %8 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %7)
  store %struct.dcn10_hubbub* %8, %struct.dcn10_hubbub** %4, align 8
  %9 = load i32, i32* @hubbub1_verify_allow_pstate_change_high.forced_pstate_allow, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @DCHUBBUB_ARB_DRAM_STATE_CNTL, align 4
  %13 = load i32, i32* @DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE, align 4
  %14 = load i32, i32* @DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE, align 4
  %15 = call i32 @REG_UPDATE_2(i32 %12, i32 %13, i32 0, i32 %14, i32 0)
  store i32 0, i32* @hubbub1_verify_allow_pstate_change_high.forced_pstate_allow, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @DCHUBBUB_TEST_DEBUG_INDEX, align 4
  %18 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %4, align 8
  %19 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_WRITE(i32 %17, i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %48, %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @hubbub1_verify_allow_pstate_change_high.pstate_wait_timeout_us, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, i32* @DCHUBBUB_TEST_DEBUG_DATA, align 4
  %28 = call i32 @REG_READ(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1073741824
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @hubbub1_verify_allow_pstate_change_high.pstate_wait_expected_timeout_us, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %32
  store i32 1, i32* %2, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load i32, i32* @hubbub1_verify_allow_pstate_change_high.max_sampled_pstate_wait_us, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @hubbub1_verify_allow_pstate_change_high.max_sampled_pstate_wait_us, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i32, i32* @DCHUBBUB_ARB_DRAM_STATE_CNTL, align 4
  %53 = load i32, i32* @DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_VALUE, align 4
  %54 = load i32, i32* @DCHUBBUB_ARB_ALLOW_PSTATE_CHANGE_FORCE_ENABLE, align 4
  %55 = call i32 @REG_UPDATE_2(i32 %52, i32 %53, i32 1, i32 %54, i32 1)
  store i32 1, i32* @hubbub1_verify_allow_pstate_change_high.forced_pstate_allow, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %39
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
