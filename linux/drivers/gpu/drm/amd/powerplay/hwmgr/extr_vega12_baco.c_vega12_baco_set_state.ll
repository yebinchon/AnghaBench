; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_baco.c_vega12_baco_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_baco.c_vega12_baco_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@BACO_STATE_IN = common dso_local global i32 0, align 4
@pre_baco_tbl = common dso_local global i32 0, align 4
@PPSMC_MSG_EnterBaco = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@enter_baco_tbl = common dso_local global i32 0, align 4
@BACO_STATE_OUT = common dso_local global i32 0, align 4
@exit_baco_tbl = common dso_local global i32 0, align 4
@clean_baco_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega12_baco_set_state(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %8 = call i32 @smu9_baco_get_state(%struct.pp_hwmgr* %7, i32* %6)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BACO_STATE_IN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %19 = load i32, i32* @pre_baco_tbl, align 4
  %20 = load i32, i32* @pre_baco_tbl, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i64 @soc15_baco_program_registers(%struct.pp_hwmgr* %18, i32 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = load i32, i32* @PPSMC_MSG_EnterBaco, align 4
  %27 = call i64 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %25, i32 %26, i32 0)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %24
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %34 = load i32, i32* @enter_baco_tbl, align 4
  %35 = load i32, i32* @enter_baco_tbl, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i64 @soc15_baco_program_registers(%struct.pp_hwmgr* %33, i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %17
  br label %65

42:                                               ; preds = %13
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BACO_STATE_OUT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = call i32 @msleep(i32 20)
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %49 = load i32, i32* @exit_baco_tbl, align 4
  %50 = load i32, i32* @exit_baco_tbl, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = call i64 @soc15_baco_program_registers(%struct.pp_hwmgr* %48, i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %56 = load i32, i32* @clean_baco_tbl, align 4
  %57 = load i32, i32* @clean_baco_tbl, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i64 @soc15_baco_program_registers(%struct.pp_hwmgr* %55, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %68

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %61, %39, %29, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @smu9_baco_get_state(%struct.pp_hwmgr*, i32*) #1

declare dso_local i64 @soc15_baco_program_registers(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
