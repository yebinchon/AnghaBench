; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_mthd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_mthd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan = type { i32, %struct.TYPE_7__, %struct.nv50_disp_chan_mthd*, %struct.nv50_disp* }
%struct.TYPE_7__ = type { i32 }
%struct.nv50_disp_chan_mthd = type { i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8*, %struct.nv50_disp_mthd_list* }
%struct.nv50_disp_mthd_list = type { i64 }
%struct.nv50_disp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" - %s %d\00", align 1
@info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_chan_mthd(%struct.nv50_disp_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.nv50_disp_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_disp*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nv50_disp_chan_mthd*, align 8
  %8 = alloca %struct.nv50_disp_mthd_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca [16 x i8], align 16
  store %struct.nv50_disp_chan* %0, %struct.nv50_disp_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %17 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %16, i32 0, i32 3
  %18 = load %struct.nv50_disp*, %struct.nv50_disp** %17, align 8
  store %struct.nv50_disp* %18, %struct.nv50_disp** %5, align 8
  %19 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %20 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %6, align 8
  %23 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %24 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %23, i32 0, i32 2
  %25 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %24, align 8
  store %struct.nv50_disp_chan_mthd* %25, %struct.nv50_disp_chan_mthd** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %134

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %131, %32
  %34 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %35 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %40, align 8
  store %struct.nv50_disp_mthd_list* %41, %struct.nv50_disp_mthd_list** %8, align 8
  %42 = icmp ne %struct.nv50_disp_mthd_list* %41, null
  br i1 %42, label %43, label %134

43:                                               ; preds = %33
  %44 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %45 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %48 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %120, %43
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %54 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %53, i32 0, i32 3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %52, %60
  br i1 %61, label %62, label %130

62:                                               ; preds = %51
  %63 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %64 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %66 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %67 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %72 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %73 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %76 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snprintf(i8* %71, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %78)
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %70, %62
  %82 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %83 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %104

91:                                               ; preds = %81
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %93 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %94 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @snprintf(i8* %92, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %101)
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8* %103, i8** %13, align 8
  br label %104

104:                                              ; preds = %91, %81
  %105 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @info, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @nvkm_printk_(%struct.nvkm_subdev* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %7, align 8
  %115 = getelementptr inbounds %struct.nv50_disp_chan_mthd, %struct.nv50_disp_chan_mthd* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @nv50_disp_mthd_list(%struct.nv50_disp* %111, i32 %112, i32 %113, i32 %116, %struct.nv50_disp_mthd_list* %117, i32 %118)
  br label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %8, align 8
  %124 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  br label %51

130:                                              ; preds = %51
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %33

134:                                              ; preds = %31, %33
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @nvkm_printk_(%struct.nvkm_subdev*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @nv50_disp_mthd_list(%struct.nv50_disp*, i32, i32, i32, %struct.nv50_disp_mthd_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
