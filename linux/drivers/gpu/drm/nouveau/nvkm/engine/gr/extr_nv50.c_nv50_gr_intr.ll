; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv50_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.nvkm_enum = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@nv50_data_error_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DATA_ERROR %08x [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nv50_gr_intr_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"%08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_gr_intr(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv50_gr*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_fifo_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_enum*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %22 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %23 = call %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr* %22)
  store %struct.nv50_gr* %23, %struct.nv50_gr** %3, align 8
  %24 = load %struct.nv50_gr*, %struct.nv50_gr** %3, align 8
  %25 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.nvkm_subdev* %27, %struct.nvkm_subdev** %4, align 8
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %28, i32 0, i32 0
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %29, align 8
  store %struct.nvkm_device* %30, %struct.nvkm_device** %5, align 8
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 4194560)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 4195116)
  %35 = and i32 %34, 268435455
  store i32 %35, i32* %8, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 4196100)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 458752
  %40 = ashr i32 %39, 16
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 8188
  store i32 %42, i32* %11, align 4
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %44 = call i32 @nvkm_rd32(%struct.nvkm_device* %43, i32 4196104)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = call i32 @nvkm_rd32(%struct.nvkm_device* %45, i32 4196372)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %15, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i32 -1, i32* %20, align 4
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %50 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 12
  %54 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32 %51, i32 %53, i64* %17)
  store %struct.nvkm_fifo_chan* %54, %struct.nvkm_fifo_chan** %6, align 8
  %55 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %56 = icmp ne %struct.nvkm_fifo_chan* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %1
  %58 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %59 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %18, align 8
  %64 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %65 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %20, align 4
  br label %67

67:                                               ; preds = %57, %1
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 1048576
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %73 = call i32 @nvkm_rd32(%struct.nvkm_device* %72, i32 4194576)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* @nv50_data_error_names, align 4
  %75 = load i32, i32* %21, align 4
  %76 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %74, i32 %75)
  store %struct.nvkm_enum* %76, %struct.nvkm_enum** %16, align 8
  %77 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.nvkm_enum*, %struct.nvkm_enum** %16, align 8
  %80 = icmp ne %struct.nvkm_enum* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.nvkm_enum*, %struct.nvkm_enum** %16, align 8
  %83 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i8* [ %84, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %85 ]
  %88 = call i32 (%struct.nvkm_subdev*, i8*, i32, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %87)
  %89 = load i32, i32* %15, align 4
  %90 = and i32 %89, -1048577
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %86, %67
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 2097152
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.nv50_gr*, %struct.nv50_gr** %3, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %8, align 4
  %100 = shl i32 %99, 12
  %101 = load i8*, i8** %18, align 8
  %102 = call i32 @nv50_gr_trap_handler(%struct.nv50_gr* %96, i32 %97, i32 %98, i32 %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %14, align 4
  %106 = and i32 %105, -2097153
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %95
  %108 = load i32, i32* %15, align 4
  %109 = and i32 %108, -2097153
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %91
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @nvkm_wr32(%struct.nvkm_device* %111, i32 4194560, i32 %112)
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %114, i32 4195584, i32 65537)
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %110
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %123 = load i32, i32* @nv50_gr_intr_name, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @nvkm_snprintbf(i8* %122, i32 128, i32 %123, i32 %124)
  %126 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %8, align 4
  %131 = shl i32 %130, 12
  %132 = load i8*, i8** %18, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 (%struct.nvkm_subdev*, i8*, i32, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %126, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %127, i8* %128, i32 %129, i32 %131, i8* %132, i32 %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %118, %110
  %139 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %140 = call i32 @nvkm_rd32(%struct.nvkm_device* %139, i32 4196388)
  %141 = and i32 %140, -2147483648
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %146 = call i32 @nvkm_rd32(%struct.nvkm_device* %145, i32 4196388)
  %147 = and i32 %146, 2147483647
  %148 = call i32 @nvkm_wr32(%struct.nvkm_device* %144, i32 4196388, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %151 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @nvkm_fifo_chan_put(i32 %152, i64 %153, %struct.nvkm_fifo_chan** %6)
  ret void
}

declare dso_local %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32, i32, i64*) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, ...) #1

declare dso_local i32 @nv50_gr_trap_handler(%struct.nv50_gr*, i32, i32, i32, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(i32, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
