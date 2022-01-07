; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_page_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_page_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.nouveau_dmem_chunk* }
%struct.nouveau_dmem_chunk = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*)* @nouveau_dmem_page_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nouveau_dmem_page_addr(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.nouveau_dmem_chunk*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %6, align 8
  store %struct.nouveau_dmem_chunk* %7, %struct.nouveau_dmem_chunk** %3, align 8
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i64 @page_to_pfn(%struct.page* %8)
  %10 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %16, %22
  ret i64 %23
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
