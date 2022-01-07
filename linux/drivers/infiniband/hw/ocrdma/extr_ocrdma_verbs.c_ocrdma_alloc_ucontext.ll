; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_ucontext = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ocrdma_alloc_ucontext_resp = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_dev = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_ucontext*, align 8
  %9 = alloca %struct.ocrdma_alloc_ucontext_resp, align 4
  %10 = alloca %struct.ocrdma_dev*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %6, align 8
  %16 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %17 = call %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext* %16)
  store %struct.ocrdma_ucontext* %17, %struct.ocrdma_ucontext** %8, align 8
  %18 = bitcast %struct.ocrdma_alloc_ucontext_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %19)
  store %struct.ocrdma_dev* %20, %struct.ocrdma_dev** %10, align 8
  %21 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %22 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %11, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @roundup(i32 8192, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %28 = icmp ne %struct.ib_udata* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %160

32:                                               ; preds = %2
  %33 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %34 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %37 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @dma_alloc_coherent(i32* %40, i32 %41, i32* %44, i32 %45)
  %47 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %48 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %51 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %32
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %160

58:                                               ; preds = %32
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %61 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %64 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %69 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @virt_to_phys(i32 %71)
  %73 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 7
  store i32 %72, i32* %73, align 4
  %74 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %75 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext* %74, i32 %76, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %58
  br label %143

83:                                               ; preds = %58
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %85 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %86 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %87 = call i32 @ocrdma_alloc_ucontext_pd(%struct.ocrdma_dev* %84, %struct.ocrdma_ucontext* %85, %struct.ib_udata* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %132

91:                                               ; preds = %83
  %92 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %93 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %97 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %102 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 3
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %107 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %112 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, %struct.ocrdma_alloc_ucontext_resp* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %119 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @memcpy(i32 %117, i32 %121, i32 4)
  %123 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %124 = call i32 @ib_copy_to_udata(%struct.ib_udata* %123, %struct.ocrdma_alloc_ucontext_resp* %9, i32 32)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %91
  br label %129

128:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %160

129:                                              ; preds = %127
  %130 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %131 = call i32 @ocrdma_dealloc_ucontext_pd(%struct.ocrdma_ucontext* %130)
  br label %132

132:                                              ; preds = %129, %90
  %133 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %134 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %135 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %139 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext* %133, i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %132, %82
  %144 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %147 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %151 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %155 = getelementptr inbounds %struct.ocrdma_ucontext, %struct.ocrdma_ucontext* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dma_free_coherent(i32* %145, i32 %149, i32 %153, i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %143, %128, %55, %29
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @ocrdma_add_mmap(%struct.ocrdma_ucontext*, i32, i32) #1

declare dso_local i32 @ocrdma_alloc_ucontext_pd(%struct.ocrdma_dev*, %struct.ocrdma_ucontext*, %struct.ib_udata*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.ocrdma_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @ocrdma_dealloc_ucontext_pd(%struct.ocrdma_ucontext*) #1

declare dso_local i32 @ocrdma_del_mmap(%struct.ocrdma_ucontext*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
