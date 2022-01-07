; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_allocate_dpm_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_allocate_dpm_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_dpm_context }
%struct.smu_dpm_context = type { i32, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @arcturus_allocate_dpm_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_allocate_dpm_context(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_dpm_context*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %5, i32 0, i32 0
  store %struct.smu_dpm_context* %6, %struct.smu_dpm_context** %4, align 8
  %7 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %8 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 4, i32 %15)
  %17 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %18 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %20 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %14
  %27 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %28 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 4, i32 %35)
  %37 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %38 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %40 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %73

46:                                               ; preds = %34
  %47 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %48 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 4, i32 %49)
  %51 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %52 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %54 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %46
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 4, i32 %61)
  %63 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %64 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %4, align 8
  %66 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %57, %43, %31, %23, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
