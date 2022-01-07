; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_pages_to_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_pages_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @drm_prime_pages_to_sg(%struct.page** %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sg_table* null, %struct.sg_table** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sg_table* @kmalloc(i32 4, i32 %8)
  store %struct.sg_table* %9, %struct.sg_table** %6, align 8
  %10 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %11 = icmp ne %struct.sg_table* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %17 = load %struct.page**, %struct.page*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %16, %struct.page** %17, i32 %18, i32 0, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %29

27:                                               ; preds = %15
  %28 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %28, %struct.sg_table** %3, align 8
  br label %34

29:                                               ; preds = %26, %12
  %30 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %31 = call i32 @kfree(%struct.sg_table* %30)
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.sg_table* @ERR_PTR(i32 %32)
  store %struct.sg_table* %33, %struct.sg_table** %3, align 8
  br label %34

34:                                               ; preds = %29, %27
  %35 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %35
}

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
