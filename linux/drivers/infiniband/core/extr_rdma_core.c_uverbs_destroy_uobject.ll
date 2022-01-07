; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_destroy_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_uverbs_destroy_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, %struct.TYPE_4__*, i32, i32*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)*, i32 (%struct.ib_uobject*)*, i32 (%struct.ib_uobject*)* }
%struct.uverbs_attr_bundle = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i32 }

@UVERBS_LOOKUP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ib_uverbs: failed to remove uobject id %d, driver err=%d\00", align 1
@RDMA_REMOVE_ABORT = common dso_local global i32 0, align 4
@RDMA_REMOVE_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)* @uverbs_destroy_uobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_destroy_uobject(%struct.ib_uobject* %0, i32 %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_uobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.ib_uverbs_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_uobject* %0, %struct.ib_uobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %12 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %11, i32 0, i32 0
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %12, align 8
  store %struct.ib_uverbs_file* %13, %struct.ib_uverbs_file** %8, align 8
  %14 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %15 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %18 = load i32, i32* @UVERBS_LOOKUP_WRITE, align 4
  %19 = call i32 @assert_uverbs_usecnt(%struct.ib_uobject* %17, i32 %18)
  %20 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %21 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %26 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)*, i32 (%struct.ib_uobject*, i32, %struct.uverbs_attr_bundle*)** %30, align 8
  %32 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %35 = call i32 %31(%struct.ib_uobject* %32, i32 %33, %struct.uverbs_attr_bundle* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %42 = call i64 @ib_is_destroy_retryable(i32 %39, i32 %40, %struct.ib_uobject* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %130

46:                                               ; preds = %38
  %47 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %48 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %24
  %53 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %54 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %3
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @RDMA_REMOVE_ABORT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %61 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %60, i32 0, i32 0
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %68 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %75 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32 (%struct.ib_uobject*)*, i32 (%struct.ib_uobject*)** %79, align 8
  %81 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %82 = call i32 %80(%struct.ib_uobject* %81)
  br label %83

83:                                               ; preds = %59, %55
  %84 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %85 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @RDMA_REMOVE_DESTROY, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %91 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %90, i32 0, i32 2
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  br label %103

93:                                               ; preds = %83
  %94 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %95 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32 (%struct.ib_uobject*)*, i32 (%struct.ib_uobject*)** %99, align 8
  %101 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %102 = call i32 %100(%struct.ib_uobject* %101)
  br label %103

103:                                              ; preds = %93, %89
  %104 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %105 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %104, i32 0, i32 0
  %106 = call i32 @list_empty(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %103
  %109 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %110 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %109, i32 0, i32 0
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %114 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %113, i32 0, i32 0
  %115 = call i32 @list_del_init(i32* %114)
  %116 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %117 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %116, i32 0, i32 0
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %121 = call i32 @uverbs_uobject_put(%struct.ib_uobject* %120)
  br label %122

122:                                              ; preds = %108, %103
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @RDMA_REMOVE_ABORT, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.ib_uobject*, %struct.ib_uobject** %5, align 8
  %128 = call i32 @uverbs_uobject_put(%struct.ib_uobject* %127)
  br label %129

129:                                              ; preds = %126, %122
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %44
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @assert_uverbs_usecnt(%struct.ib_uobject*, i32) #1

declare dso_local i64 @ib_is_destroy_retryable(i32, i32, %struct.ib_uobject*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uverbs_uobject_put(%struct.ib_uobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
