; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_fs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_fs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dax_cache\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@SLAB_MEM_SPREAD = common dso_local global i32 0, align 4
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@init_once = common dso_local global i32 0, align 4
@dax_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dax_fs_type = common dso_local global i32 0, align 4
@dax_mnt = common dso_local global %struct.TYPE_5__* null, align 8
@dax_superblock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dax_fs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_fs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %4 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SLAB_MEM_SPREAD, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SLAB_ACCOUNT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @init_once, align 4
  %11 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %9, i32 %10)
  store i32 %11, i32* @dax_cache, align 4
  %12 = load i32, i32* @dax_cache, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %33

17:                                               ; preds = %0
  %18 = call %struct.TYPE_5__* @kern_mount(i32* @dax_fs_type)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** @dax_mnt, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dax_mnt, align 8
  %20 = call i64 @IS_ERR(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dax_mnt, align 8
  %24 = call i32 @PTR_ERR(%struct.TYPE_5__* %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dax_mnt, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @dax_superblock, align 4
  store i32 0, i32* %1, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @dax_cache, align 4
  %31 = call i32 @kmem_cache_destroy(i32 %30)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %25, %14
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @kern_mount(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
