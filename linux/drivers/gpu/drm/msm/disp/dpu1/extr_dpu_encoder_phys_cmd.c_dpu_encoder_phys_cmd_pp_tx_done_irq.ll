; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_pp_tx_done_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_pp_tx_done_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, %struct.dpu_encoder_phys*, i32)* }

@DPU_ENCODER_FRAME_EVENT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pp_done_irq\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dpu_encoder_phys_cmd_pp_tx_done_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_pp_tx_done_irq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.dpu_encoder_phys*
  store %struct.dpu_encoder_phys* %10, %struct.dpu_encoder_phys** %5, align 8
  %11 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_DONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %13 = icmp ne %struct.dpu_encoder_phys* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %72

20:                                               ; preds = %14
  %21 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %25, align 8
  %27 = icmp ne i32 (i32, %struct.dpu_encoder_phys*, i32)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %32, align 8
  %34 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %33(i32 %36, %struct.dpu_encoder_phys* %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %20
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32 %43, i64 %44)
  %46 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %46, i32 0, i32 4
  %48 = call i32 @atomic_add_unless(i32* %47, i32 -1, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32 %51, i64 %52)
  %54 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DRMID(i32 %56)
  %58 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %59 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PINGPONG_0, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @trace_dpu_enc_phys_cmd_pp_tx_done(i32 %57, i64 %64, i32 %65, i32 %66)
  %68 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %69 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %68, i32 0, i32 0
  %70 = call i32 @wake_up_all(i32* %69)
  %71 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @trace_dpu_enc_phys_cmd_pp_tx_done(i32, i64, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
