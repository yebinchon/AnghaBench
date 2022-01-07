; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_setup_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_setup_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.rdma_hw_stats*, %struct.rdma_hw_stats*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.rdma_hw_stats = type { i32, i8*, %struct.rdma_hw_stats**, i32, i32*, i32 }
%struct.TYPE_6__ = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.TYPE_5__ = type { %struct.rdma_hw_stats* }
%struct.TYPE_4__ = type { i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)*, %struct.rdma_hw_stats* (%struct.ib_device.1*, i64)* }
%struct.ib_device.0 = type opaque
%struct.ib_device.1 = type opaque
%struct.ib_port = type { %struct.rdma_hw_stats*, %struct.rdma_hw_stats*, %struct.kobject }
%struct.attribute_group = type { i32, i8*, %struct.attribute_group**, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hw_counters\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lifespan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.ib_port*, i64)* @setup_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_hw_stats(%struct.ib_device* %0, %struct.ib_port* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attribute_group*, align 8
  %8 = alloca %struct.rdma_hw_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kobject*, align 8
  %12 = alloca %struct.kobject*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_port* %1, %struct.ib_port** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.rdma_hw_stats* (%struct.ib_device.1*, i64)*, %struct.rdma_hw_stats* (%struct.ib_device.1*, i64)** %15, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %18 = bitcast %struct.ib_device* %17 to %struct.ib_device.1*
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.rdma_hw_stats* %16(%struct.ib_device.1* %18, i64 %19)
  store %struct.rdma_hw_stats* %20, %struct.rdma_hw_stats** %8, align 8
  %21 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %22 = icmp ne %struct.rdma_hw_stats* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %237

24:                                               ; preds = %3
  %25 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %26 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %31 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %234

35:                                               ; preds = %29
  %36 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %37 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = add i64 48, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.rdma_hw_stats* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast %struct.rdma_hw_stats* %45 to %struct.attribute_group*
  store %struct.attribute_group* %46, %struct.attribute_group** %7, align 8
  %47 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %48 = icmp ne %struct.attribute_group* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %234

50:                                               ; preds = %35
  %51 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %52 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)*, i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)** %53, align 8
  %55 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %56 = bitcast %struct.ib_device* %55 to %struct.ib_device.0*
  %57 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %60 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %54(%struct.ib_device.0* %56, %struct.rdma_hw_stats* %57, i64 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %65 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %230

69:                                               ; preds = %50
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %72 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %74 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %76 = bitcast %struct.attribute_group* %75 to i8*
  %77 = getelementptr i8, i8* %76, i64 48
  %78 = bitcast i8* %77 to %struct.attribute_group**
  %79 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %80 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %79, i32 0, i32 2
  store %struct.attribute_group** %78, %struct.attribute_group*** %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %124, %69
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %84 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %91 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.rdma_hw_stats* @alloc_hsa(i32 %88, i64 %89, i32 %96)
  %98 = bitcast %struct.rdma_hw_stats* %97 to %struct.attribute_group*
  %99 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %100 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %99, i32 0, i32 2
  %101 = load %struct.attribute_group**, %struct.attribute_group*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %101, i64 %103
  store %struct.attribute_group* %98, %struct.attribute_group** %104, align 8
  %105 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %106 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %105, i32 0, i32 2
  %107 = load %struct.attribute_group**, %struct.attribute_group*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %107, i64 %109
  %111 = load %struct.attribute_group*, %struct.attribute_group** %110, align 8
  %112 = icmp ne %struct.attribute_group* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %87
  br label %212

114:                                              ; preds = %87
  %115 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %116 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %115, i32 0, i32 2
  %117 = load %struct.attribute_group**, %struct.attribute_group*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %117, i64 %119
  %121 = load %struct.attribute_group*, %struct.attribute_group** %120, align 8
  %122 = bitcast %struct.attribute_group* %121 to %struct.rdma_hw_stats*
  %123 = call i32 @sysfs_attr_init(%struct.rdma_hw_stats* %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %81

127:                                              ; preds = %81
  %128 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %129 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %128, i32 0, i32 3
  %130 = call i32 @mutex_init(i32* %129)
  %131 = load i64, i64* %6, align 8
  %132 = call %struct.rdma_hw_stats* @alloc_hsa_lifespan(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = bitcast %struct.rdma_hw_stats* %132 to %struct.attribute_group*
  %134 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %135 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %134, i32 0, i32 2
  %136 = load %struct.attribute_group**, %struct.attribute_group*** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %136, i64 %138
  store %struct.attribute_group* %133, %struct.attribute_group** %139, align 8
  %140 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %141 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %140, i32 0, i32 2
  %142 = load %struct.attribute_group**, %struct.attribute_group*** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %142, i64 %144
  %146 = load %struct.attribute_group*, %struct.attribute_group** %145, align 8
  %147 = icmp ne %struct.attribute_group* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %127
  %149 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %150 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %149, i32 0, i32 2
  %151 = load %struct.attribute_group**, %struct.attribute_group*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %151, i64 %153
  %155 = load %struct.attribute_group*, %struct.attribute_group** %154, align 8
  %156 = bitcast %struct.attribute_group* %155 to %struct.rdma_hw_stats*
  %157 = call i32 @sysfs_attr_init(%struct.rdma_hw_stats* %156)
  br label %158

158:                                              ; preds = %148, %127
  %159 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %160 = icmp ne %struct.ib_port* %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %158
  %162 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %163 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %162, i32 0, i32 2
  store %struct.kobject* %163, %struct.kobject** %11, align 8
  %164 = load %struct.kobject*, %struct.kobject** %11, align 8
  %165 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %166 = bitcast %struct.attribute_group* %165 to %struct.rdma_hw_stats*
  %167 = call i32 @sysfs_create_group(%struct.kobject* %164, %struct.rdma_hw_stats* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %212

171:                                              ; preds = %161
  %172 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %173 = bitcast %struct.attribute_group* %172 to %struct.rdma_hw_stats*
  %174 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %175 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %174, i32 0, i32 1
  store %struct.rdma_hw_stats* %173, %struct.rdma_hw_stats** %175, align 8
  %176 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %177 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %178 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %177, i32 0, i32 0
  store %struct.rdma_hw_stats* %176, %struct.rdma_hw_stats** %178, align 8
  %179 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %180 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %179, i32 0, i32 3
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = icmp ne %struct.TYPE_5__* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %171
  %184 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %185 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %186 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %185, i32 0, i32 3
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  store %struct.rdma_hw_stats* %184, %struct.rdma_hw_stats** %190, align 8
  br label %191

191:                                              ; preds = %183, %171
  br label %211

192:                                              ; preds = %158
  %193 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %194 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store %struct.kobject* %195, %struct.kobject** %12, align 8
  %196 = load %struct.kobject*, %struct.kobject** %12, align 8
  %197 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %198 = bitcast %struct.attribute_group* %197 to %struct.rdma_hw_stats*
  %199 = call i32 @sysfs_create_group(%struct.kobject* %196, %struct.rdma_hw_stats* %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %212

203:                                              ; preds = %192
  %204 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %205 = bitcast %struct.attribute_group* %204 to %struct.rdma_hw_stats*
  %206 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %207 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %206, i32 0, i32 1
  store %struct.rdma_hw_stats* %205, %struct.rdma_hw_stats** %207, align 8
  %208 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %209 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %210 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %209, i32 0, i32 0
  store %struct.rdma_hw_stats* %208, %struct.rdma_hw_stats** %210, align 8
  br label %211

211:                                              ; preds = %203, %191
  br label %237

212:                                              ; preds = %202, %170, %113
  br label %213

213:                                              ; preds = %226, %212
  %214 = load i32, i32* %9, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %218 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %217, i32 0, i32 2
  %219 = load %struct.attribute_group**, %struct.attribute_group*** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %219, i64 %221
  %223 = load %struct.attribute_group*, %struct.attribute_group** %222, align 8
  %224 = bitcast %struct.attribute_group* %223 to %struct.rdma_hw_stats*
  %225 = call i32 @kfree(%struct.rdma_hw_stats* %224)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %9, align 4
  br label %213

229:                                              ; preds = %213
  br label %230

230:                                              ; preds = %229, %68
  %231 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %232 = bitcast %struct.attribute_group* %231 to %struct.rdma_hw_stats*
  %233 = call i32 @kfree(%struct.rdma_hw_stats* %232)
  br label %234

234:                                              ; preds = %230, %49, %34
  %235 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %8, align 8
  %236 = call i32 @kfree(%struct.rdma_hw_stats* %235)
  br label %237

237:                                              ; preds = %234, %211, %23
  ret void
}

declare dso_local %struct.rdma_hw_stats* @kzalloc(i32, i32) #1

declare dso_local %struct.rdma_hw_stats* @alloc_hsa(i32, i64, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.rdma_hw_stats*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.rdma_hw_stats* @alloc_hsa_lifespan(i8*, i64) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.rdma_hw_stats*) #1

declare dso_local i32 @kfree(%struct.rdma_hw_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
