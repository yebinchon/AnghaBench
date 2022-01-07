; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_page_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_page_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.nouveau_dmem_chunk* }
%struct.nouveau_dmem_chunk = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @nouveau_dmem_page_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_dmem_page_free(%struct.page* %0) #0 {
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
  %14 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clear_bit(i64 %17, i32 %20)
  %22 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
