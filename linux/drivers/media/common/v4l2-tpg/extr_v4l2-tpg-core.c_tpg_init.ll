; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TPG_MOVE_NONE = common dso_local global i8* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_HSV_ENC_180 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_init(%struct.tpg_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %8 = call i32 @memset(%struct.tpg_data* %7, i32 0, i32 96)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %11 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %16 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %18 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %17, i32 0, i32 2
  store i32 %14, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %21 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %20, i32 0, i32 16
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %24 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %19, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %28 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %27, i32 0, i32 16
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %31 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %26, i32* %32, align 4
  %33 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %34 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %33, i32 0, i32 4
  store i32 1, i32* %34, align 8
  %35 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %36 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %35, i32 0, i32 5
  store i32 1, i32* %36, align 4
  %37 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %38 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %37, i32 0, i32 6
  store i32 128, i32* %38, align 8
  %39 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %40 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %39, i32 0, i32 7
  store i32 128, i32* %40, align 4
  %41 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %42 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %41, i32 0, i32 8
  store i32 128, i32* %42, align 8
  %43 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %44 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %43, i32 0, i32 15
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** @TPG_MOVE_NONE, align 8
  %46 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %47 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %46, i32 0, i32 14
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @TPG_MOVE_NONE, align 8
  %49 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %50 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %49, i32 0, i32 13
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %52 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %53 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %55 = load i32, i32* @V4L2_PIX_FMT_RGB24, align 4
  %56 = call i32 @tpg_s_fourcc(%struct.tpg_data* %54, i32 %55)
  %57 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %58 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %59 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %61 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %60, i32 0, i32 9
  store i32 100, i32* %61, align 4
  %62 = load i32, i32* @V4L2_HSV_ENC_180, align 4
  %63 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %64 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @memset(%struct.tpg_data*, i32, i32) #1

declare dso_local i32 @tpg_s_fourcc(%struct.tpg_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
