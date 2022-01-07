; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c___vmw_cmdbuf_cur_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c___vmw_cmdbuf_cur_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i64, %struct.vmw_cmdbuf_header*, i32, i32 }
%struct.vmw_cmdbuf_header = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SVGA_CB_CONTEXT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_cmdbuf_man*)* @__vmw_cmdbuf_cur_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_man*, align 8
  %3 = alloca %struct.vmw_cmdbuf_header*, align 8
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %2, align 8
  %4 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %4, i32 0, i32 1
  %6 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %5, align 8
  store %struct.vmw_cmdbuf_header* %6, %struct.vmw_cmdbuf_header** %3, align 8
  %7 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %7, i32 0, i32 3
  %9 = call i32 @lockdep_assert_held_once(i32* %8)
  %10 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %3, align 8
  %11 = icmp ne %struct.vmw_cmdbuf_header* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %15 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %18 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %3, align 8
  %23 = call i32 @__vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header* %22)
  br label %40

24:                                               ; preds = %13
  %25 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %26 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %29 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %28, i32 0, i32 1
  %30 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %29, align 8
  %31 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %27, i64* %33, align 8
  %34 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %35 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %36 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %35, i32 0, i32 1
  %37 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %36, align 8
  %38 = load i32, i32* @SVGA_CB_CONTEXT_0, align 4
  %39 = call i32 @vmw_cmdbuf_ctx_add(%struct.vmw_cmdbuf_man* %34, %struct.vmw_cmdbuf_header* %37, i32 %38)
  br label %40

40:                                               ; preds = %24, %21
  %41 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %42 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %45 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %44, i32 0, i32 1
  store %struct.vmw_cmdbuf_header* null, %struct.vmw_cmdbuf_header** %45, align 8
  %46 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %2, align 8
  %47 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @lockdep_assert_held_once(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @vmw_cmdbuf_ctx_add(%struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_header*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
