; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_ctx_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_ctx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vmw_cmdbuf_header = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@SVGA_CB_FLAG_DX_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_header*, i64)* @vmw_cmdbuf_ctx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_cmdbuf_ctx_add(%struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_header* %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_cmdbuf_man*, align 8
  %5 = alloca %struct.vmw_cmdbuf_header*, align 8
  %6 = alloca i64, align 8
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %4, align 8
  store %struct.vmw_cmdbuf_header* %1, %struct.vmw_cmdbuf_header** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %5, align 8
  %8 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SVGA_CB_FLAG_DX_CONTEXT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %5, align 8
  %23 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %5, align 8
  %25 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %24, i32 0, i32 1
  %26 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %27 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %25, i32* %31)
  %33 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %4, align 8
  %34 = call i32 @vmw_cmdbuf_man_process(%struct.vmw_cmdbuf_man* %33)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vmw_cmdbuf_man_process(%struct.vmw_cmdbuf_man*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
