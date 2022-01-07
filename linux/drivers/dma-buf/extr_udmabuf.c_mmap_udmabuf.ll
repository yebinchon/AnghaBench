; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_mmap_udmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_mmap_udmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.udmabuf* }
%struct.udmabuf = type { i32 }
%struct.vm_area_struct = type { i32, %struct.udmabuf*, i32* }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@udmabuf_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @mmap_udmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_udmabuf(%struct.dma_buf* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.udmabuf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %8 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %7, i32 0, i32 0
  %9 = load %struct.udmabuf*, %struct.udmabuf** %8, align 8
  store %struct.udmabuf* %9, %struct.udmabuf** %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VM_SHARED, align 4
  %14 = load i32, i32* @VM_MAYSHARE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  store i32* @udmabuf_vm_ops, i32** %23, align 8
  %24 = load %struct.udmabuf*, %struct.udmabuf** %6, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  store %struct.udmabuf* %24, %struct.udmabuf** %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
