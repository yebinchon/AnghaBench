; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_build_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_build_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_piter = type { i32 }
%struct.page = type { i32 }

@VMW_PPN_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmw_piter*, i64, %struct.vmw_piter*)* @vmw_mob_build_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmw_mob_build_pt(%struct.vmw_piter* %0, i64 %1, %struct.vmw_piter* %2) #0 {
  %4 = alloca %struct.vmw_piter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmw_piter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.vmw_piter* %0, %struct.vmw_piter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vmw_piter* %2, %struct.vmw_piter** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @VMW_PPN_SIZE, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = call i64 @DIV_ROUND_UP(i64 %17, i64 %18)
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %61, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.vmw_piter*, %struct.vmw_piter** %6, align 8
  %26 = call %struct.page* @vmw_piter_page(%struct.vmw_piter* %25)
  store %struct.page* %26, %struct.page** %13, align 8
  %27 = load %struct.page*, %struct.page** %13, align 8
  %28 = call i32* @kmap_atomic(%struct.page* %27)
  store i32* %28, i32** %10, align 8
  store i32* %28, i32** %11, align 8
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %53, %24
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* @VMW_PPN_SIZE, align 8
  %33 = udiv i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %37 = call i32 @vmw_piter_dma_addr(%struct.vmw_piter* %36)
  %38 = call i32 @vmw_mob_assign_ppn(i32** %10, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %5, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %56

46:                                               ; preds = %35
  %47 = load %struct.vmw_piter*, %struct.vmw_piter** %4, align 8
  %48 = call i32 @vmw_piter_next(%struct.vmw_piter* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %29

56:                                               ; preds = %45, %29
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @kunmap_atomic(i32* %57)
  %59 = load %struct.vmw_piter*, %struct.vmw_piter** %6, align 8
  %60 = call i32 @vmw_piter_next(%struct.vmw_piter* %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %20

64:                                               ; preds = %20
  %65 = load i64, i64* %8, align 8
  ret i64 %65
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.page* @vmw_piter_page(%struct.vmw_piter*) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @vmw_mob_assign_ppn(i32**, i32) #1

declare dso_local i32 @vmw_piter_dma_addr(%struct.vmw_piter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_piter_next(%struct.vmw_piter*) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
