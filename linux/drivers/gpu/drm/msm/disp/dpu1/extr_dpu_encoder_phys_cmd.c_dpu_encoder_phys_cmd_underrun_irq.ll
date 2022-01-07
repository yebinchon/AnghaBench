; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_underrun_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_underrun_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.dpu_encoder_phys*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dpu_encoder_phys_cmd_underrun_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_underrun_irq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_encoder_phys*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dpu_encoder_phys*
  store %struct.dpu_encoder_phys* %7, %struct.dpu_encoder_phys** %5, align 8
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %9 = icmp ne %struct.dpu_encoder_phys* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %15, align 8
  %17 = icmp ne i32 (i32, %struct.dpu_encoder_phys*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.dpu_encoder_phys*)*, i32 (i32, %struct.dpu_encoder_phys*)** %22, align 8
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %5, align 8
  %28 = call i32 %23(i32 %26, %struct.dpu_encoder_phys* %27)
  br label %29

29:                                               ; preds = %10, %18, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
