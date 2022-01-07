; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_info_list = type { %struct.sti_gdp* }
%struct.sti_gdp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_minor = type { i32 }

@gdp0_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@gdp1_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@gdp2_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@gdp3_debugfs_files = common dso_local global %struct.drm_info_list* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_gdp*, %struct.drm_minor*)* @gdp_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdp_debugfs_init(%struct.sti_gdp* %0, %struct.drm_minor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sti_gdp*, align 8
  %5 = alloca %struct.drm_minor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_info_list*, align 8
  %8 = alloca i32, align 4
  store %struct.sti_gdp* %0, %struct.sti_gdp** %4, align 8
  store %struct.drm_minor* %1, %struct.drm_minor** %5, align 8
  %9 = load %struct.sti_gdp*, %struct.sti_gdp** %4, align 8
  %10 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 131, label %13
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

13:                                               ; preds = %2
  %14 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp0_debugfs_files, align 8
  store %struct.drm_info_list* %14, %struct.drm_info_list** %7, align 8
  %15 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp0_debugfs_files, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %15)
  store i32 %16, i32* %8, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp1_debugfs_files, align 8
  store %struct.drm_info_list* %18, %struct.drm_info_list** %7, align 8
  %19 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp1_debugfs_files, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %19)
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp2_debugfs_files, align 8
  store %struct.drm_info_list* %22, %struct.drm_info_list** %7, align 8
  %23 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp2_debugfs_files, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %23)
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp3_debugfs_files, align 8
  store %struct.drm_info_list* %26, %struct.drm_info_list** %7, align 8
  %27 = load %struct.drm_info_list*, %struct.drm_info_list** @gdp3_debugfs_files, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.drm_info_list* %27)
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %25, %21, %17, %13
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.sti_gdp*, %struct.sti_gdp** %4, align 8
  %39 = load %struct.drm_info_list*, %struct.drm_info_list** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %39, i64 %41
  %43 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %42, i32 0, i32 0
  store %struct.sti_gdp* %38, %struct.sti_gdp** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.drm_info_list*, %struct.drm_info_list** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %51 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %54 = call i32 @drm_debugfs_create_files(%struct.drm_info_list* %48, i32 %49, i32 %52, %struct.drm_minor* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %47, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ARRAY_SIZE(%struct.drm_info_list*) #1

declare dso_local i32 @drm_debugfs_create_files(%struct.drm_info_list*, i32, i32, %struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
