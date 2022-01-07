; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_min_dcef_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_min_dcef_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_set_min_dcef_deep_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_min_dcef_deep_sleep(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %5, i32 0, i32 1
  store %struct.smu_table_context* %6, %struct.smu_table_context** %4, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %14 = icmp ne %struct.smu_table_context* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %12
  %19 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %20 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %21 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 100
  %25 = call i32 @smu_set_deep_sleep_dcefclk(%struct.smu_context* %19, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %15, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @smu_set_deep_sleep_dcefclk(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
