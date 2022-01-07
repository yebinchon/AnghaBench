; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.dpu_rm_hw_iter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"type %d id %d already reserved\0A\00", align 1
@ENAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't find type %d id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_rm*, i64, i64, i32)* @_dpu_rm_reserve_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_rm_reserve_intf(%struct.dpu_rm* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_rm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpu_rm_hw_iter, align 8
  %11 = alloca i32, align 4
  store %struct.dpu_rm* %0, %struct.dpu_rm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter* %10, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %25, %4
  %15 = load %struct.dpu_rm*, %struct.dpu_rm** %6, align 8
  %16 = call i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm* %15, %struct.dpu_rm_hw_iter* %10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %14

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @RESERVED_BY_OTHER(%struct.TYPE_2__* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i32, i32* @ENAVAIL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @trace_dpu_rm_reserve_intf(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %38, %14
  %50 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %53, %32
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter*, i32, i32) #1

declare dso_local i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm*, %struct.dpu_rm_hw_iter*) #1

declare dso_local i64 @RESERVED_BY_OTHER(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @DPU_ERROR(i8*, i32, i64) #1

declare dso_local i32 @trace_dpu_rm_reserve_intf(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
