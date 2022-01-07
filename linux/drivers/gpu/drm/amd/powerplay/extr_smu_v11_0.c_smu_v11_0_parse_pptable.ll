; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_parse_pptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_parse_pptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, %struct.smu_table* }
%struct.smu_table = type { i32 }

@SMU_TABLE_PPTABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_parse_pptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_parse_pptable(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.smu_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store %struct.smu_table_context* %8, %struct.smu_table_context** %5, align 8
  %9 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %10 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %9, i32 0, i32 1
  %11 = load %struct.smu_table*, %struct.smu_table** %10, align 8
  %12 = load i64, i64* @SMU_TABLE_PPTABLE, align 8
  %13 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %11, i64 %12
  store %struct.smu_table* %13, %struct.smu_table** %6, align 8
  %14 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %15 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.smu_table*, %struct.smu_table** %6, align 8
  %23 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @kzalloc(i32 %24, i32 %25)
  %27 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %28 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %30 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %38 = call i32 @smu_store_powerplay_table(%struct.smu_context* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %46 = call i32 @smu_append_powerplay_table(%struct.smu_context* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %41, %33, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @smu_store_powerplay_table(%struct.smu_context*) #1

declare dso_local i32 @smu_append_powerplay_table(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
