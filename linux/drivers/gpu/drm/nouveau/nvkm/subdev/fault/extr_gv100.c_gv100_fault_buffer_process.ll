; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_buffer_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_buffer_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault_buffer = type { i32, i32, %struct.TYPE_8__*, i32, %struct.nvkm_memory* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_fault_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fault_buffer*)* @gv100_fault_buffer_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_fault_buffer_process(%struct.nvkm_fault_buffer* %0) #0 {
  %2 = alloca %struct.nvkm_fault_buffer*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_fault_data, align 4
  store %struct.nvkm_fault_buffer* %0, %struct.nvkm_fault_buffer** %2, align 8
  %17 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %3, align 8
  %23 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %23, i32 0, i32 4
  %25 = load %struct.nvkm_memory*, %struct.nvkm_memory** %24, align 8
  store %struct.nvkm_memory* %25, %struct.nvkm_memory** %4, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %27 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %32 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %33 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %152

40:                                               ; preds = %1
  %41 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %42 = call i32 @nvkm_kmap(%struct.nvkm_memory* %41)
  br label %43

43:                                               ; preds = %97, %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %149

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %50 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %48, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 0
  %61 = call i32 @nvkm_ro32(%struct.nvkm_memory* %58, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 4
  %65 = call i32 @nvkm_ro32(%struct.nvkm_memory* %62, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 8
  %69 = call i32 @nvkm_ro32(%struct.nvkm_memory* %66, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 12
  %73 = call i32 @nvkm_ro32(%struct.nvkm_memory* %70, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 16
  %77 = call i32 @nvkm_ro32(%struct.nvkm_memory* %74, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 20
  %81 = call i32 @nvkm_ro32(%struct.nvkm_memory* %78, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 24
  %85 = call i32 @nvkm_ro32(%struct.nvkm_memory* %82, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 28
  %89 = call i32 @nvkm_ro32(%struct.nvkm_memory* %86, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %93 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %47
  %98 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %99 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %100 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %98, i32 %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 32
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %105, %106
  %108 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 32
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %110, %111
  %113 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %13, align 4
  %115 = shl i32 %114, 32
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %115, %116
  %118 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %15, align 4
  %123 = and i32 %122, -2147483648
  %124 = lshr i32 %123, 31
  %125 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 4
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, 520093696
  %128 = ashr i32 %127, 24
  %129 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %130, 1048576
  %132 = ashr i32 %131, 20
  %133 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 6
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %15, align 4
  %135 = and i32 %134, 983040
  %136 = ashr i32 %135, 16
  %137 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 7
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, 32512
  %140 = ashr i32 %139, 8
  %141 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = and i32 %142, 31
  %144 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %16, i32 0, i32 9
  store i32 %143, i32* %144, align 4
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %146 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @nvkm_fifo_fault(i32 %147, %struct.nvkm_fault_data* %16)
  br label %43

149:                                              ; preds = %43
  %150 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %151 = call i32 @nvkm_done(%struct.nvkm_memory* %150)
  br label %152

152:                                              ; preds = %149, %39
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_ro32(%struct.nvkm_memory*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_fifo_fault(i32, %struct.nvkm_fault_data*) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
