; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_submit_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_execbuf_submit_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i8*, i32, %struct.vmw_sw_context*)* @vmw_execbuf_submit_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_execbuf_submit_fifo(%struct.vmw_private* %0, i8* %1, i32 %2, %struct.vmw_sw_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_sw_context*, align 8
  %10 = alloca i8*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vmw_sw_context* %3, %struct.vmw_sw_context** %9, align 8
  %11 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %12 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %19 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @VMW_FIFO_RESERVE_DX(%struct.vmw_private* %16, i32 %17, i32 %24)
  store i8* %25, i8** %10, align 8
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @VMW_FIFO_RESERVE(%struct.vmw_private* %27, i32 %28)
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %26, %15
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %53

36:                                               ; preds = %30
  %37 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %38 = call i32 @vmw_apply_relocations(%struct.vmw_sw_context* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %45 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %44, i32 0, i32 0
  %46 = call i32 @vmw_resource_relocations_apply(i8* %43, i32* %45)
  %47 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %9, align 8
  %48 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %47, i32 0, i32 0
  %49 = call i32 @vmw_resource_relocations_free(i32* %48)
  %50 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @vmw_fifo_commit(%struct.vmw_private* %50, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %36, %33
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i8* @VMW_FIFO_RESERVE_DX(%struct.vmw_private*, i32, i32) #1

declare dso_local i8* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_apply_relocations(%struct.vmw_sw_context*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vmw_resource_relocations_apply(i8*, i32*) #1

declare dso_local i32 @vmw_resource_relocations_free(i32*) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
