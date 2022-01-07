; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32, i32, %struct.qib_user_sdma_rb_node*, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.qib_user_sdma_rb_node = type { i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"qib-user-sdma-pkts-%u-%02u.%02u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"qib-user-sdma-headers-%u-%02u.%02u\00", align 1
@QIB_USER_SDMA_EXP_HEADER_LENGTH = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@qib_user_sdma_rb_root = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_user_sdma_queue* @qib_user_sdma_queue_create(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_user_sdma_queue*, align 8
  %10 = alloca %struct.qib_user_sdma_rb_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 80, i32 %11)
  %13 = bitcast i8* %12 to %struct.qib_user_sdma_queue*
  store %struct.qib_user_sdma_queue* %13, %struct.qib_user_sdma_queue** %9, align 8
  %14 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %15 = icmp ne %struct.qib_user_sdma_queue* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %127

17:                                               ; preds = %4
  %18 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %19 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %18, i32 0, i32 13
  store i64 0, i64* %19, align 8
  %20 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %21 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  %22 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %23 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %22, i32 0, i32 11
  store i64 0, i64* %23, align 8
  %24 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %25 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %27 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %29 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %28, i32 0, i32 2
  store %struct.qib_user_sdma_rb_node* null, %struct.qib_user_sdma_rb_node** %29, align 8
  %30 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %31 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %30, i32 0, i32 8
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %34 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %33, i32 0, i32 7
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %37 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %36, i32 0, i32 6
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %40 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %47 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kmem_cache_create(i32 %48, i32 4, i32 0, i32 0, i32* null)
  %50 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %51 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %53 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %17
  br label %124

57:                                               ; preds = %17
  %58 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %59 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %66 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i32, i32* @QIB_USER_SDMA_EXP_HEADER_LENGTH, align 4
  %70 = call i32 @dma_pool_create(i32 %67, %struct.device* %68, i32 %69, i32 4, i32 0)
  %71 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %72 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %74 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %57
  br label %119

78:                                               ; preds = %57
  %79 = load i32, i32* @RB_ROOT, align 4
  %80 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %81 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.qib_user_sdma_rb_node* @qib_user_sdma_rb_search(i32* @qib_user_sdma_rb_root, i32 %84)
  store %struct.qib_user_sdma_rb_node* %85, %struct.qib_user_sdma_rb_node** %10, align 8
  %86 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %87 = icmp ne %struct.qib_user_sdma_rb_node* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %90 = getelementptr inbounds %struct.qib_user_sdma_rb_node, %struct.qib_user_sdma_rb_node* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %110

93:                                               ; preds = %78
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kmalloc(i32 8, i32 %94)
  %96 = bitcast i8* %95 to %struct.qib_user_sdma_rb_node*
  store %struct.qib_user_sdma_rb_node* %96, %struct.qib_user_sdma_rb_node** %10, align 8
  %97 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %98 = icmp ne %struct.qib_user_sdma_rb_node* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %114

100:                                              ; preds = %93
  %101 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %102 = getelementptr inbounds %struct.qib_user_sdma_rb_node, %struct.qib_user_sdma_rb_node* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %107 = getelementptr inbounds %struct.qib_user_sdma_rb_node, %struct.qib_user_sdma_rb_node* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %109 = call i32 @qib_user_sdma_rb_insert(i32* @qib_user_sdma_rb_root, %struct.qib_user_sdma_rb_node* %108)
  br label %110

110:                                              ; preds = %100, %88
  %111 = load %struct.qib_user_sdma_rb_node*, %struct.qib_user_sdma_rb_node** %10, align 8
  %112 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %113 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %112, i32 0, i32 2
  store %struct.qib_user_sdma_rb_node* %111, %struct.qib_user_sdma_rb_node** %113, align 8
  br label %127

114:                                              ; preds = %99
  %115 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %116 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dma_pool_destroy(i32 %117)
  br label %119

119:                                              ; preds = %114, %77
  %120 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %121 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @kmem_cache_destroy(i32 %122)
  br label %124

124:                                              ; preds = %119, %56
  %125 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %126 = call i32 @kfree(%struct.qib_user_sdma_queue* %125)
  store %struct.qib_user_sdma_queue* null, %struct.qib_user_sdma_queue** %9, align 8
  br label %127

127:                                              ; preds = %124, %110, %16
  %128 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  ret %struct.qib_user_sdma_queue* %128
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dma_pool_create(i32, %struct.device*, i32, i32, i32) #1

declare dso_local %struct.qib_user_sdma_rb_node* @qib_user_sdma_rb_search(i32*, i32) #1

declare dso_local i32 @qib_user_sdma_rb_insert(i32*, %struct.qib_user_sdma_rb_node*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.qib_user_sdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
