; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_encoder_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_encoder_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32 }
%struct.mdp5_pipeline = type { %struct.mdp5_interface* }
%struct.mdp5_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"intf_%d: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_ctl_set_encoder_state(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_ctl*, align 8
  %6 = alloca %struct.mdp5_pipeline*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %5, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %10 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %9, i32 0, i32 0
  %11 = load %struct.mdp5_interface*, %struct.mdp5_interface** %10, align 8
  store %struct.mdp5_interface* %11, %struct.mdp5_interface** %8, align 8
  %12 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %13 = icmp ne %struct.mdp5_ctl* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %24 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %26 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %31)
  %33 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %34 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %6, align 8
  %35 = call i64 @start_signal_needed(%struct.mdp5_ctl* %33, %struct.mdp5_pipeline* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %39 = call i32 @send_start_signal(%struct.mdp5_ctl* %38)
  br label %40

40:                                               ; preds = %37, %21
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DBG(i8*, i32, i8*) #1

declare dso_local i64 @start_signal_needed(%struct.mdp5_ctl*, %struct.mdp5_pipeline*) #1

declare dso_local i32 @send_start_signal(%struct.mdp5_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
