; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_set_pp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_sys_set_pp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, %struct.smu_table_context }
%struct.smu_table_context = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pp table size not matched !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"smu reset failed, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_sys_set_pp_table(%struct.smu_context* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.smu_table_context*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 2
  store %struct.smu_table_context* %12, %struct.smu_table_context** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %16 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %86

32:                                               ; preds = %22
  %33 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %37 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64 @kzalloc(i64 %41, i32 %42)
  %44 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %45 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %48 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %81

54:                                               ; preds = %46
  %55 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %56 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memcpy(i64 %57, i8* %58, i64 %59)
  %61 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %62 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %65 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %68 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %70 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %73 = call i32 @smu_reset(%struct.smu_context* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %54
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %54
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %51
  %82 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %83 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %79, %28, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smu_reset(%struct.smu_context*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
