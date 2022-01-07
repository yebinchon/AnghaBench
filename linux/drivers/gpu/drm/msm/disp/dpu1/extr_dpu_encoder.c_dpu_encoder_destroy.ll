; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*)* }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"expected 0 num_phys_encs not %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dpu_encoder_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_destroy(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = icmp ne %struct.drm_encoder* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %11)
  store %struct.dpu_encoder_virt* %12, %struct.dpu_encoder_virt** %3, align 8
  %13 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %14 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %58, %10
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %25, i32 0, i32 2
  %27 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %27, i64 %29
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %30, align 8
  store %struct.dpu_encoder_phys* %31, %struct.dpu_encoder_phys** %5, align 8
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %33 = icmp ne %struct.dpu_encoder_phys* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %24
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %37, align 8
  %39 = icmp ne i32 (%struct.dpu_encoder_phys*)* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %43, align 8
  %45 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %46 = call i32 %44(%struct.dpu_encoder_phys* %45)
  %47 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %48 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %51, i32 0, i32 2
  %53 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %53, i64 %55
  store %struct.dpu_encoder_phys* null, %struct.dpu_encoder_phys** %56, align 8
  br label %57

57:                                               ; preds = %40, %34, %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %18

61:                                               ; preds = %18
  %62 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %63 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %68 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %69 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %74 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %76 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %79 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %78)
  %80 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %81 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %80, i32 0, i32 1
  %82 = call i32 @mutex_destroy(i32* %81)
  br label %83

83:                                               ; preds = %72, %8
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
