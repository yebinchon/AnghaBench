; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_reset_display_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_reset_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_reset_display_info(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_display_info*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 0
  store %struct.drm_display_info* %5, %struct.drm_display_info** %3, align 8
  %6 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %7 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %6, i32 0, i32 10
  store i64 0, i64* %7, align 8
  %8 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %9 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %11 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %10, i32 0, i32 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %13 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %15 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %17 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %19 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %21 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %23 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %24, i32 0, i32 4
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %28 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
