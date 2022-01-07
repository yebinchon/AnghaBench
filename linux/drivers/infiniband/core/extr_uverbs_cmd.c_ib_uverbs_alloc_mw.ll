; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_alloc_mw = type { i64, i32 }
%struct.ib_uverbs_alloc_mw_resp = type { i32, i32 }
%struct.ib_uobject = type { i32, i32, %struct.ib_uobject*, %struct.ib_uobject*, %struct.ib_pd*, %struct.TYPE_4__* }
%struct.ib_pd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_uobject* (%struct.ib_pd*, i64, i32*)* }
%struct.ib_mw = type { i32, i32, %struct.ib_mw*, %struct.ib_mw*, %struct.ib_pd*, %struct.TYPE_4__* }
%struct.ib_device = type { i32 }

@UVERBS_OBJECT_MW = common dso_local global i32 0, align 4
@UVERBS_OBJECT_PD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_MW_TYPE_1 = common dso_local global i64 0, align 8
@IB_MW_TYPE_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_alloc_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_alloc_mw(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_alloc_mw, align 8
  %5 = alloca %struct.ib_uverbs_alloc_mw_resp, align 4
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.ib_mw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %12 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %11, %struct.ib_uverbs_alloc_mw* %4, i32 16)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %126

17:                                               ; preds = %1
  %18 = load i32, i32* @UVERBS_OBJECT_MW, align 4
  %19 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %20 = call %struct.ib_uobject* @uobj_alloc(i32 %18, %struct.uverbs_attr_bundle* %19, %struct.ib_device** %10)
  store %struct.ib_uobject* %20, %struct.ib_uobject** %6, align 8
  %21 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %22 = call i64 @IS_ERR(%struct.ib_uobject* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %26 = call i32 @PTR_ERR(%struct.ib_uobject* %25)
  store i32 %26, i32* %2, align 4
  br label %126

27:                                               ; preds = %17
  %28 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %29 = load i32, i32* @UVERBS_OBJECT_PD, align 4
  %30 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, %struct.ib_uverbs_alloc_mw* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %33 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %28, i32 %29, i32 %31, %struct.uverbs_attr_bundle* %32)
  store %struct.ib_pd* %33, %struct.ib_pd** %7, align 8
  %34 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %35 = icmp ne %struct.ib_pd* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %121

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, %struct.ib_uverbs_alloc_mw* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_MW_TYPE_1, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, %struct.ib_uverbs_alloc_mw* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IB_MW_TYPE_2, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %118

52:                                               ; preds = %44, %39
  %53 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %54 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.ib_uobject* (%struct.ib_pd*, i64, i32*)*, %struct.ib_uobject* (%struct.ib_pd*, i64, i32*)** %57, align 8
  %59 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %60 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, %struct.ib_uverbs_alloc_mw* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %63 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %62, i32 0, i32 0
  %64 = call %struct.ib_uobject* %58(%struct.ib_pd* %59, i64 %61, i32* %63)
  %65 = bitcast %struct.ib_uobject* %64 to %struct.ib_mw*
  store %struct.ib_mw* %65, %struct.ib_mw** %8, align 8
  %66 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %67 = bitcast %struct.ib_mw* %66 to %struct.ib_uobject*
  %68 = call i64 @IS_ERR(%struct.ib_uobject* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %72 = bitcast %struct.ib_mw* %71 to %struct.ib_uobject*
  %73 = call i32 @PTR_ERR(%struct.ib_uobject* %72)
  store i32 %73, i32* %9, align 4
  br label %118

74:                                               ; preds = %52
  %75 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %76 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %79 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %78, i32 0, i32 5
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %81 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %82 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %81, i32 0, i32 4
  store %struct.ib_pd* %80, %struct.ib_pd** %82, align 8
  %83 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %84 = bitcast %struct.ib_uobject* %83 to %struct.ib_mw*
  %85 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %86 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %85, i32 0, i32 3
  store %struct.ib_mw* %84, %struct.ib_mw** %86, align 8
  %87 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %88 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %87, i32 0, i32 0
  %89 = call i32 @atomic_inc(i32* %88)
  %90 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %91 = bitcast %struct.ib_mw* %90 to %struct.ib_uobject*
  %92 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %93 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %92, i32 0, i32 2
  store %struct.ib_uobject* %91, %struct.ib_uobject** %93, align 8
  %94 = call i32 @memset(%struct.ib_uverbs_alloc_mw_resp* %5, i32 0, i32 8)
  %95 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %96 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.ib_uverbs_alloc_mw_resp, %struct.ib_uverbs_alloc_mw_resp* %5, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %100 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.ib_uverbs_alloc_mw_resp, %struct.ib_uverbs_alloc_mw_resp* %5, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %104 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %103, %struct.ib_uverbs_alloc_mw_resp* %5, i32 8)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %74
  br label %114

108:                                              ; preds = %74
  %109 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %110 = call i32 @uobj_put_obj_read(%struct.ib_pd* %109)
  %111 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %112 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %113 = call i32 @uobj_alloc_commit(%struct.ib_uobject* %111, %struct.uverbs_attr_bundle* %112)
  store i32 %113, i32* %2, align 4
  br label %126

114:                                              ; preds = %107
  %115 = load %struct.ib_mw*, %struct.ib_mw** %8, align 8
  %116 = bitcast %struct.ib_mw* %115 to %struct.ib_uobject*
  %117 = call i32 @uverbs_dealloc_mw(%struct.ib_uobject* %116)
  br label %118

118:                                              ; preds = %114, %70, %49
  %119 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %120 = call i32 @uobj_put_obj_read(%struct.ib_pd* %119)
  br label %121

121:                                              ; preds = %118, %36
  %122 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %123 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %124 = call i32 @uobj_alloc_abort(%struct.ib_uobject* %122, %struct.uverbs_attr_bundle* %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %108, %24, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_alloc_mw*, i32) #1

declare dso_local %struct.ib_uobject* @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #1

declare dso_local %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_alloc_mw_resp*, i32, i32) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_alloc_mw_resp*, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_pd*) #1

declare dso_local i32 @uobj_alloc_commit(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @uverbs_dealloc_mw(%struct.ib_uobject*) #1

declare dso_local i32 @uobj_alloc_abort(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
