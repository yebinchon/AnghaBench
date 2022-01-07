; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_rdma_lookup_get_uobject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rdma_core.c_rdma_lookup_get_uobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { %struct.TYPE_4__*, %struct.ib_uobject*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.uverbs_api_object*, i32)*, %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*, i32, i32)* }
%struct.uverbs_api_object = type { %struct.TYPE_4__*, %struct.uverbs_api_object*, i32 }
%struct.ib_uverbs_file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.uverbs_attr_bundle = type { i32 }

@ENOMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVERBS_LOOKUP_DESTROY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_uobject* @rdma_lookup_get_uobject(%struct.uverbs_api_object* %0, %struct.ib_uverbs_file* %1, i32 %2, i32 %3, %struct.uverbs_attr_bundle* %4) #0 {
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.uverbs_api_object*, align 8
  %8 = alloca %struct.ib_uverbs_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uverbs_attr_bundle*, align 8
  %12 = alloca %struct.ib_uobject*, align 8
  %13 = alloca i32, align 4
  store %struct.uverbs_api_object* %0, %struct.uverbs_api_object** %7, align 8
  store %struct.ib_uverbs_file* %1, %struct.ib_uverbs_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.uverbs_attr_bundle* %4, %struct.uverbs_attr_bundle** %11, align 8
  %14 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %7, align 8
  %15 = load i32, i32* @ENOMSG, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.uverbs_api_object* @ERR_PTR(i32 %16)
  %18 = icmp eq %struct.uverbs_api_object* %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.uverbs_api_object* @lookup_get_idr_uobject(i32* null, %struct.ib_uverbs_file* %20, i32 %21, i32 %22)
  %24 = bitcast %struct.uverbs_api_object* %23 to %struct.ib_uobject*
  store %struct.ib_uobject* %24, %struct.ib_uobject** %12, align 8
  %25 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %26 = bitcast %struct.ib_uobject* %25 to %struct.uverbs_api_object*
  %27 = call i64 @IS_ERR(%struct.uverbs_api_object* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  store %struct.ib_uobject* %30, %struct.ib_uobject** %6, align 8
  br label %126

31:                                               ; preds = %19
  br label %70

32:                                               ; preds = %5
  %33 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %7, align 8
  %34 = call i64 @IS_ERR(%struct.uverbs_api_object* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.uverbs_api_object* @ERR_PTR(i32 %38)
  %40 = bitcast %struct.uverbs_api_object* %39 to %struct.ib_uobject*
  store %struct.ib_uobject* %40, %struct.ib_uobject** %6, align 8
  br label %126

41:                                               ; preds = %32
  %42 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %7, align 8
  %43 = getelementptr inbounds %struct.uverbs_api_object, %struct.uverbs_api_object* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*, i32, i32)*, %struct.uverbs_api_object* (%struct.uverbs_api_object*, %struct.ib_uverbs_file*, i32, i32)** %45, align 8
  %47 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %7, align 8
  %48 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.uverbs_api_object* %46(%struct.uverbs_api_object* %47, %struct.ib_uverbs_file* %48, i32 %49, i32 %50)
  %52 = bitcast %struct.uverbs_api_object* %51 to %struct.ib_uobject*
  store %struct.ib_uobject* %52, %struct.ib_uobject** %12, align 8
  %53 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %54 = bitcast %struct.ib_uobject* %53 to %struct.uverbs_api_object*
  %55 = call i64 @IS_ERR(%struct.uverbs_api_object* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  store %struct.ib_uobject* %58, %struct.ib_uobject** %6, align 8
  br label %126

59:                                               ; preds = %41
  %60 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %61 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %60, i32 0, i32 1
  %62 = load %struct.ib_uobject*, %struct.ib_uobject** %61, align 8
  %63 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %7, align 8
  %64 = bitcast %struct.uverbs_api_object* %63 to %struct.ib_uobject*
  %65 = icmp ne %struct.ib_uobject* %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %108

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @UVERBS_LOOKUP_DESTROY, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %76 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @srcu_dereference(i32 %79, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %108

89:                                               ; preds = %74, %70
  %90 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %91 = bitcast %struct.ib_uobject* %90 to %struct.uverbs_api_object*
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @uverbs_try_lock_object(%struct.uverbs_api_object* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %108

97:                                               ; preds = %89
  %98 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %11, align 8
  %99 = icmp ne %struct.uverbs_attr_bundle* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %102 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %11, align 8
  %105 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %97
  %107 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  store %struct.ib_uobject* %107, %struct.ib_uobject** %6, align 8
  br label %126

108:                                              ; preds = %96, %86, %66
  %109 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %110 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %109, i32 0, i32 1
  %111 = load %struct.ib_uobject*, %struct.ib_uobject** %110, align 8
  %112 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (%struct.uverbs_api_object*, i32)*, i32 (%struct.uverbs_api_object*, i32)** %114, align 8
  %116 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %117 = bitcast %struct.ib_uobject* %116 to %struct.uverbs_api_object*
  %118 = load i32, i32* %10, align 4
  %119 = call i32 %115(%struct.uverbs_api_object* %117, i32 %118)
  %120 = load %struct.ib_uobject*, %struct.ib_uobject** %12, align 8
  %121 = bitcast %struct.ib_uobject* %120 to %struct.uverbs_api_object*
  %122 = call i32 @uverbs_uobject_put(%struct.uverbs_api_object* %121)
  %123 = load i32, i32* %13, align 4
  %124 = call %struct.uverbs_api_object* @ERR_PTR(i32 %123)
  %125 = bitcast %struct.uverbs_api_object* %124 to %struct.ib_uobject*
  store %struct.ib_uobject* %125, %struct.ib_uobject** %6, align 8
  br label %126

126:                                              ; preds = %108, %106, %57, %36, %29
  %127 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  ret %struct.ib_uobject* %127
}

declare dso_local %struct.uverbs_api_object* @ERR_PTR(i32) #1

declare dso_local %struct.uverbs_api_object* @lookup_get_idr_uobject(i32*, %struct.ib_uverbs_file*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_api_object*) #1

declare dso_local i32 @srcu_dereference(i32, i32*) #1

declare dso_local i32 @uverbs_try_lock_object(%struct.uverbs_api_object*, i32) #1

declare dso_local i32 @uverbs_uobject_put(%struct.uverbs_api_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
