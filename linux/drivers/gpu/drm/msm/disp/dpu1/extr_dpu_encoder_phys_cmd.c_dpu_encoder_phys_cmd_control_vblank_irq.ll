; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_control_vblank_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_control_vblank_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"id:%u pp:%d enable=%s/%d\0A\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@INTR_IDX_RDPTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"vblank irq err id:%u pp:%d ret:%d, enable %s/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*, i32)* @dpu_encoder_phys_cmd_control_vblank_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_cmd_control_vblank_irq(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %9 = icmp ne %struct.dpu_encoder_phys* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %2
  %16 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %10
  %20 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %20, i32 0, i32 2
  %22 = call i32 @atomic_read(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %24 = call i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %79

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %79

36:                                               ; preds = %30, %27
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DRMID(i32 %39)
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PINGPONG_0, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %47, i8* %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %58 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %57, i32 0, i32 2
  %59 = call i32 @atomic_inc_return(i32* %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %63 = load i32, i32* @INTR_IDX_RDPTR, align 4
  %64 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %78

65:                                               ; preds = %56, %36
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %70 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %69, i32 0, i32 2
  %71 = call i64 @atomic_dec_return(i32* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %75 = load i32, i32* @INTR_IDX_RDPTR, align 4
  %76 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %68, %65
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %33, %26
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %84 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DRMID(i32 %85)
  %87 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %88 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PINGPONG_0, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %86, i64 %93, i32 %94, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %82, %79
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, i8*, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
