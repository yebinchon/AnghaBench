; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i64, %struct.vmw_cmdbuf_header* }
%struct.vmw_cmdbuf_header = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SVGA_CB_FLAG_DX_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_cmdbuf_commit(%struct.vmw_cmdbuf_man* %0, i64 %1, %struct.vmw_cmdbuf_header* %2, i32 %3) #0 {
  %5 = alloca %struct.vmw_cmdbuf_man*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmw_cmdbuf_header*, align 8
  %8 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vmw_cmdbuf_header* %2, %struct.vmw_cmdbuf_header** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %7, align 8
  %10 = icmp ne %struct.vmw_cmdbuf_header* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @vmw_cmdbuf_commit_cur(%struct.vmw_cmdbuf_man* %12, i64 %13, i32 %14)
  br label %54

16:                                               ; preds = %4
  %17 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %18 = call i32 @vmw_cmdbuf_cur_lock(%struct.vmw_cmdbuf_man* %17, i32 0)
  %19 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %20 = call i32 @__vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man* %19)
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %7, align 8
  %23 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %7, align 8
  %29 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %29, i32 0, i32 1
  store %struct.vmw_cmdbuf_header* %28, %struct.vmw_cmdbuf_header** %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %33 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %16
  %37 = load i32, i32* @SVGA_CB_FLAG_DX_CONTEXT, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.vmw_cmdbuf_header*, %struct.vmw_cmdbuf_header** %7, align 8
  %40 = getelementptr inbounds %struct.vmw_cmdbuf_header, %struct.vmw_cmdbuf_header* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %36, %16
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %50 = call i32 @__vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %53 = call i32 @vmw_cmdbuf_cur_unlock(%struct.vmw_cmdbuf_man* %52)
  br label %54

54:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32 @vmw_cmdbuf_commit_cur(%struct.vmw_cmdbuf_man*, i64, i32) #1

declare dso_local i32 @vmw_cmdbuf_cur_lock(%struct.vmw_cmdbuf_man*, i32) #1

declare dso_local i32 @__vmw_cmdbuf_cur_flush(%struct.vmw_cmdbuf_man*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_cmdbuf_cur_unlock(%struct.vmw_cmdbuf_man*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
