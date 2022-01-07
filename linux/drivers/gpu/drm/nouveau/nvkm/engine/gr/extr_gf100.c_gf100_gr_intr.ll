; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.nvkm_enum = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@NV_E0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"ILLEGAL_MTHD ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"ILLEGAL_CLASS ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@nv50_data_error_names = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"DATA_ERROR %08x [%s] ch %d [%010llx %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"TRAP ch %d [%010llx %s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gr*)* @gf100_gr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_intr(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_fifo_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nvkm_enum*, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %19 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %20 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %19)
  store %struct.gf100_gr* %20, %struct.gf100_gr** %3, align 8
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.nvkm_subdev* %24, %struct.nvkm_subdev** %4, align 8
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %25, i32 0, i32 0
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %26, align 8
  store %struct.nvkm_device* %27, %struct.nvkm_device** %5, align 8
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %28, i32 4233984)
  %30 = and i32 %29, 268435455
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 4194560)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 4196100)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 16380
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 458752
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %12, align 4
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %40, i32 4196104)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 4194576)
  store i32 %43, i32* %14, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i32 -1, i32* %17, align 4
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 12
  %49 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32 %46, i32 %48, i64* %7)
  store %struct.nvkm_fifo_chan* %49, %struct.nvkm_fifo_chan** %6, align 8
  %50 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %51 = icmp ne %struct.nvkm_fifo_chan* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %1
  %53 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %54 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %16, align 8
  %59 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %60 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %52, %1
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NV_E0, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %68, %62
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %73, 4
  %75 = add nsw i32 4211200, %74
  %76 = call i32 @nvkm_rd32(%struct.nvkm_device* %72, i32 %75)
  store i32 %76, i32* %15, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 4194560, i32 1)
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, -2
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 16
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @gf100_gr_mthd_sw(%struct.nvkm_device* %92, i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %91
  %99 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 12
  %103 = load i8*, i8** %16, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %99, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %102, i8* %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %98, %91
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %111 = call i32 @nvkm_wr32(%struct.nvkm_device* %110, i32 4194560, i32 16)
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, -17
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %87
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 %121, 12
  %123 = load i8*, i8** %16, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %119, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %122, i8* %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %129, i32 4194560, i32 32)
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, -33
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %118, %114
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 1048576
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %165

137:                                              ; preds = %133
  %138 = load i32, i32* @nv50_data_error_names, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %138, i32 %139)
  store %struct.nvkm_enum* %140, %struct.nvkm_enum** %18, align 8
  %141 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.nvkm_enum*, %struct.nvkm_enum** %18, align 8
  %144 = icmp ne %struct.nvkm_enum* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load %struct.nvkm_enum*, %struct.nvkm_enum** %18, align 8
  %147 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  br label %150

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i8* [ %148, %145 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %149 ]
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %8, align 4
  %154 = shl i32 %153, 12
  %155 = load i8*, i8** %16, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %141, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %142, i8* %151, i32 %152, i32 %154, i8* %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %162 = call i32 @nvkm_wr32(%struct.nvkm_device* %161, i32 4194560, i32 1048576)
  %163 = load i32, i32* %9, align 4
  %164 = and i32 %163, -1048577
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %150, %133
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 2097152
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %8, align 4
  %173 = shl i32 %172, 12
  %174 = load i8*, i8** %16, align 8
  %175 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %171, i32 %173, i8* %174)
  %176 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %177 = call i32 @gf100_gr_trap_intr(%struct.gf100_gr* %176)
  %178 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %179 = call i32 @nvkm_wr32(%struct.nvkm_device* %178, i32 4194560, i32 2097152)
  %180 = load i32, i32* %9, align 4
  %181 = and i32 %180, -2097153
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %169, %165
  %183 = load i32, i32* %9, align 4
  %184 = and i32 %183, 524288
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %188 = call i32 @gf100_gr_ctxctl_isr(%struct.gf100_gr* %187)
  %189 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %190 = call i32 @nvkm_wr32(%struct.nvkm_device* %189, i32 4194560, i32 524288)
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, -524289
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %186, %182
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %198)
  %200 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @nvkm_wr32(%struct.nvkm_device* %200, i32 4194560, i32 %201)
  br label %203

203:                                              ; preds = %196, %193
  %204 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %205 = call i32 @nvkm_wr32(%struct.nvkm_device* %204, i32 4195584, i32 65537)
  %206 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %207 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i64, i64* %7, align 8
  %210 = call i32 @nvkm_fifo_chan_put(i32 %208, i64 %209, %struct.nvkm_fifo_chan** %6)
  ret void
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32, i32, i64*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_mthd_sw(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @gf100_gr_trap_intr(%struct.gf100_gr*) #1

declare dso_local i32 @gf100_gr_ctxctl_isr(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_fifo_chan_put(i32, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
