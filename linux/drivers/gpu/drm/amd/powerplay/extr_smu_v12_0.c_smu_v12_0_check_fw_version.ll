; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_check_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_check_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@.str = private unnamed_addr constant [96 x i8] c"smu driver if version = 0x%08x, smu fw if version = 0x%08x, smu fw version = 0x%08x (%d.%d.%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SMU driver if version not matched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v12_0_check_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_check_fw_version(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 255, i32* %4, align 4
  store i32 255, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = call i32 @smu_get_smc_version(%struct.smu_context* %10, i32* %4, i32* %5)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 65535
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %33 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %31, %16
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @smu_get_smc_version(%struct.smu_context*, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
