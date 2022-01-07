; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_header_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_header_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_header = type { i64, %struct.vmw_cmdbuf_man* }
%struct.vmw_cmdbuf_man = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header* %0) #0 {
  %2 = alloca %struct.vmw_cmdbuf_header*, align 8
  %3 = alloca %struct.vmw_cmdbuf_man*, align 8
  store %struct.vmw_cmdbuf_header* %0, %struct.vmw_cmdbuf_header** %2, align 8
  %4 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %4, i32 0, i32 1
  %6 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  store %struct.vmw_cmdbuf_man* %6, %struct.vmw_cmdbuf_man** %3, align 8
  %7 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %13 = call i32 @vmw_cmdbuf_header_inline_free(%struct.vmw_cmdbuf_header* %12)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %2, align 8
  %19 = call i32 @__vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header* %18)
  %20 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %3, align 8
  %21 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  br label %23

23:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @vmw_cmdbuf_header_inline_free(%struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__vmw_cmdbuf_header_free(%struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
