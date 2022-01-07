; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_kms = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_ctl_set_pipeline(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1) #0 {
  %3 = alloca %struct.mdp5_ctl*, align 8
  %4 = alloca %struct.mdp5_pipeline*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %3, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %4, align 8
  %7 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %8 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mdp5_kms* @get_kms(i32 %9)
  store %struct.mdp5_kms* %10, %struct.mdp5_kms** %5, align 8
  %11 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %4, align 8
  %12 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %11, i32 0, i32 0
  %13 = load %struct.mdp5_interface*, %struct.mdp5_interface** %12, align 8
  store %struct.mdp5_interface* %13, %struct.mdp5_interface** %6, align 8
  %14 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %15 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mdp5_cfg_intf_is_virtual(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %21 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %22 = call i32 @set_display_intf(%struct.mdp5_kms* %20, %struct.mdp5_interface* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %3, align 8
  %25 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %4, align 8
  %26 = call i32 @set_ctl_op(%struct.mdp5_ctl* %24, %struct.mdp5_pipeline* %25)
  ret i32 0
}

declare dso_local %struct.mdp5_kms* @get_kms(i32) #1

declare dso_local i32 @mdp5_cfg_intf_is_virtual(i32) #1

declare dso_local i32 @set_display_intf(%struct.mdp5_kms*, %struct.mdp5_interface*) #1

declare dso_local i32 @set_ctl_op(%struct.mdp5_ctl*, %struct.mdp5_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
