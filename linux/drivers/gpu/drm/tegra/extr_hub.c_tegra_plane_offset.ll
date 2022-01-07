; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_plane_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_plane_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_plane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid offset: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_plane*, i32)* @tegra_plane_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_plane_offset(%struct.tegra_plane* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_plane*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_plane* %0, %struct.tegra_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp uge i32 %6, 1280
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ule i32 %9, 1409
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = sub i32 %12, 1280
  %14 = add i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %8, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp uge i32 %21, 1792
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ule i32 %24, 1852
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = sub i32 %27, 1792
  %29 = add i32 384, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %5, align 4
  %37 = icmp uge i32 %36, 2048
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ule i32 %39, 2110
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %42, 2048
  %44 = add i32 448, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %38, %35
  %51 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_WARN(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %41, %26, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
