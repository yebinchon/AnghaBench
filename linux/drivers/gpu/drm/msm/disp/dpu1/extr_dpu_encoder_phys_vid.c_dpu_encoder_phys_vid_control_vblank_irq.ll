; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_control_vblank_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_control_vblank_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"id:%u enable=%d/%d\0A\00", align 1
@INTR_IDX_VSYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"failed: id:%u intf:%d ret:%d enable:%d refcnt:%d\0A\00", align 1
@INTF_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_encoder_phys*, i32)* @dpu_encoder_phys_vid_control_vblank_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_phys_vid_control_vblank_irq(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
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
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 2
  %17 = call i32 @atomic_read(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %19 = call i32 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %66

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %25, %22
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRMID(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 2
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %45 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %44, i32 0, i32 2
  %46 = call i32 @atomic_inc_return(i32* %45)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %50 = load i32, i32* @INTR_IDX_VSYNC, align 4
  %51 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %65

52:                                               ; preds = %43, %31
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %57 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %56, i32 0, i32 2
  %58 = call i64 @atomic_dec_return(i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %62 = load i32, i32* @INTR_IDX_VSYNC, align 4
  %63 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %55, %52
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %28, %21
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %71 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DRMID(i32 %72)
  %74 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %75 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INTF_0, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %69, %66
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %10
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dpu_encoder_phys_vid_is_master(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
