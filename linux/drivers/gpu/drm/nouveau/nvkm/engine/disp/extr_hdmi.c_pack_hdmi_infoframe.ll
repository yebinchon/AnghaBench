; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmi.c_pack_hdmi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmi.c_pack_hdmi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.packed_hdmi_infoframe*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.packed_hdmi_infoframe* %0, %struct.packed_hdmi_infoframe** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %13 [
    i32 17, label %14
    i32 16, label %19
    i32 15, label %26
    i32 14, label %32
    i32 13, label %37
    i32 12, label %44
    i32 11, label %51
    i32 10, label %57
    i32 9, label %62
    i32 8, label %69
    i32 7, label %75
    i32 6, label %80
    i32 5, label %87
    i32 4, label %94
    i32 3, label %100
    i32 2, label %105
    i32 1, label %112
    i32 0, label %118
  ]

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %3, %13
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 16
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %3, %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 15
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %3, %19
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 14
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %3, %26
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 13
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 24
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %3, %32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %3, %37
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 11
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %3, %44
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 10
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %3, %51
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 9
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %3, %57
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %3, %62
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %3, %69
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 24
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %3, %75
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %3, %80
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %3, %87
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %3, %94
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %3, %100
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %3, %105
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %3, %112
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.packed_hdmi_infoframe*, %struct.packed_hdmi_infoframe** %4, align 8
  %122 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.packed_hdmi_infoframe*, %struct.packed_hdmi_infoframe** %4, align 8
  %125 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.packed_hdmi_infoframe*, %struct.packed_hdmi_infoframe** %4, align 8
  %128 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.packed_hdmi_infoframe*, %struct.packed_hdmi_infoframe** %4, align 8
  %131 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.packed_hdmi_infoframe*, %struct.packed_hdmi_infoframe** %4, align 8
  %134 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
