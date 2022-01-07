; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_mthd_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_mthd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nv50_disp_mthd_list = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"-> %08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%13c\00", align 1
@info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\09%04x: %08x %s%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" // \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_disp*, i32, i64, i32, %struct.nv50_disp_mthd_list*, i32)* @nv50_disp_mthd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_disp_mthd_list(%struct.nv50_disp* %0, i32 %1, i64 %2, i32 %3, %struct.nv50_disp_mthd_list* %4, i32 %5) #0 {
  %7 = alloca %struct.nv50_disp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nv50_disp_mthd_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_subdev*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [16 x i8], align 16
  store %struct.nv50_disp* %0, %struct.nv50_disp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nv50_disp_mthd_list* %4, %struct.nv50_disp_mthd_list** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.nv50_disp*, %struct.nv50_disp** %7, align 8
  %22 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.nvkm_subdev* %24, %struct.nvkm_subdev** %13, align 8
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %25, i32 0, i32 0
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %26, align 8
  store %struct.nvkm_device* %27, %struct.nvkm_device** %14, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %131, %6
  %29 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %30 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %134

38:                                               ; preds = %28
  %39 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %40 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %130

48:                                               ; preds = %38
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %50 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %51 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %57, %58
  %60 = add nsw i64 %59, 0
  %61 = call i64 @nvkm_rd32(%struct.nvkm_device* %49, i64 %60)
  store i64 %61, i64* %16, align 8
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %63 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %64 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i64 @nvkm_rd32(%struct.nvkm_device* %62, i64 %75)
  store i64 %76, i64* %17, align 8
  %77 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %78 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %86 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %84, %90
  store i64 %91, i64* %18, align 8
  %92 = load %struct.nv50_disp_mthd_list*, %struct.nv50_disp_mthd_list** %11, align 8
  %93 = getelementptr inbounds %struct.nv50_disp_mthd_list, %struct.nv50_disp_mthd_list* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %19, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %48
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %105 = load i64, i64* %16, align 8
  %106 = trunc i64 %105 to i8
  %107 = call i32 @snprintf(i8* %104, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %106)
  br label %111

108:                                              ; preds = %48
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %110 = call i32 @snprintf(i8* %109, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext 32)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @info, align 4
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %118 = load i8*, i8** %19, align 8
  %119 = icmp ne i8* %118, null
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %122 = load i8*, i8** %19, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i8*, i8** %19, align 8
  br label %127

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i8* [ %125, %124 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %126 ]
  %129 = call i32 @nvkm_printk_(%struct.nvkm_subdev* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %116, i8* %117, i8* %121, i8* %128)
  br label %130

130:                                              ; preds = %127, %38
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %28

134:                                              ; preds = %28
  ret void
}

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

declare dso_local i32 @nvkm_printk_(%struct.nvkm_subdev*, i32, i32, i8*, i64, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
