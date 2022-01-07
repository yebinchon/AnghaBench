; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_fini_dpm_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_fini_dpm_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i64, i32*, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_fini_dpm_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_fini_dpm_context(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_dpm_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %5, i32 0, i32 0
  store %struct.smu_dpm_context* %6, %struct.smu_dpm_context** %4, align 8
  %7 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %8 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %13 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %11
  %20 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %21 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %25 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %29 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %33 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %37 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %39 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %41 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %43 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %45 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %19, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
