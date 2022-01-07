; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fillbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fillbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_fillbuffer(%struct.tpg_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %12 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @tpg_fill_plane_buffer(%struct.tpg_data* %16, i32 %17, i32 %18, i32* %19)
  br label %46

21:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %25 = call i32 @tpg_g_planes(%struct.tpg_data* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @tpg_fill_plane_buffer(%struct.tpg_data* %28, i32 %29, i32 %30, i32* %34)
  %36 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @tpg_calc_plane_size(%struct.tpg_data* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %22

46:                                               ; preds = %15, %22
  ret void
}

declare dso_local i32 @tpg_fill_plane_buffer(%struct.tpg_data*, i32, i32, i32*) #1

declare dso_local i32 @tpg_g_planes(%struct.tpg_data*) #1

declare dso_local i64 @tpg_calc_plane_size(%struct.tpg_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
