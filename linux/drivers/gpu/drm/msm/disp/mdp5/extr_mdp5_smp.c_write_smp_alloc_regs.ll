; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_write_smp_alloc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_write_smp_alloc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32, i32*, i32* }
%struct.mdp5_kms = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_smp*)* @write_smp_alloc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_smp_alloc_regs(%struct.mdp5_smp* %0) #0 {
  %2 = alloca %struct.mdp5_smp*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %2, align 8
  %6 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %7 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_smp* %6)
  store %struct.mdp5_kms* %7, %struct.mdp5_kms** %3, align 8
  %8 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %9 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sdiv i32 %10, 3
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @REG_MDP5_SMP_ALLOC_W_REG(i32 %19)
  %21 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %22 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mdp5_write(%struct.mdp5_kms* %18, i32 %20, i32 %27)
  %29 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG_MDP5_SMP_ALLOC_R_REG(i32 %30)
  %32 = load %struct.mdp5_smp*, %struct.mdp5_smp** %2, align 8
  %33 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mdp5_write(%struct.mdp5_kms* %29, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_smp*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_SMP_ALLOC_W_REG(i32) #1

declare dso_local i32 @REG_MDP5_SMP_ALLOC_R_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
