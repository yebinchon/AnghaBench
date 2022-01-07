; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_pp_rd_ptr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_pp_rd_ptr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.dpu_encoder_phys*)* }
%struct.dpu_encoder_phys_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"rd_ptr_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dpu_encoder_phys_cmd_pp_rd_ptr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_pp_rd_ptr_irq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  %6 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.dpu_encoder_phys*
  store %struct.dpu_encoder_phys* %8, %struct.dpu_encoder_phys** %5, align 8
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %10 = icmp ne %struct.dpu_encoder_phys* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %46

17:                                               ; preds = %11
  %18 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %20 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %19)
  store %struct.dpu_encoder_phys_cmd* %20, %struct.dpu_encoder_phys_cmd** %6, align 8
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %24, align 8
  %26 = icmp ne i32 (i32, %struct.dpu_encoder_phys*)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %31, align 8
  %33 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %37 = call i32 %32(i32 %35, %struct.dpu_encoder_phys* %36)
  br label %38

38:                                               ; preds = %27, %17
  %39 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %39, i32 0, i32 1
  %41 = call i32 @atomic_add_unless(i32* %40, i32 -1, i32 0)
  %42 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %42, i32 0, i32 0
  %44 = call i32 @wake_up_all(i32* %43)
  %45 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %38, %16
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
