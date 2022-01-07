; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_update_drive_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_update_drive_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_training_settings = type { i32*, %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_training_settings*, %struct.link_training_settings*)* @update_drive_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_drive_settings(%struct.link_training_settings* %0, %struct.link_training_settings* byval(%struct.link_training_settings) align 8 %1) #0 {
  %3 = alloca %struct.link_training_settings*, align 8
  %4 = alloca i64, align 8
  store %struct.link_training_settings* %0, %struct.link_training_settings** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %99, %2
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %102

11:                                               ; preds = %5
  %12 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %13 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %1, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %24 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %22, i32* %28, align 4
  br label %40

29:                                               ; preds = %11
  %30 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %31 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %35 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %16
  %41 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %42 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %1, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %53 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %51, i32* %57, align 4
  br label %69

58:                                               ; preds = %40
  %59 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %60 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %64 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %45
  %70 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %71 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %1, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %82 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  br label %98

87:                                               ; preds = %69
  %88 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %89 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.link_training_settings*, %struct.link_training_settings** %3, align 8
  %93 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %74
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %4, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %4, align 8
  br label %5

102:                                              ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
