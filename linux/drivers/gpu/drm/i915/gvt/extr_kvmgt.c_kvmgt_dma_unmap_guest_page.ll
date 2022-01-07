; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_dma_unmap_guest_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_dma_unmap_guest_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gvt_dma = type { i32 }

@__gvt_dma_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @kvmgt_dma_unmap_guest_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmgt_dma_unmap_guest_page(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmgt_guest_info*, align 8
  %6 = alloca %struct.gvt_dma*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @handle_valid(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %13, %struct.kvmgt_guest_info** %5, align 8
  %14 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %5, align 8
  %15 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %5, align 8
  %21 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.gvt_dma* @__gvt_cache_find_dma_addr(%struct.TYPE_4__* %22, i32 %23)
  store %struct.gvt_dma* %24, %struct.gvt_dma** %6, align 8
  %25 = load %struct.gvt_dma*, %struct.gvt_dma** %6, align 8
  %26 = icmp ne %struct.gvt_dma* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load %struct.gvt_dma*, %struct.gvt_dma** %6, align 8
  %29 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %28, i32 0, i32 0
  %30 = load i32, i32* @__gvt_dma_release, align 4
  %31 = call i32 @kref_put(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %11
  %33 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %5, align 8
  %34 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gvt_dma* @__gvt_cache_find_dma_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
