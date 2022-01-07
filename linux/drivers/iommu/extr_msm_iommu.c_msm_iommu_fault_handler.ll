; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_iommu_dev = type { i32, i64 }

@msm_iommu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid device ID in context interrupt handler\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected IOMMU page fault!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"base = %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Fault occurred in context %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Interesting registers:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_iommu_fault_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msm_iommu_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.msm_iommu_dev*
  store %struct.msm_iommu_dev* %10, %struct.msm_iommu_dev** %5, align 8
  %11 = call i32 @spin_lock(i32* @msm_iommu_lock)
  %12 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %13 = icmp ne %struct.msm_iommu_dev* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %64

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %19 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %24 = call i32 @__enable_clocks(%struct.msm_iommu_dev* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %64

28:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %32 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %37 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @GET_FSR(i64 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %48 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @print_ctx_regs(i64 %49, i32 %50)
  %52 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %53 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @SET_FSR(i64 %54, i32 %55, i32 1073741839)
  br label %57

57:                                               ; preds = %43, %35
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %5, align 8
  %63 = call i32 @__disable_clocks(%struct.msm_iommu_dev* %62)
  br label %64

64:                                               ; preds = %61, %27, %14
  %65 = call i32 @spin_unlock(i32* @msm_iommu_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @__enable_clocks(%struct.msm_iommu_dev*) #1

declare dso_local i32 @GET_FSR(i64, i32) #1

declare dso_local i32 @print_ctx_regs(i64, i32) #1

declare dso_local i32 @SET_FSR(i64, i32, i32) #1

declare dso_local i32 @__disable_clocks(%struct.msm_iommu_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
