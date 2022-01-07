; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_reg_mr = type { i32, i32, i32, i32, i32 }
%struct.ib_uverbs_reg_mr_resp = type { i32, i32, i32 }
%struct.ib_uobject = type { i32, i32, i32, %struct.ib_uobject*, %struct.TYPE_8__, %struct.ib_uobject*, i32*, i32*, i32, %struct.ib_pd*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.ib_pd = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ib_uobject* (%struct.ib_pd*, i32, i32, i32, i32, i32*)* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_mr = type { i32, i32, i32, %struct.ib_mr*, %struct.TYPE_8__, %struct.ib_mr*, i32*, i32*, i32, %struct.ib_pd*, %struct.TYPE_7__* }
%struct.ib_device = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_MR = common dso_local global i32 0, align 4
@UVERBS_OBJECT_PD = common dso_local global i32 0, align 4
@IB_ACCESS_ON_DEMAND = common dso_local global i32 0, align 4
@IB_DEVICE_ON_DEMAND_PAGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ODP support not available\0A\00", align 1
@IB_MR_TYPE_USER = common dso_local global i32 0, align 4
@RDMA_RESTRACK_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_reg_mr(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_reg_mr, align 4
  %5 = alloca %struct.ib_uverbs_reg_mr_resp, align 4
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.ib_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %12 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %11, %struct.ib_uverbs_reg_mr* %4, i32 20)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %2, align 4
  br label %183

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %183

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ib_check_mr_access(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %183

40:                                               ; preds = %32
  %41 = load i32, i32* @UVERBS_OBJECT_MR, align 4
  %42 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %43 = call %struct.ib_uobject* @uobj_alloc(i32 %41, %struct.uverbs_attr_bundle* %42, %struct.ib_device** %10)
  store %struct.ib_uobject* %43, %struct.ib_uobject** %6, align 8
  %44 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %45 = call i64 @IS_ERR(%struct.ib_uobject* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %49 = call i32 @PTR_ERR(%struct.ib_uobject* %48)
  store i32 %49, i32* %2, align 4
  br label %183

50:                                               ; preds = %40
  %51 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %52 = load i32, i32* @UVERBS_OBJECT_PD, align 4
  %53 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %56 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %51, i32 %52, i32 %54, %struct.uverbs_attr_bundle* %55)
  store %struct.ib_pd* %56, %struct.ib_pd** %7, align 8
  %57 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %58 = icmp ne %struct.ib_pd* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %178

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IB_ACCESS_ON_DEMAND, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %70 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IB_DEVICE_ON_DEMAND_PAGING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %175

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %85 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.ib_uobject* (%struct.ib_pd*, i32, i32, i32, i32, i32*)*, %struct.ib_uobject* (%struct.ib_pd*, i32, i32, i32, i32, i32*)** %88, align 8
  %90 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %91 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ib_uverbs_reg_mr, %struct.ib_uverbs_reg_mr* %4, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %100 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %99, i32 0, i32 0
  %101 = call %struct.ib_uobject* %89(%struct.ib_pd* %90, i32 %92, i32 %94, i32 %96, i32 %98, i32* %100)
  %102 = bitcast %struct.ib_uobject* %101 to %struct.ib_mr*
  store %struct.ib_mr* %102, %struct.ib_mr** %8, align 8
  %103 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %104 = bitcast %struct.ib_mr* %103 to %struct.ib_uobject*
  %105 = call i64 @IS_ERR(%struct.ib_uobject* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %83
  %108 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %109 = bitcast %struct.ib_mr* %108 to %struct.ib_uobject*
  %110 = call i32 @PTR_ERR(%struct.ib_uobject* %109)
  store i32 %110, i32* %9, align 4
  br label %175

111:                                              ; preds = %83
  %112 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %113 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %116 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %115, i32 0, i32 10
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %116, align 8
  %117 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %118 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %119 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %118, i32 0, i32 9
  store %struct.ib_pd* %117, %struct.ib_pd** %119, align 8
  %120 = load i32, i32* @IB_MR_TYPE_USER, align 4
  %121 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %122 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %124 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %123, i32 0, i32 7
  store i32* null, i32** %124, align 8
  %125 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %126 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %125, i32 0, i32 6
  store i32* null, i32** %126, align 8
  %127 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %128 = bitcast %struct.ib_uobject* %127 to %struct.ib_mr*
  %129 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %130 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %129, i32 0, i32 5
  store %struct.ib_mr* %128, %struct.ib_mr** %130, align 8
  %131 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %132 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %131, i32 0, i32 0
  %133 = call i32 @atomic_inc(i32* %132)
  %134 = load i32, i32* @RDMA_RESTRACK_MR, align 4
  %135 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %136 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %139 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %138, i32 0, i32 4
  %140 = call i32 @rdma_restrack_uadd(%struct.TYPE_8__* %139)
  %141 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %142 = bitcast %struct.ib_mr* %141 to %struct.ib_uobject*
  %143 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %144 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %143, i32 0, i32 3
  store %struct.ib_uobject* %142, %struct.ib_uobject** %144, align 8
  %145 = call i32 @memset(%struct.ib_uverbs_reg_mr_resp* %5, i32 0, i32 12)
  %146 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %147 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.ib_uverbs_reg_mr_resp, %struct.ib_uverbs_reg_mr_resp* %5, i32 0, i32 2
  store i32 %148, i32* %149, align 4
  %150 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %151 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.ib_uverbs_reg_mr_resp, %struct.ib_uverbs_reg_mr_resp* %5, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %155 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.ib_uverbs_reg_mr_resp, %struct.ib_uverbs_reg_mr_resp* %5, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %159 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %158, %struct.ib_uverbs_reg_mr_resp* %5, i32 12)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %111
  br label %169

163:                                              ; preds = %111
  %164 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %165 = call i32 @uobj_put_obj_read(%struct.ib_pd* %164)
  %166 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %167 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %168 = call i32 @uobj_alloc_commit(%struct.ib_uobject* %166, %struct.uverbs_attr_bundle* %167)
  store i32 %168, i32* %2, align 4
  br label %183

169:                                              ; preds = %162
  %170 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %171 = bitcast %struct.ib_mr* %170 to %struct.ib_uobject*
  %172 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %173 = call i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle* %172)
  %174 = call i32 @ib_dereg_mr_user(%struct.ib_uobject* %171, i32 %173)
  br label %175

175:                                              ; preds = %169, %107, %78
  %176 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %177 = call i32 @uobj_put_obj_read(%struct.ib_pd* %176)
  br label %178

178:                                              ; preds = %175, %59
  %179 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %180 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %181 = call i32 @uobj_alloc_abort(%struct.ib_uobject* %179, %struct.uverbs_attr_bundle* %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %178, %163, %47, %38, %29, %15
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_reg_mr*, i32) #1

declare dso_local i32 @ib_check_mr_access(i32) #1

declare dso_local %struct.ib_uobject* @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #1

declare dso_local %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rdma_restrack_uadd(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_reg_mr_resp*, i32, i32) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_reg_mr_resp*, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_pd*) #1

declare dso_local i32 @uobj_alloc_commit(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @ib_dereg_mr_user(%struct.ib_uobject*, i32) #1

declare dso_local i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle*) #1

declare dso_local i32 @uobj_alloc_abort(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
