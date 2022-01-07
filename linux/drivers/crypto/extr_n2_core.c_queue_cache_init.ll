; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_queue_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_queue_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queue_cache = common dso_local global i32** null, align 8
@HV_NCS_QTYPE_MAU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mau_queue\00", align 1
@MAU_NUM_ENTRIES = common dso_local global i32 0, align 4
@MAU_ENTRY_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HV_NCS_QTYPE_CWQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cwq_queue\00", align 1
@CWQ_NUM_ENTRIES = common dso_local global i32 0, align 4
@CWQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @queue_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32**, i32*** @queue_cache, align 8
  %3 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %4 = sub nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32*, i32** %2, i64 %5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @MAU_NUM_ENTRIES, align 4
  %11 = load i32, i32* @MAU_ENTRY_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i32, i32* @MAU_ENTRY_SIZE, align 4
  %14 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 0, i32* null)
  %15 = load i32**, i32*** @queue_cache, align 8
  %16 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %15, i64 %18
  store i32* %14, i32** %19, align 8
  br label %20

20:                                               ; preds = %9, %0
  %21 = load i32**, i32*** @queue_cache, align 8
  %22 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %21, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %74

31:                                               ; preds = %20
  %32 = load i32**, i32*** @queue_cache, align 8
  %33 = load i32, i32* @HV_NCS_QTYPE_CWQ, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @CWQ_NUM_ENTRIES, align 4
  %41 = load i32, i32* @CWQ_ENTRY_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* @CWQ_ENTRY_SIZE, align 4
  %44 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 0, i32* null)
  %45 = load i32**, i32*** @queue_cache, align 8
  %46 = load i32, i32* @HV_NCS_QTYPE_CWQ, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  store i32* %44, i32** %49, align 8
  br label %50

50:                                               ; preds = %39, %31
  %51 = load i32**, i32*** @queue_cache, align 8
  %52 = load i32, i32* @HV_NCS_QTYPE_CWQ, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %50
  %59 = load i32**, i32*** @queue_cache, align 8
  %60 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kmem_cache_destroy(i32* %64)
  %66 = load i32**, i32*** @queue_cache, align 8
  %67 = load i32, i32* @HV_NCS_QTYPE_MAU, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %1, align 4
  br label %74

73:                                               ; preds = %50
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %58, %28
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
