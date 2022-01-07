; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32, %struct.mdp5_ctl*, %struct.mdp5_ctl_manager* }
%struct.mdp5_ctl_manager = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mdp5_kms = type { i32 }

@REG_MDP5_SPARE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CTLs already paired\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTL_STAT_BOOKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Only pair booked CTLs\0A\00", align 1
@MDP5_SPARE_0_SPLIT_DPL_SINGLE_FLUSH_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_ctl_pair(%struct.mdp5_ctl* %0, %struct.mdp5_ctl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_ctl*, align 8
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_ctl_manager*, align 8
  %9 = alloca %struct.mdp5_kms*, align 8
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %5, align 8
  store %struct.mdp5_ctl* %1, %struct.mdp5_ctl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %11 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %10, i32 0, i32 2
  %12 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %11, align 8
  store %struct.mdp5_ctl_manager* %12, %struct.mdp5_ctl_manager** %8, align 8
  %13 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %8, align 8
  %14 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_ctl_manager* %13)
  store %struct.mdp5_kms* %14, %struct.mdp5_kms** %9, align 8
  %15 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %8, align 8
  %16 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %24, i32 0, i32 1
  store %struct.mdp5_ctl* null, %struct.mdp5_ctl** %25, align 8
  %26 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %27 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %26, i32 0, i32 1
  store %struct.mdp5_ctl* null, %struct.mdp5_ctl** %27, align 8
  %28 = load %struct.mdp5_kms*, %struct.mdp5_kms** %9, align 8
  %29 = load i32, i32* @REG_MDP5_SPARE_0, align 4
  %30 = call i32 @mdp5_write(%struct.mdp5_kms* %28, i32 %29, i32 0)
  store i32 0, i32* %4, align 4
  br label %83

31:                                               ; preds = %20
  %32 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %33 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %32, i32 0, i32 1
  %34 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %33, align 8
  %35 = icmp ne %struct.mdp5_ctl* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %38 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %37, i32 0, i32 1
  %39 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %38, align 8
  %40 = icmp ne %struct.mdp5_ctl* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %31
  %42 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %8, align 8
  %43 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %83

50:                                               ; preds = %36
  %51 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %52 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %55 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = load i32, i32* @CTL_STAT_BOOKED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %50
  %62 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %8, align 8
  %63 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DRM_DEV_ERROR(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %83

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %74 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %75 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %74, i32 0, i32 1
  store %struct.mdp5_ctl* %73, %struct.mdp5_ctl** %75, align 8
  %76 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %77 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %78 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %77, i32 0, i32 1
  store %struct.mdp5_ctl* %76, %struct.mdp5_ctl** %78, align 8
  %79 = load %struct.mdp5_kms*, %struct.mdp5_kms** %9, align 8
  %80 = load i32, i32* @REG_MDP5_SPARE_0, align 4
  %81 = load i32, i32* @MDP5_SPARE_0_SPLIT_DPL_SINGLE_FLUSH_EN, align 4
  %82 = call i32 @mdp5_write(%struct.mdp5_kms* %79, i32 %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %61, %41, %23, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_ctl_manager*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
