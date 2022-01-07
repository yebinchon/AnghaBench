; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_open_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm_client = type { i32 }
%struct.tegra_drm_context = type { i32 }
%struct.vic = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_drm_client*, %struct.tegra_drm_context*)* @vic_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_open_channel(%struct.tegra_drm_client* %0, %struct.tegra_drm_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_drm_client*, align 8
  %5 = alloca %struct.tegra_drm_context*, align 8
  %6 = alloca %struct.vic*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_drm_client* %0, %struct.tegra_drm_client** %4, align 8
  store %struct.tegra_drm_context* %1, %struct.tegra_drm_context** %5, align 8
  %8 = load %struct.tegra_drm_client*, %struct.tegra_drm_client** %4, align 8
  %9 = call %struct.vic* @to_vic(%struct.tegra_drm_client* %8)
  store %struct.vic* %9, %struct.vic** %6, align 8
  %10 = load %struct.vic*, %struct.vic** %6, align 8
  %11 = getelementptr inbounds %struct.vic, %struct.vic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.vic*, %struct.vic** %6, align 8
  %20 = call i32 @vic_load_firmware(%struct.vic* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %45

24:                                               ; preds = %18
  %25 = load %struct.vic*, %struct.vic** %6, align 8
  %26 = call i32 @vic_boot(%struct.vic* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.vic*, %struct.vic** %6, align 8
  %32 = getelementptr inbounds %struct.vic, %struct.vic* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @host1x_channel_get(i32 %33)
  %35 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %5, align 8
  %36 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tegra_drm_context*, %struct.tegra_drm_context** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_drm_context, %struct.tegra_drm_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %51

45:                                               ; preds = %41, %29, %23
  %46 = load %struct.vic*, %struct.vic** %6, align 8
  %47 = getelementptr inbounds %struct.vic, %struct.vic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_put(i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %44, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.vic* @to_vic(%struct.tegra_drm_client*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @vic_load_firmware(%struct.vic*) #1

declare dso_local i32 @vic_boot(%struct.vic*) #1

declare dso_local i32 @host1x_channel_get(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
