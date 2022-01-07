; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_init_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_power_context }
%struct.smu_power_context = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_init_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_init_power(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_power_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %5, i32 0, i32 1
  store %struct.smu_power_context* %6, %struct.smu_power_context** %4, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.smu_power_context*, %struct.smu_power_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.smu_power_context*, %struct.smu_power_context** %4, align 8
  %19 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %17
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64 @kzalloc(i32 4, i32 %26)
  %28 = load %struct.smu_power_context*, %struct.smu_power_context** %4, align 8
  %29 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.smu_power_context*, %struct.smu_power_context** %4, align 8
  %31 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.smu_power_context*, %struct.smu_power_context** %4, align 8
  %39 = getelementptr inbounds %struct.smu_power_context, %struct.smu_power_context* %38, i32 0, i32 0
  store i32 4, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %34, %22, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
