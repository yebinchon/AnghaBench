; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.smu_context }
%struct.smu_context = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to sw fini smc table!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to init smu_fini_power!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smu_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_sw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  store %struct.smu_context* %10, %struct.smu_context** %5, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %18 = call i32 @smu_smc_table_sw_fini(%struct.smu_context* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %26 = call i32 @smu_fini_power(%struct.smu_context* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smu_smc_table_sw_fini(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_fini_power(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
