; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_create_global_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_create_global_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"pblk_blk_ws\00", align 1
@pblk_caches = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pblk_rec\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pblk_g_rq\00", align 1
@pblk_g_rq_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pblk_w_rq\00", align 1
@pblk_w_rq_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pblk_create_global_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_create_global_caches() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 0), align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 0), align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %37

8:                                                ; preds = %0
  %9 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 1), align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 1), align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %32

13:                                               ; preds = %8
  %14 = load i32, i32* @pblk_g_rq_size, align 4
  %15 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 0, i32 0, i32* null)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 2), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 2), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %29

19:                                               ; preds = %13
  %20 = load i32, i32* @pblk_w_rq_size, align 4
  %21 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 0, i32 0, i32* null)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 3), align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 3), align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %37

26:                                               ; preds = %24
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 2), align 8
  %28 = call i32 @kmem_cache_destroy(i8* %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 1), align 8
  %31 = call i32 @kmem_cache_destroy(i8* %30)
  br label %32

32:                                               ; preds = %29, %12
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pblk_caches, i32 0, i32 0), align 8
  %34 = call i32 @kmem_cache_destroy(i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %25, %5
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
