; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_acc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_acc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64 }

@vmw_bo_acc_size.struct_size = internal global i64 0, align 8
@vmw_bo_acc_size.user_struct_size = internal global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@vmw_tt_size = common dso_local global i64 0, align 8
@TTM_OBJ_EXTRA_SIZE = common dso_local global i64 0, align 8
@vmw_dma_alloc_coherent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmw_private*, i64, i32)* @vmw_bo_acc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmw_bo_acc_size(%struct.vmw_private* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @PAGE_ALIGN(i64 %10)
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %14, 8
  %16 = call i64 @ttm_round_pot(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @vmw_bo_acc_size.struct_size, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i64, i64* @vmw_tt_size, align 8
  %24 = call i64 @ttm_round_pot(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @ttm_round_pot(i64 4)
  %27 = add i64 %25, %26
  store i64 %27, i64* @vmw_bo_acc_size.struct_size, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @ttm_round_pot(i64 4)
  %30 = add i64 %28, %29
  %31 = load i64, i64* @TTM_OBJ_EXTRA_SIZE, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* @vmw_bo_acc_size.user_struct_size, align 8
  br label %33

33:                                               ; preds = %22, %3
  %34 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %35 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @vmw_dma_alloc_coherent, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %40, 4
  %42 = call i64 @ttm_round_pot(i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64, i64* @vmw_bo_acc_size.user_struct_size, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @vmw_bo_acc_size.struct_size, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %53, %54
  ret i64 %55
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @ttm_round_pot(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
