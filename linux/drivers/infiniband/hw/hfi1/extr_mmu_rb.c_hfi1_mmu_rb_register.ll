; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c_hfi1_mmu_rb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mmu_rb_ops = type { i32 }
%struct.workqueue_struct = type { i32 }
%struct.mmu_rb_handler = type { %struct.mm_struct*, %struct.TYPE_2__, %struct.workqueue_struct*, i32, i32, i32, i32, i8*, %struct.mmu_rb_ops*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@mn_opts = common dso_local global i32 0, align 4
@handle_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_mmu_rb_register(i8* %0, %struct.mm_struct* %1, %struct.mmu_rb_ops* %2, %struct.workqueue_struct* %3, %struct.mmu_rb_handler** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.mmu_rb_ops*, align 8
  %10 = alloca %struct.workqueue_struct*, align 8
  %11 = alloca %struct.mmu_rb_handler**, align 8
  %12 = alloca %struct.mmu_rb_handler*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %8, align 8
  store %struct.mmu_rb_ops* %2, %struct.mmu_rb_ops** %9, align 8
  store %struct.workqueue_struct* %3, %struct.workqueue_struct** %10, align 8
  store %struct.mmu_rb_handler** %4, %struct.mmu_rb_handler*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mmu_rb_handler* @kmalloc(i32 72, i32 %14)
  store %struct.mmu_rb_handler* %15, %struct.mmu_rb_handler** %12, align 8
  %16 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %17 = icmp ne %struct.mmu_rb_handler* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %72

21:                                               ; preds = %5
  %22 = load i32, i32* @RB_ROOT_CACHED, align 4
  %23 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %24 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mmu_rb_ops*, %struct.mmu_rb_ops** %9, align 8
  %26 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %27 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %26, i32 0, i32 8
  store %struct.mmu_rb_ops* %25, %struct.mmu_rb_ops** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %30 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %32 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @INIT_HLIST_NODE(i32* %33)
  %35 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %36 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %35, i32 0, i32 6
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %39 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* @mn_opts, i32** %40, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %42 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %43 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %42, i32 0, i32 0
  store %struct.mm_struct* %41, %struct.mm_struct** %43, align 8
  %44 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %45 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %44, i32 0, i32 5
  %46 = load i32, i32* @handle_remove, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %49 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %48, i32 0, i32 4
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %52 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %51, i32 0, i32 3
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.workqueue_struct*, %struct.workqueue_struct** %10, align 8
  %55 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %56 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %55, i32 0, i32 2
  store %struct.workqueue_struct* %54, %struct.workqueue_struct** %56, align 8
  %57 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %58 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %57, i32 0, i32 1
  %59 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %60 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %59, i32 0, i32 0
  %61 = load %struct.mm_struct*, %struct.mm_struct** %60, align 8
  %62 = call i32 @mmu_notifier_register(%struct.TYPE_2__* %58, %struct.mm_struct* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %21
  %66 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %67 = call i32 @kfree(%struct.mmu_rb_handler* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %21
  %70 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %12, align 8
  %71 = load %struct.mmu_rb_handler**, %struct.mmu_rb_handler*** %11, align 8
  store %struct.mmu_rb_handler* %70, %struct.mmu_rb_handler** %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %65, %18
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.mmu_rb_handler* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mmu_notifier_register(%struct.TYPE_2__*, %struct.mm_struct*) #1

declare dso_local i32 @kfree(%struct.mmu_rb_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
