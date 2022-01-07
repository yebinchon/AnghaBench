; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32 }
%struct.vmw_cmdbuf_header = type { i64, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SVGA3D_INVALID_ID = common dso_local global i32 0, align 4
@SVGA_CB_FLAG_DX_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmw_cmdbuf_reserve(%struct.vmw_cmdbuf_man* %0, i64 %1, i32 %2, i32 %3, %struct.vmw_cmdbuf_header* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmw_cmdbuf_man*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_cmdbuf_header*, align 8
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.vmw_cmdbuf_header* %4, %struct.vmw_cmdbuf_header** %11, align 8
  %12 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %13 = icmp ne %struct.vmw_cmdbuf_header* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i8* @vmw_cmdbuf_reserve_cur(%struct.vmw_cmdbuf_man* %15, i64 %16, i32 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  br label %54

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %23 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i8* @ERR_PTR(i32 %28)
  store i8* %29, i8** %6, align 8
  br label %54

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SVGA3D_INVALID_ID, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* @SVGA_CB_FLAG_DX_CONTEXT, align 4
  %36 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %37 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %44 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %34, %30
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %50 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %11, align 8
  %52 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %47, %26, %14
  %55 = load i8*, i8** %6, align 8
  ret i8* %55
}

declare dso_local i8* @vmw_cmdbuf_reserve_cur(%struct.vmw_cmdbuf_man*, i64, i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
