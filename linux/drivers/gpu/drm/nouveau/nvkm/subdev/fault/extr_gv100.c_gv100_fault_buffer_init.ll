; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault_buffer = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fault_buffer*)* @gv100_fault_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_fault_buffer_init(%struct.nvkm_fault_buffer* %0) #0 {
  %2 = alloca %struct.nvkm_fault_buffer*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_fault_buffer* %0, %struct.nvkm_fault_buffer** %2, align 8
  %5 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 20
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 1052212, %16
  %18 = call i32 @nvkm_mask(%struct.nvkm_device* %15, i32 %17, i32 -1073741824, i32 1073741824)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 1052200, %20
  %22 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @upper_32_bits(i32 %24)
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 %21, i32 %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 1052196, %28
  %30 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %29, i32 %33)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 1052212, %36
  %38 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 %37, i32 -2147483648, i32 -2147483648)
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
