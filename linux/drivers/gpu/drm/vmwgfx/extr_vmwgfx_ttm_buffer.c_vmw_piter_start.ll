; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_piter_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_piter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_piter = type { i64, %struct.TYPE_3__, i32*, i32*, i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vmw_sg_table = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@__vmw_piter_non_sg_page = common dso_local global i32 0, align 4
@__vmw_piter_non_sg_next = common dso_local global i32 0, align 4
@__vmw_piter_phys_addr = common dso_local global i32 0, align 4
@__vmw_piter_dma_addr = common dso_local global i32 0, align 4
@__vmw_piter_sg_next = common dso_local global i32 0, align 4
@__vmw_piter_sg_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_piter_start(%struct.vmw_piter* %0, %struct.vmw_sg_table* %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_piter*, align 8
  %5 = alloca %struct.vmw_sg_table*, align 8
  %6 = alloca i64, align 8
  store %struct.vmw_piter* %0, %struct.vmw_piter** %4, align 8
  store %struct.vmw_sg_table* %1, %struct.vmw_sg_table** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = sub i64 %7, 1
  %9 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %10 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %12 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %15 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %17 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %16, i32 0, i32 6
  store i32* @__vmw_piter_non_sg_page, i32** %17, align 8
  %18 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %19 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %22 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %24 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %61 [
    i32 128, label %26
    i32 131, label %31
    i32 129, label %41
    i32 130, label %41
  ]

26:                                               ; preds = %3
  %27 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %28 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %27, i32 0, i32 3
  store i32* @__vmw_piter_non_sg_next, i32** %28, align 8
  %29 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %30 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %29, i32 0, i32 2
  store i32* @__vmw_piter_phys_addr, i32** %30, align 8
  br label %63

31:                                               ; preds = %3
  %32 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %33 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %32, i32 0, i32 3
  store i32* @__vmw_piter_non_sg_next, i32** %33, align 8
  %34 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %35 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %34, i32 0, i32 2
  store i32* @__vmw_piter_dma_addr, i32** %35, align 8
  %36 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %37 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %40 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  br label %63

41:                                               ; preds = %3, %3
  %42 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %43 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %42, i32 0, i32 3
  store i32* @__vmw_piter_sg_next, i32** %43, align 8
  %44 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %45 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %44, i32 0, i32 2
  store i32* @__vmw_piter_sg_addr, i32** %45, align 8
  %46 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %47 = getelementptr inbounds %struct.vmw_piter, %struct.vmw_piter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %50 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %5, align 8
  %55 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @__sg_page_iter_start(i32* %48, i32 %53, i32 %58, i64 %59)
  br label %63

61:                                               ; preds = %3
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %41, %31, %26
  ret void
}

declare dso_local i32 @__sg_page_iter_start(i32*, i32, i32, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
