; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_mdp5_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_hw_mixer = type { i64, i32, i32, i32, i32, i32 }
%struct.mdp5_lm_instance = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mixer_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_hw_mixer* @mdp5_mixer_init(%struct.mdp5_lm_instance* %0) #0 {
  %2 = alloca %struct.mdp5_hw_mixer*, align 8
  %3 = alloca %struct.mdp5_lm_instance*, align 8
  %4 = alloca %struct.mdp5_hw_mixer*, align 8
  store %struct.mdp5_lm_instance* %0, %struct.mdp5_lm_instance** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mdp5_hw_mixer* @kzalloc(i32 32, i32 %5)
  store %struct.mdp5_hw_mixer* %6, %struct.mdp5_hw_mixer** %4, align 8
  %7 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %8 = icmp ne %struct.mdp5_hw_mixer* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mdp5_hw_mixer* @ERR_PTR(i32 %11)
  store %struct.mdp5_hw_mixer* %12, %struct.mdp5_hw_mixer** %2, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load i32*, i32** @mixer_names, align 8
  %15 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %16 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %21 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %23 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %26 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %28 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %31 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %33 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %36 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %38 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %41 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mdp5_lm_instance*, %struct.mdp5_lm_instance** %3, align 8
  %43 = getelementptr inbounds %struct.mdp5_lm_instance, %struct.mdp5_lm_instance* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mdp_ctl_flush_mask_lm(i64 %44)
  %46 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  %47 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %4, align 8
  store %struct.mdp5_hw_mixer* %48, %struct.mdp5_hw_mixer** %2, align 8
  br label %49

49:                                               ; preds = %13, %9
  %50 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %2, align 8
  ret %struct.mdp5_hw_mixer* %50
}

declare dso_local %struct.mdp5_hw_mixer* @kzalloc(i32, i32) #1

declare dso_local %struct.mdp5_hw_mixer* @ERR_PTR(i32) #1

declare dso_local i32 @mdp_ctl_flush_mask_lm(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
