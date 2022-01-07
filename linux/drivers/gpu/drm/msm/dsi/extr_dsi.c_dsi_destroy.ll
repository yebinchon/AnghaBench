; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_dsi_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi.c_dsi_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi*)* @dsi_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_destroy(%struct.msm_dsi* %0) #0 {
  %2 = alloca %struct.msm_dsi*, align 8
  store %struct.msm_dsi* %0, %struct.msm_dsi** %2, align 8
  %3 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %4 = icmp ne %struct.msm_dsi* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %8 = call i32 @msm_dsi_manager_unregister(%struct.msm_dsi* %7)
  %9 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %15 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @put_device(i32* %16)
  %18 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %19 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %21 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %13, %6
  %23 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %24 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %29 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @msm_dsi_host_destroy(i32* %30)
  %32 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %33 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.msm_dsi*, %struct.msm_dsi** %2, align 8
  %36 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @platform_set_drvdata(i32 %37, i32* null)
  br label %39

39:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @msm_dsi_manager_unregister(%struct.msm_dsi*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @msm_dsi_host_destroy(i32*) #1

declare dso_local i32 @platform_set_drvdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
