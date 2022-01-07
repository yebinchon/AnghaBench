; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c___vmw_cmdbuf_header_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c___vmw_cmdbuf_header_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_header = type { i32, i64, i32, i64, %struct.vmw_cmdbuf_man* }
%struct.vmw_cmdbuf_man = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_cmdbuf_header*)* @__vmw_cmdbuf_header_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_header*, align 8
  %3 = alloca %struct.vmw_cmdbuf_man*, align 8
  store %struct.vmw_cmdbuf_header* %0, %struct.vmw_cmdbuf_header** %2, align 8
  %4 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %4, i32 0, i32 4
  %6 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  store %struct.vmw_cmdbuf_man* %6, %struct.vmw_cmdbuf_man** %3, align 8
  %7 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held_once(i32* %8)
  %10 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %11 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %16 = call i32 @vmw_cmdbuf_header_inline_free(%struct.vmw_cmdbuf_header* %15)
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %19 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %18, i32 0, i32 2
  %20 = call i32 @drm_mm_remove_node(i32* %19)
  %21 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %21, i32 0, i32 1
  %23 = call i32 @wake_up_all(i32* %22)
  %24 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %25 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %17
  %29 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %33 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %36 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_pool_free(i32 %31, i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %17
  %40 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %41 = call i32 @kfree(%struct.vmw_cmdbuf_header* %40)
  br label %42

42:                                               ; preds = %39, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @vmw_cmdbuf_header_inline_free(%struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.vmw_cmdbuf_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
