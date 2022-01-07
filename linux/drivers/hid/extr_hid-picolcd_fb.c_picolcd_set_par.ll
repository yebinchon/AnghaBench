; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.picolcd_fb_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.picolcd_fb_data = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PICOLCDFB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_VISUAL_MONO01 = common dso_local global i32 0, align 4
@PICOLCDFB_WIDTH = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @picolcd_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.picolcd_fb_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %12, align 8
  store %struct.picolcd_fb_data* %13, %struct.picolcd_fb_data** %4, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %19 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %161

23:                                               ; preds = %1
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %161

38:                                               ; preds = %29, %23
  %39 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %40 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kmalloc_array(i32 %42, i32 %46, i32 %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %161

54:                                               ; preds = %38
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %111

60:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %61

97:                                               ; preds = %61
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %101 = call i32 @memcpy(i32* %98, i32* %99, i32 %100)
  %102 = load i32, i32* @FB_VISUAL_MONO01, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @PICOLCDFB_WIDTH, align 4
  %107 = sdiv i32 %106, 8
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %152

111:                                              ; preds = %54
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %115 = call i32 @memcpy(i32* %112, i32* %113, i32 %114)
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %140, %111
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @PICOLCDFB_SIZE, align 4
  %119 = mul nsw i32 %118, 8
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sdiv i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = srem i32 %128, 8
  %130 = sub nsw i32 7, %129
  %131 = shl i32 1, %130
  %132 = and i32 %127, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 255, i32 0
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %116

143:                                              ; preds = %116
  %144 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  %145 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @PICOLCDFB_WIDTH, align 4
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %97
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @kfree(i32* %153)
  %155 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %160 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %152, %51, %35, %22
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
