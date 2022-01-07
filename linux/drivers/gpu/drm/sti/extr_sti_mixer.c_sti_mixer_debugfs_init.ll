; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_info_list = type { %struct.sti_mixer* }
%struct.sti_mixer = type { i32 }
%struct.drm_minor = type { i32 }

@mixer0_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@mixer1_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_mixer_debugfs_init(%struct.sti_mixer* %0, %struct.drm_minor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sti_mixer*, align 8
  %5 = alloca %struct.drm_minor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_info_list*, align 8
  %8 = alloca i32, align 4
  store %struct.sti_mixer* %0, %struct.sti_mixer** %4, align 8
  store %struct.drm_minor* %1, %struct.drm_minor** %5, align 8
  %9 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %10 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.drm_info_list*, %struct.drm_info_list** @mixer0_debugfs_files, align 8
  store %struct.drm_info_list* %13, %struct.drm_info_list** %7, align 8
  %14 = load %struct.drm_info_list*, %struct.drm_info_list** @mixer0_debugfs_files, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %14)
  store i32 %15, i32* %8, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.drm_info_list*, %struct.drm_info_list** @mixer1_debugfs_files, align 8
  store %struct.drm_info_list* %17, %struct.drm_info_list** %7, align 8
  %18 = load %struct.drm_info_list*, %struct.drm_info_list** @mixer1_debugfs_files, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %18)
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %16, %12
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.sti_mixer*, %struct.sti_mixer** %4, align 8
  %30 = load %struct.drm_info_list*, %struct.drm_info_list** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %30, i64 %32
  %34 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %33, i32 0, i32 0
  store %struct.sti_mixer* %29, %struct.sti_mixer** %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.drm_info_list*, %struct.drm_info_list** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %42 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %45 = call i32 @drm_debugfs_create_files(%struct.drm_info_list* %39, i32 %40, i32 %43, %struct.drm_minor* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(%struct.drm_info_list*) #1

declare dso_local i32 @drm_debugfs_create_files(%struct.drm_info_list*, i32, i32, %struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
