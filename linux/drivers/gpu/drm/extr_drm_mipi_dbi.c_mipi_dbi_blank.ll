; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi_dev = type { i64, %struct.mipi_dbi, %struct.drm_device }
%struct.mipi_dbi = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PAGE_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipi_dbi_dev*)* @mipi_dbi_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipi_dbi_blank(%struct.mipi_dbi_dev* %0) #0 {
  %2 = alloca %struct.mipi_dbi_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mipi_dbi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mipi_dbi_dev* %0, %struct.mipi_dbi_dev** %2, align 8
  %9 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %9, i32 0, i32 2
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %2, align 8
  %20 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %19, i32 0, i32 1
  store %struct.mipi_dbi* %20, %struct.mipi_dbi** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %21, %22
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i32 @drm_dev_enter(%struct.drm_device* %26, i32* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %64

30:                                               ; preds = %1
  %31 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memset(i64 %33, i32 0, i64 %34)
  %36 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %37 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %42, 255
  %44 = call i32 @mipi_dbi_command(%struct.mipi_dbi* %36, i32 %37, i32 0, i32 0, i32 %40, i32 %43)
  %45 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %46 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %51, 255
  %53 = call i32 @mipi_dbi_command(%struct.mipi_dbi* %45, i32 %46, i32 0, i32 0, i32 %49, i32 %52)
  %54 = load %struct.mipi_dbi*, %struct.mipi_dbi** %6, align 8
  %55 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %56 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %2, align 8
  %57 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @mipi_dbi_command_buf(%struct.mipi_dbi* %54, i32 %55, i32* %59, i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @drm_dev_exit(i32 %62)
  br label %64

64:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @drm_dev_enter(%struct.drm_device*, i32*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mipi_dbi_command_buf(%struct.mipi_dbi*, i32, i32*, i64) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
