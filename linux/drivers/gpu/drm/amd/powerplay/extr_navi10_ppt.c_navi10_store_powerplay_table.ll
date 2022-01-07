; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_store_powerplay_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_store_powerplay_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_baco_context, %struct.smu_table_context }
%struct.smu_baco_context = type { i32, i32 }
%struct.smu_table_context = type { i32, i32, %struct.smu_11_0_powerplay_table* }
%struct.smu_11_0_powerplay_table = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_11_0_PP_PLATFORM_CAP_BACO = common dso_local global i32 0, align 4
@SMU_11_0_PP_PLATFORM_CAP_MACO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_store_powerplay_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_store_powerplay_table(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_11_0_powerplay_table*, align 8
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.smu_baco_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store %struct.smu_11_0_powerplay_table* null, %struct.smu_11_0_powerplay_table** %4, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 1
  store %struct.smu_table_context* %8, %struct.smu_table_context** %5, align 8
  %9 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 0
  store %struct.smu_baco_context* %10, %struct.smu_baco_context** %6, align 8
  %11 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %11, i32 0, i32 2
  %13 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %12, align 8
  %14 = icmp ne %struct.smu_11_0_powerplay_table* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %20 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %19, i32 0, i32 2
  %21 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %20, align 8
  store %struct.smu_11_0_powerplay_table* %21, %struct.smu_11_0_powerplay_table** %4, align 8
  %22 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %23 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %4, align 8
  %26 = getelementptr inbounds %struct.smu_11_0_powerplay_table, %struct.smu_11_0_powerplay_table* %25, i32 0, i32 2
  %27 = call i32 @memcpy(i32 %24, i32* %26, i32 4)
  %28 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %4, align 8
  %29 = getelementptr inbounds %struct.smu_11_0_powerplay_table, %struct.smu_11_0_powerplay_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %32 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %34 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %4, align 8
  %37 = getelementptr inbounds %struct.smu_11_0_powerplay_table, %struct.smu_11_0_powerplay_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SMU_11_0_PP_PLATFORM_CAP_BACO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %18
  %43 = load %struct.smu_11_0_powerplay_table*, %struct.smu_11_0_powerplay_table** %4, align 8
  %44 = getelementptr inbounds %struct.smu_11_0_powerplay_table, %struct.smu_11_0_powerplay_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SMU_11_0_PP_PLATFORM_CAP_MACO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42, %18
  %50 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %51 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %54 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
