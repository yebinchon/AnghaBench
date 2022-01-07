; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_update_hw_cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_update_hw_cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i64, i64*)* @update_hw_cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_hw_cntrs(%struct.msm_gpu* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %12 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %20 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @min(i64 %18, i32 %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %43, %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %32 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @gpu_read(%struct.msm_gpu* %30, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %17, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %23

46:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %17, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %57 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %55, %62
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %47

71:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %75 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %17, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %84 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  ret i32 %93
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @gpu_read(%struct.msm_gpu*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
