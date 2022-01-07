; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvutil_transport = type { i32 (i8*, i32)*, void (...)*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@hvt_op_read = common dso_local global i32 0, align 4
@hvt_op_write = common dso_local global i32 0, align 4
@hvt_op_poll = common dso_local global i32 0, align 4
@hvt_op_open = common dso_local global i32 0, align 4
@hvt_op_release = common dso_local global i32 0, align 4
@hvt_list_lock = common dso_local global i32 0, align 4
@hvt_list = common dso_local global i32 0, align 4
@hvt_cn_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hvutil_transport* @hvutil_transport_init(i8* %0, i8* %1, i8* %2, i32 (i8*, i32)* %3, void ()* %4) #0 {
  %6 = alloca %struct.hvutil_transport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i32)*, align 8
  %11 = alloca void ()*, align 8
  %12 = alloca %struct.hvutil_transport*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i32)* %3, i32 (i8*, i32)** %10, align 8
  store void ()* %4, void ()** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hvutil_transport* @kzalloc(i32 104, i32 %13)
  store %struct.hvutil_transport* %14, %struct.hvutil_transport** %12, align 8
  %15 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %16 = icmp ne %struct.hvutil_transport* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.hvutil_transport* null, %struct.hvutil_transport** %6, align 8
  br label %122

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %22 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %27 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %30 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %31 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %35 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @THIS_MODULE, align 4
  %38 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %39 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @hvt_op_read, align 4
  %42 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %43 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @hvt_op_write, align 4
  %46 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %47 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @hvt_op_poll, align 4
  %50 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %51 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @hvt_op_open, align 4
  %54 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %55 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @hvt_op_release, align 4
  %58 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %59 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %62 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %61, i32 0, i32 8
  %63 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %64 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %65, align 8
  %66 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %67 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %66, i32 0, i32 7
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %70 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %69, i32 0, i32 6
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %73 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %72, i32 0, i32 5
  %74 = call i32 @init_completion(i32* %73)
  %75 = call i32 @spin_lock(i32* @hvt_list_lock)
  %76 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %77 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %76, i32 0, i32 2
  %78 = call i32 @list_add(i32* %77, i32* @hvt_list)
  %79 = call i32 @spin_unlock(i32* @hvt_list_lock)
  %80 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %81 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %82 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %81, i32 0, i32 0
  store i32 (i8*, i32)* %80, i32 (i8*, i32)** %82, align 8
  %83 = load void ()*, void ()** %11, align 8
  %84 = bitcast void ()* %83 to void (...)*
  %85 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %86 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %85, i32 0, i32 1
  store void (...)* %84, void (...)** %86, align 8
  %87 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %88 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %87, i32 0, i32 4
  %89 = call i64 @misc_register(%struct.TYPE_5__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %18
  br label %114

92:                                               ; preds = %18
  %93 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %94 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %100 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %106 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %105, i32 0, i32 3
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* @hvt_cn_callback, align 4
  %109 = call i64 @cn_add_callback(%struct.TYPE_6__* %106, i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %114

112:                                              ; preds = %104, %98, %92
  %113 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  store %struct.hvutil_transport* %113, %struct.hvutil_transport** %6, align 8
  br label %122

114:                                              ; preds = %111, %91
  %115 = call i32 @spin_lock(i32* @hvt_list_lock)
  %116 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %117 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %116, i32 0, i32 2
  %118 = call i32 @list_del(i32* %117)
  %119 = call i32 @spin_unlock(i32* @hvt_list_lock)
  %120 = load %struct.hvutil_transport*, %struct.hvutil_transport** %12, align 8
  %121 = call i32 @kfree(%struct.hvutil_transport* %120)
  store %struct.hvutil_transport* null, %struct.hvutil_transport** %6, align 8
  br label %122

122:                                              ; preds = %114, %112, %17
  %123 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  ret %struct.hvutil_transport* %123
}

declare dso_local %struct.hvutil_transport* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @misc_register(%struct.TYPE_5__*) #1

declare dso_local i64 @cn_add_callback(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hvutil_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
