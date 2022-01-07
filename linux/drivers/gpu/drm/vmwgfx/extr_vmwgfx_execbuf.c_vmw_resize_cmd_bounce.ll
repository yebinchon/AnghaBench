; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resize_cmd_bounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resize_cmd_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_sw_context = type { i32, i32* }

@VMWGFX_CMD_BOUNCE_INIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate command bounce buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_sw_context*, i32)* @vmw_resize_cmd_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resize_cmd_bounce(%struct.vmw_sw_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_sw_context*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %7 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %17 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @VMWGFX_CMD_BOUNCE_INIT_SIZE, align 4
  %22 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %31, %24
  %26 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %27 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %33 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %36 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 1
  %39 = add nsw i32 %34, %38
  %40 = call i32 @PAGE_ALIGN(i32 %39)
  %41 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %42 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %45 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vfree(i32* %46)
  %48 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %49 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @vmalloc(i32 %50)
  %52 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %53 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %55 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %4, align 8
  %61 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %58, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
