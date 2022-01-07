; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_pipe.c_mdp5_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_pipe.c_mdp5_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_hw_pipe = type { i32, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_hw_pipe* @mdp5_pipe_init(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mdp5_hw_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mdp5_hw_pipe*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mdp5_hw_pipe* @kzalloc(i32 32, i32 %9)
  store %struct.mdp5_hw_pipe* %10, %struct.mdp5_hw_pipe** %8, align 8
  %11 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %12 = icmp ne %struct.mdp5_hw_pipe* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mdp5_hw_pipe* @ERR_PTR(i32 %15)
  store %struct.mdp5_hw_pipe* %16, %struct.mdp5_hw_pipe** %4, align 8
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @pipe2name(i32 %18)
  %20 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %21 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %24 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %27 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %30 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mdp_ctl_flush_mask_pipe(i32 %31)
  %33 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  %34 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %8, align 8
  store %struct.mdp5_hw_pipe* %35, %struct.mdp5_hw_pipe** %4, align 8
  br label %36

36:                                               ; preds = %17, %13
  %37 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  ret %struct.mdp5_hw_pipe* %37
}

declare dso_local %struct.mdp5_hw_pipe* @kzalloc(i32, i32) #1

declare dso_local %struct.mdp5_hw_pipe* @ERR_PTR(i32) #1

declare dso_local i32 @pipe2name(i32) #1

declare dso_local i32 @mdp_ctl_flush_mask_pipe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
