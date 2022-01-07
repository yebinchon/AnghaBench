; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.omap_overlay_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"dispc_ovl_setup %d, pa %pad, pa_uv %pad, sw %d, %d,%d, %dx%d -> %dx%d, cmode %x, rot %d, chan %d repl %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32, %struct.omap_overlay_info*, %struct.videomode*, i32, i32)* @dispc_ovl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_setup(%struct.dispc_device* %0, i32 %1, %struct.omap_overlay_info* %2, %struct.videomode* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dispc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_overlay_info*, align 8
  %10 = alloca %struct.videomode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.omap_overlay_info* %2, %struct.omap_overlay_info** %9, align 8
  store %struct.videomode* %3, %struct.videomode** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %17 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %27 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %26, i32 0, i32 14
  %28 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %28, i32 0, i32 13
  %30 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %31 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %34 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %37 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %40 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %43 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %46 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %49 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %52 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %55 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @DSSDBG(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %27, i32* %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %57, i32 1)
  %59 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @dispc_ovl_set_channel_out(%struct.dispc_device* %59, i32 %60, i32 %61)
  %63 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %67 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %70 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %73 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %76 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %79 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %82 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %85 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %88 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %91 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %94 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %97 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %100 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %103 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %106 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %9, align 8
  %109 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.videomode*, %struct.videomode** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @dispc_ovl_setup_common(%struct.dispc_device* %63, i32 %64, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 1, %struct.videomode* %111, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local i32 @DSSDBG(i8*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_channel_out(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_setup_common(%struct.dispc_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.videomode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
