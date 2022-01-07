; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_gdp = type { i32*, %struct.TYPE_8__, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GDP_NODE_NB_BANK = common dso_local global i32 0, align 4
@GAM_GDP_PPT_IGNORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1
@STI_PLANE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_gdp*)* @sti_gdp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_gdp_disable(%struct.sti_gdp* %0) #0 {
  %2 = alloca %struct.sti_gdp*, align 8
  %3 = alloca i32, align 4
  store %struct.sti_gdp* %0, %struct.sti_gdp** %2, align 8
  %4 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %5 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %4, i32 0, i32 1
  %6 = call i32 @sti_plane_to_str(%struct.TYPE_8__* %5)
  %7 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i32, i32* @GAM_GDP_PPT_IGNORE, align 4
  %14 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %15 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %13
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @GAM_GDP_PPT_IGNORE, align 4
  %26 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %27 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %25
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %12
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %42 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %45 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %44, i32 0, i32 3
  %46 = call i64 @sti_vtg_unregister_client(i32* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %52 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %57 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @clk_disable_unprepare(i64 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @STI_PLANE_DISABLED, align 4
  %62 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %63 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.sti_gdp*, %struct.sti_gdp** %2, align 8
  %66 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @sti_plane_to_str(%struct.TYPE_8__*) #1

declare dso_local i64 @sti_vtg_unregister_client(i32*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
