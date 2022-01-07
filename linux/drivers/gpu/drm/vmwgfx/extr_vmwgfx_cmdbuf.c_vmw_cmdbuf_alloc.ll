; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32 }
%struct.vmw_cmdbuf_header = type { i8*, %struct.TYPE_2__*, i32, %struct.vmw_cmdbuf_man* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMW_CMDBUF_INLINE_SIZE = common dso_local global i64 0, align 8
@SVGA_CB_STATUS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmw_cmdbuf_alloc(%struct.vmw_cmdbuf_man* %0, i64 %1, i32 %2, %struct.vmw_cmdbuf_header** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vmw_cmdbuf_man*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_cmdbuf_header**, align 8
  %10 = alloca %struct.vmw_cmdbuf_header*, align 8
  %11 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vmw_cmdbuf_header** %3, %struct.vmw_cmdbuf_header*** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.vmw_cmdbuf_header**, %struct.vmw_cmdbuf_header*** %9, align 8
  store %struct.vmw_cmdbuf_header* null, %struct.vmw_cmdbuf_header** %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vmw_cmdbuf_header* @kzalloc(i32 32, i32 %13)
  store %struct.vmw_cmdbuf_header* %14, %struct.vmw_cmdbuf_header** %10, align 8
  %15 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %16 = icmp ne %struct.vmw_cmdbuf_header* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %5, align 8
  br label %61

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @VMW_CMDBUF_INLINE_SIZE, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %27 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @vmw_cmdbuf_space_inline(%struct.vmw_cmdbuf_man* %26, %struct.vmw_cmdbuf_header* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  br label %36

30:                                               ; preds = %21
  %31 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %32 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vmw_cmdbuf_space_pool(%struct.vmw_cmdbuf_man* %31, %struct.vmw_cmdbuf_header* %32, i64 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %41 = call i32 @kfree(%struct.vmw_cmdbuf_header* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %5, align 8
  br label %61

44:                                               ; preds = %36
  %45 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %6, align 8
  %46 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %47 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %46, i32 0, i32 3
  store %struct.vmw_cmdbuf_man* %45, %struct.vmw_cmdbuf_man** %47, align 8
  %48 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %49 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @SVGA_CB_STATUS_NONE, align 4
  %52 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %53 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %57 = load %struct.vmw_cmdbuf_header**, %struct.vmw_cmdbuf_header*** %9, align 8
  store %struct.vmw_cmdbuf_header* %56, %struct.vmw_cmdbuf_header** %57, align 8
  %58 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %10, align 8
  %59 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %44, %39, %17
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local %struct.vmw_cmdbuf_header* @kzalloc(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @vmw_cmdbuf_space_inline(%struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_header*, i64) #1

declare dso_local i32 @vmw_cmdbuf_space_pool(%struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_header*, i64, i32) #1

declare dso_local i32 @kfree(%struct.vmw_cmdbuf_header*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
