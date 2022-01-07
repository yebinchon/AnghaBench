; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_write_smp_fifo_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_write_smp_fifo_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32*, i32*, i32* }
%struct.mdp5_kms = type { i32, %struct.mdp5_hw_pipe** }
%struct.mdp5_hw_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_smp*)* @write_smp_fifo_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_smp_fifo_regs(%struct.mdp5_smp* %0) #0 {
  %2 = alloca %struct.mdp5_smp*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_hw_pipe*, align 8
  %6 = alloca i32, align 4
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %2, align 8
  %7 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %8 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_smp* %7)
  store %struct.mdp5_kms* %8, %struct.mdp5_kms** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %12 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %17 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %16, i32 0, i32 1
  %18 = load %struct.mdp5_hw_pipe**, %struct.mdp5_hw_pipe*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %18, i64 %20
  %22 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %21, align 8
  store %struct.mdp5_hw_pipe* %22, %struct.mdp5_hw_pipe** %5, align 8
  %23 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %5, align 8
  %24 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_0(i32 %27)
  %29 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %30 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mdp5_write(%struct.mdp5_kms* %26, i32 %28, i32 %35)
  %37 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_1(i32 %38)
  %40 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %41 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mdp5_write(%struct.mdp5_kms* %37, i32 %39, i32 %46)
  %48 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_2(i32 %49)
  %51 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %52 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mdp5_write(%struct.mdp5_kms* %48, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %15
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %9

62:                                               ; preds = %9
  ret void
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_smp*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_0(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_1(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_REQPRIO_FIFO_WM_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
