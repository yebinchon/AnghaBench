; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nvkm_fault_data = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.gf100_fifo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i32, i8* }
%struct.nvkm_engine = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@gf100_fifo_fault_reason = common dso_local global i32 0, align 4
@gf100_fifo_fault_engine = common dso_local global i32 0, align 4
@gf100_fifo_fault_hubclient = common dso_local global i32 0, align 4
@gf100_fifo_fault_gpcclient = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GPC%d/\00", align 1
@.str.1 = private unnamed_addr constant [101 x i8] c"%s fault at %010llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*, %struct.nvkm_fault_data*)* @gf100_fifo_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_fault(%struct.nvkm_fifo* %0, %struct.nvkm_fault_data* %1) #0 {
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca %struct.nvkm_fault_data*, align 8
  %5 = alloca %struct.gf100_fifo*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_enum*, align 8
  %9 = alloca %struct.nvkm_enum*, align 8
  %10 = alloca %struct.nvkm_enum*, align 8
  %11 = alloca %struct.nvkm_engine*, align 8
  %12 = alloca %struct.nvkm_fifo_chan*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [8 x i8], align 1
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %3, align 8
  store %struct.nvkm_fault_data* %1, %struct.nvkm_fault_data** %4, align 8
  %15 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %16 = call %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo* %15)
  store %struct.gf100_fifo* %16, %struct.gf100_fifo** %5, align 8
  %17 = load %struct.gf100_fifo*, %struct.gf100_fifo** %5, align 8
  %18 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.nvkm_subdev* %20, %struct.nvkm_subdev** %6, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_engine* null, %struct.nvkm_engine** %11, align 8
  %24 = bitcast [8 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %24, i8 0, i64 8, i1 false)
  %25 = load i32, i32* @gf100_fifo_fault_reason, align 4
  %26 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %25, i32 %28)
  store %struct.nvkm_enum* %29, %struct.nvkm_enum** %8, align 8
  %30 = load i32, i32* @gf100_fifo_fault_engine, align 4
  %31 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %30, i32 %33)
  store %struct.nvkm_enum* %34, %struct.nvkm_enum** %9, align 8
  %35 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i32, i32* @gf100_fifo_fault_hubclient, align 4
  %41 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %40, i32 %43)
  store %struct.nvkm_enum* %44, %struct.nvkm_enum** %10, align 8
  br label %56

45:                                               ; preds = %2
  %46 = load i32, i32* @gf100_fifo_fault_gpcclient, align 4
  %47 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %48 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %46, i32 %49)
  store %struct.nvkm_enum* %50, %struct.nvkm_enum** %10, align 8
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %52 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %53 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snprintf(i8* %51, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %45, %39
  %57 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %58 = icmp ne %struct.nvkm_enum* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %61 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %66 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %77 [
    i32 129, label %68
    i32 128, label %71
    i32 130, label %74
  ]

68:                                               ; preds = %64
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %70 = call i32 @nvkm_bar_bar1_reset(%struct.nvkm_device* %69)
  br label %83

71:                                               ; preds = %64
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %73 = call i32 @nvkm_bar_bar2_reset(%struct.nvkm_device* %72)
  br label %83

74:                                               ; preds = %64
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %76 = call i32 @nvkm_mask(%struct.nvkm_device* %75, i32 5912, i32 0, i32 0)
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %79 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %80 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device* %78, i32 %81)
  store %struct.nvkm_engine* %82, %struct.nvkm_engine** %11, align 8
  br label %83

83:                                               ; preds = %77, %74, %71, %68
  br label %84

84:                                               ; preds = %83, %59, %56
  %85 = load %struct.gf100_fifo*, %struct.gf100_fifo** %5, align 8
  %86 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %85, i32 0, i32 0
  %87 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %88 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.TYPE_9__* %86, i32 %89, i64* %13)
  store %struct.nvkm_fifo_chan* %90, %struct.nvkm_fifo_chan** %12, align 8
  %91 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %92 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %93 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %98 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %99 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %102 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %105 = icmp ne %struct.nvkm_enum* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %84
  %107 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %108 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  br label %111

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i8* [ %109, %106 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %110 ]
  %113 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %114 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %117 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %118 = icmp ne %struct.nvkm_enum* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %121 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  br label %124

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i8* [ %122, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %123 ]
  %126 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %127 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %130 = icmp ne %struct.nvkm_enum* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %133 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  br label %136

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8* [ %134, %131 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %135 ]
  %138 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %139 = icmp ne %struct.nvkm_fifo_chan* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %142 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  br label %145

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i32 [ %143, %140 ], [ -1, %144 ]
  %147 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  %148 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %151 = icmp ne %struct.nvkm_fifo_chan* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %154 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %152
  %161 = phi i8* [ %158, %152 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %159 ]
  %162 = call i32 @nvkm_error(%struct.nvkm_subdev* %91, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %100, i32 %103, i8* %112, i32 %115, i8* %116, i8* %125, i32 %128, i8* %137, i32 %146, i32 %149, i8* %161)
  %163 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %164 = icmp ne %struct.nvkm_engine* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %167 = icmp ne %struct.nvkm_fifo_chan* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.gf100_fifo*, %struct.gf100_fifo** %5, align 8
  %170 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %171 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %12, align 8
  %172 = bitcast %struct.nvkm_fifo_chan* %171 to i8*
  %173 = call i32 @gf100_fifo_recover(%struct.gf100_fifo* %169, %struct.nvkm_engine* %170, i8* %172)
  br label %174

174:                                              ; preds = %168, %165, %160
  %175 = load %struct.gf100_fifo*, %struct.gf100_fifo** %5, align 8
  %176 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %175, i32 0, i32 0
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @nvkm_fifo_chan_put(%struct.TYPE_9__* %176, i64 %177, %struct.nvkm_fifo_chan** %12)
  ret void
}

declare dso_local %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @nvkm_bar_bar1_reset(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_bar_bar2_reset(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.TYPE_9__*, i32, i64*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @gf100_fifo_recover(%struct.gf100_fifo*, %struct.nvkm_engine*, i8*) #1

declare dso_local i32 @nvkm_fifo_chan_put(%struct.TYPE_9__*, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
