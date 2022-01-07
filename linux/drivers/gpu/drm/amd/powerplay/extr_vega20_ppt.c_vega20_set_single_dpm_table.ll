; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_single_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_single_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SMU_MSG_GetDpmFreqByIndex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[GetNumOfDpmLevel] failed to get dpm levels!\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[GetNumOfDpmLevel] number of clk levels is invalid!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"[GetDpmFreqByIndex] failed to get dpm freq by index!\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"[GetDpmFreqByIndex] clk value is invalid!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.vega20_single_dpm_table*, i32)* @vega20_set_single_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_single_dpm_table(%struct.smu_context* %0, %struct.vega20_single_dpm_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca %struct.vega20_single_dpm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store %struct.vega20_single_dpm_table* %1, %struct.vega20_single_dpm_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = load i32, i32* @SMU_MSG_GetDpmFreqByIndex, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %15, 255
  %17 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %12, i32 %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %25 = call i32 @smu_read_smc_arg(%struct.smu_context* %24, i32* %10)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %6, align 8
  %35 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %78, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %36
  %41 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %42 = load i32, i32* @SMU_MSG_GetDpmFreqByIndex, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %41, i32 %42, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %40
  %54 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %55 = call i32 @smu_read_smc_arg(%struct.smu_context* %54, i32* %11)
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %6, align 8
  %65 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  %71 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %6, align 8
  %72 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %36

81:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %58, %50, %28, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_read_smc_arg(%struct.smu_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
