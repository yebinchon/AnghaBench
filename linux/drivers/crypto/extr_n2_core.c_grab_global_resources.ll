; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_grab_global_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_grab_global_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spu_lock = common dso_local global i32 0, align 4
@global_ref = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cpu_to_cwq = common dso_local global i32* null, align 8
@cpu_to_mau = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @grab_global_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_global_resources() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @mutex_lock(i32* @spu_lock)
  %3 = load i32, i32* @global_ref, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @global_ref, align 4
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %35

7:                                                ; preds = %0
  %8 = call i32 (...) @n2_spu_hvapi_register()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %35

12:                                               ; preds = %7
  %13 = call i32 (...) @queue_cache_init()
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %49

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @NR_CPUS, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** @cpu_to_cwq, align 8
  %24 = load i32*, i32** @cpu_to_cwq, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %47

27:                                               ; preds = %17
  %28 = load i32, i32* @NR_CPUS, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 8, i32 %29)
  store i8* %30, i8** @cpu_to_mau, align 8
  %31 = load i8*, i8** @cpu_to_mau, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %44

34:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %49, %34, %11, %6
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @global_ref, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @global_ref, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = call i32 @mutex_unlock(i32* @spu_lock)
  %43 = load i32, i32* %1, align 4
  ret i32 %43

44:                                               ; preds = %33
  %45 = load i32*, i32** @cpu_to_cwq, align 8
  %46 = call i32 @kfree(i32* %45)
  store i32* null, i32** @cpu_to_cwq, align 8
  br label %47

47:                                               ; preds = %44, %26
  %48 = call i32 (...) @queue_cache_destroy()
  br label %49

49:                                               ; preds = %47, %16
  %50 = call i32 (...) @n2_spu_hvapi_unregister()
  br label %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @n2_spu_hvapi_register(...) #1

declare dso_local i32 @queue_cache_init(...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @queue_cache_destroy(...) #1

declare dso_local i32 @n2_spu_hvapi_unregister(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
