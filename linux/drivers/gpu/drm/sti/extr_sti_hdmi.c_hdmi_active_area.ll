; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_active_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_active_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@HDMI_ACTIVE_VID_XMIN = common dso_local global i32 0, align 4
@HDMI_ACTIVE_VID_XMAX = common dso_local global i32 0, align 4
@HDMI_ACTIVE_VID_YMIN = common dso_local global i32 0, align 4
@HDMI_ACTIVE_VID_YMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hdmi*)* @hdmi_active_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_active_area(%struct.sti_hdmi* %0) #0 {
  %2 = alloca %struct.sti_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %2, align 8
  %7 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %8 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %7, i32 0, i32 0
  %9 = bitcast %struct.TYPE_3__* %8 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sti_vtg_get_pixel_number(i32 %11, i64 %13, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %16 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %15, i32 0, i32 0
  %17 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %18 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = bitcast %struct.TYPE_3__* %16 to { i32, i64 }*
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sti_vtg_get_pixel_number(i32 %23, i64 %25, i32 %20)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %28 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_3__* %28 to { i32, i64 }*
  %30 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sti_vtg_get_line_number(i32 %31, i64 %33, i64 0)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %36 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %35, i32 0, i32 0
  %37 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %38 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  %42 = bitcast %struct.TYPE_3__* %36 to { i32, i64 }*
  %43 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sti_vtg_get_line_number(i32 %44, i64 %46, i64 %41)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @HDMI_ACTIVE_VID_XMIN, align 4
  %51 = call i32 @hdmi_write(%struct.sti_hdmi* %48, i32 %49, i32 %50)
  %52 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @HDMI_ACTIVE_VID_XMAX, align 4
  %55 = call i32 @hdmi_write(%struct.sti_hdmi* %52, i32 %53, i32 %54)
  %56 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @HDMI_ACTIVE_VID_YMIN, align 4
  %59 = call i32 @hdmi_write(%struct.sti_hdmi* %56, i32 %57, i32 %58)
  %60 = load %struct.sti_hdmi*, %struct.sti_hdmi** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @HDMI_ACTIVE_VID_YMAX, align 4
  %63 = call i32 @hdmi_write(%struct.sti_hdmi* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @sti_vtg_get_pixel_number(i32, i64, i32) #1

declare dso_local i32 @sti_vtg_get_line_number(i32, i64, i64) #1

declare dso_local i32 @hdmi_write(%struct.sti_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
