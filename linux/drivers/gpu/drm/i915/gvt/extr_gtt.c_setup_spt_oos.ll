; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_setup_spt_oos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_setup_spt_oos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.intel_gvt_gtt }
%struct.intel_gvt_gtt = type { i32, i32 }
%struct.intel_vgpu_oos_page = type { i32, i32, i32, i8* }

@preallocated_oos_pages = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d oos pages preallocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*)* @setup_spt_oos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_spt_oos(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_gvt_gtt*, align 8
  %5 = alloca %struct.intel_vgpu_oos_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %8 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %9 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %8, i32 0, i32 0
  store %struct.intel_gvt_gtt* %9, %struct.intel_gvt_gtt** %4, align 8
  %10 = load %struct.intel_gvt_gtt*, %struct.intel_gvt_gtt** %4, align 8
  %11 = getelementptr inbounds %struct.intel_gvt_gtt, %struct.intel_gvt_gtt* %10, i32 0, i32 0
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.intel_gvt_gtt*, %struct.intel_gvt_gtt** %4, align 8
  %14 = getelementptr inbounds %struct.intel_gvt_gtt, %struct.intel_gvt_gtt* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %58, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @preallocated_oos_pages, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.intel_vgpu_oos_page* @kzalloc(i32 24, i32 %21)
  store %struct.intel_vgpu_oos_page* %22, %struct.intel_vgpu_oos_page** %5, align 8
  %23 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %24 = icmp ne %struct.intel_vgpu_oos_page* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i64 @__get_free_pages(i32 %29, i32 0)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %42 = call i32 @kfree(%struct.intel_vgpu_oos_page* %41)
  br label %64

43:                                               ; preds = %28
  %44 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %53, i32 0, i32 1
  %55 = load %struct.intel_gvt_gtt*, %struct.intel_gvt_gtt** %4, align 8
  %56 = getelementptr inbounds %struct.intel_gvt_gtt, %struct.intel_gvt_gtt* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @gvt_dbg_mm(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %68

64:                                               ; preds = %38, %25
  %65 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %66 = call i32 @clean_spt_oos(%struct.intel_gvt* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.intel_vgpu_oos_page* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_vgpu_oos_page*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @gvt_dbg_mm(i8*, i32) #1

declare dso_local i32 @clean_spt_oos(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
