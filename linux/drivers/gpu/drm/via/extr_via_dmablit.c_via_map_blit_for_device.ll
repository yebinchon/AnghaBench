; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_map_blit_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_map_blit_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_9__**, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@VIA_DMA_DPR_EC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@dr_via_device_mapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32)* @via_map_blit_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_map_blit_for_device(%struct.pci_dev* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @VIA_PGDN(i8* %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %13, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* @VIA_DMA_DPR_EC, align 4
  %32 = or i32 0, %31
  store i32 %32, i32* %20, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %21, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %38, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %21, align 8
  br label %43

43:                                               ; preds = %35, %4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %150, %43
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %153

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i8*, i8** %11, align 8
  store i8* %55, i8** %12, align 8
  br label %56

56:                                               ; preds = %126, %50
  %57 = load i64, i64* %16, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %136

59:                                               ; preds = %56
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i64 @VIA_PGOFF(i8* %61)
  %63 = sub nsw i64 %60, %62
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @min(i64 %63, i64 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %16, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %16, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %126

72:                                               ; preds = %59
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i64 @VIA_PFN(i8* %78)
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @VIA_PFN(i8* %80)
  %82 = sub i64 %79, %81
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = call i64 @VIA_PGOFF(i8* %85)
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_map_page(i32* %74, i32 %84, i64 %86, i32 %87, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @dma_map_single(i32* %104, %struct.TYPE_9__* %105, i32 16, i32 %106)
  store i32 %107, i32* %20, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 1
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %21, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp uge i32 %111, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %72
  store i32 0, i32* %10, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %119, i64 %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %21, align 8
  br label %125

125:                                              ; preds = %116, %72
  br label %126

126:                                              ; preds = %125, %59
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %12, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %15, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %15, align 4
  br label %56

136:                                              ; preds = %56
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %11, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = zext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %136
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %19, align 4
  br label %44

153:                                              ; preds = %44
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i32, i32* %20, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @dr_via_device_mapped, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %153
  %164 = load i32, i32* %18, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  ret void
}

declare dso_local i64 @VIA_PGDN(i8*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @VIA_PGOFF(i8*) #1

declare dso_local i32 @dma_map_page(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @VIA_PFN(i8*) #1

declare dso_local i32 @dma_map_single(i32*, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
