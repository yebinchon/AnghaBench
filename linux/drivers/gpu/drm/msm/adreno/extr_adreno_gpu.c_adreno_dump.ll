; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"IO:region %s 00000000 00020000\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IO:R %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adreno_dump(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %10 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %9)
  store %struct.adreno_gpu* %10, %struct.adreno_gpu** %3, align 8
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %12 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %63, %16
  %22 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %23 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %66

30:                                               ; preds = %21
  %31 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %32 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %39 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %59, %30
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @gpu_read(%struct.msm_gpu* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %47

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %4, align 4
  br label %21

66:                                               ; preds = %15, %21
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
