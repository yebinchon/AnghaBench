; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_vblank_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_vblank_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.dpu_hw_ctl* }
%struct.TYPE_4__ = type { i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*)* }
%struct.dpu_hw_ctl = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.1*)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_hw_ctl.1 = type opaque

@.str = private unnamed_addr constant [11 x i8] c"vblank_irq\00", align 1
@DPU_ENCODER_FRAME_EVENT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dpu_encoder_phys_vid_vblank_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_vblank_irq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  %6 = alloca %struct.dpu_hw_ctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.dpu_encoder_phys*
  store %struct.dpu_encoder_phys* %12, %struct.dpu_encoder_phys** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %14 = icmp ne %struct.dpu_encoder_phys* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %103

16:                                               ; preds = %2
  %17 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %17, i32 0, i32 5
  %19 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %18, align 8
  store %struct.dpu_hw_ctl* %19, %struct.dpu_hw_ctl** %6, align 8
  %20 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %21 = icmp ne %struct.dpu_hw_ctl* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %103

23:                                               ; preds = %16
  %24 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %28, align 8
  %30 = icmp ne i32 (i32, %struct.dpu_encoder_phys*)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %35, align 8
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %41 = call i32 %36(i32 %39, %struct.dpu_encoder_phys* %40)
  br label %42

42:                                               ; preds = %31, %23
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %43, i32 0, i32 4
  %45 = call i32 @atomic_read(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_lock_irqsave(i32 %48, i64 %49)
  %51 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %52 = icmp ne %struct.dpu_hw_ctl* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %55 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %56, align 8
  %58 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %61 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %62, align 8
  %64 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %65 = bitcast %struct.dpu_hw_ctl* %64 to %struct.dpu_hw_ctl.0*
  %66 = call i32 %63(%struct.dpu_hw_ctl.0* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %53, %42
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %70 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (%struct.dpu_hw_ctl.1*)*, i32 (%struct.dpu_hw_ctl.1*)** %71, align 8
  %73 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %6, align 8
  %74 = bitcast %struct.dpu_hw_ctl* %73 to %struct.dpu_hw_ctl.1*
  %75 = call i32 %72(%struct.dpu_hw_ctl.1* %74)
  %76 = and i32 %68, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %80 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %79, i32 0, i32 4
  %81 = call i32 @atomic_add_unless(i32* %80, i32 -1, i32 0)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %84 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  %88 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %88, i32 0, i32 2
  %90 = call i32 @wake_up_all(i32* %89)
  %91 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %92 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %94, align 8
  %96 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %97 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %100 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_DONE, align 4
  %101 = call i32 %95(i32 %98, %struct.dpu_encoder_phys* %99, i32 %100)
  %102 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %82, %22, %15
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
