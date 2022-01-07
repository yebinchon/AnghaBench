; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32, i32, i32, i32, %struct.mdp5_ctl_manager* }
%struct.mdp5_ctl_manager = type { i32 }
%struct.mdp5_pipeline = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"flush_mask=%x, trigger=%x\00", align 1
@MDP5_CTL_FLUSH_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_ctl_commit(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca %struct.mdp5_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdp5_ctl_manager*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %6, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %15 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %14, i32 0, i32 4
  %16 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %15, align 8
  store %struct.mdp5_ctl_manager* %16, %struct.mdp5_ctl_manager** %10, align 8
  %17 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %18 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %22 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VERB(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %26 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* @MDP5_CTL_FLUSH_CTL, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %36 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %4
  %38 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %39 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @fix_sw_flush(%struct.mdp5_ctl* %38, %struct.mdp5_pipeline* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %10, align 8
  %45 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %51 = call i32 @fix_for_single_flush(%struct.mdp5_ctl* %50, i32* %8, i32* %12)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %57 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %96

61:                                               ; preds = %37
  %62 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %63 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %68 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %74 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %73, i32 0, i32 3
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @REG_MDP5_CTL_FLUSH(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ctl_write(%struct.mdp5_ctl* %77, i32 %79, i32 %80)
  %82 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %83 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %82, i32 0, i32 3
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %72, %69
  %87 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %88 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %89 = call i64 @start_signal_needed(%struct.mdp5_ctl* %87, %struct.mdp5_pipeline* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %93 = call i32 @send_start_signal(%struct.mdp5_ctl* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %54
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @VERB(i8*, i32, i32) #1

declare dso_local i32 @fix_sw_flush(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32) #1

declare dso_local i32 @fix_for_single_flush(%struct.mdp5_ctl*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ctl_write(%struct.mdp5_ctl*, i32, i32) #1

declare dso_local i32 @REG_MDP5_CTL_FLUSH(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @start_signal_needed(%struct.mdp5_ctl*, %struct.mdp5_pipeline*) #1

declare dso_local i32 @send_start_signal(%struct.mdp5_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
