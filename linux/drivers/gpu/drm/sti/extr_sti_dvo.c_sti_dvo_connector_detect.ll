; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sti_dvo_connector = type { %struct.sti_dvo* }
%struct.sti_dvo = type { i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @sti_dvo_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_dvo_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sti_dvo_connector*, align 8
  %7 = alloca %struct.sti_dvo*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.sti_dvo_connector* @to_sti_dvo_connector(%struct.drm_connector* %8)
  store %struct.sti_dvo_connector* %9, %struct.sti_dvo_connector** %6, align 8
  %10 = load %struct.sti_dvo_connector*, %struct.sti_dvo_connector** %6, align 8
  %11 = getelementptr inbounds %struct.sti_dvo_connector, %struct.sti_dvo_connector* %10, i32 0, i32 0
  %12 = load %struct.sti_dvo*, %struct.sti_dvo** %11, align 8
  store %struct.sti_dvo* %12, %struct.sti_dvo** %7, align 8
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %15 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %2
  %19 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %20 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @of_drm_find_panel(i32 %21)
  %23 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %24 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %26 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @IS_ERR(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %32 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %39

33:                                               ; preds = %18
  %34 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %35 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = call i32 @drm_panel_attach(i32* %36, %struct.drm_connector* %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %42 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @connector_status_connected, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.sti_dvo_connector* @to_sti_dvo_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32* @of_drm_find_panel(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @drm_panel_attach(i32*, %struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
