; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_pixel_format_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_pixel_format_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*)* @drm_fb_pixel_format_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_fb_pixel_format_equal(%struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %140

12:                                               ; preds = %2
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %140

20:                                               ; preds = %12
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %140

30:                                               ; preds = %20
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %140

40:                                               ; preds = %30
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %140

50:                                               ; preds = %40
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %140

60:                                               ; preds = %50
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %60
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %74, %78
  br i1 %79, label %80, label %140

80:                                               ; preds = %70
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %140

90:                                               ; preds = %80
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %90
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %104, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %100
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %114, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %110
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %124, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %120
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %134, %138
  br label %140

140:                                              ; preds = %130, %120, %110, %100, %90, %80, %70, %60, %50, %40, %30, %20, %12, %2
  %141 = phi i1 [ false, %120 ], [ false, %110 ], [ false, %100 ], [ false, %90 ], [ false, %80 ], [ false, %70 ], [ false, %60 ], [ false, %50 ], [ false, %40 ], [ false, %30 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %139, %130 ]
  %142 = zext i1 %141 to i32
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
