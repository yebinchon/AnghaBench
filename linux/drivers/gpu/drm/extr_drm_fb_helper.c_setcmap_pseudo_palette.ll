; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_setcmap_pseudo_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_setcmap_pseudo_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i32, i32, i32*, i32*, i32* }
%struct.fb_info = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, %struct.fb_info*)* @setcmap_pseudo_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcmap_pseudo_palette(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %18 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %21 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = icmp sgt i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %142

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %138, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %32 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %141

35:                                               ; preds = %29
  %36 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %37 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %44 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %51 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 16, %61
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 16, %69
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 16, %77
  %79 = load i32, i32* %10, align 4
  %80 = ashr i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %81, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %88, %93
  %95 = or i32 %87, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %96, %101
  %103 = or i32 %95, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %35
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 1, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = shl i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %110, %35
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %132 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  store i32 %129, i32* %137, align 4
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %29

141:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %25
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
