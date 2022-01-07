; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_resize_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_resize_cq = type { i32, i32 }
%struct.ib_uverbs_resize_cq_resp = type { i32 }
%struct.ib_cq = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_cq*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_resize_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_resize_cq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_resize_cq, align 4
  %5 = alloca %struct.ib_uverbs_resize_cq_resp, align 4
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %8 = bitcast %struct.ib_uverbs_resize_cq_resp* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %12 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %11, %struct.ib_uverbs_resize_cq* %4, i32 8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %19 = load i32, i32* @UVERBS_OBJECT_CQ, align 4
  %20 = getelementptr inbounds %struct.ib_uverbs_resize_cq, %struct.ib_uverbs_resize_cq* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %23 = call %struct.ib_cq* @uobj_get_obj_read(%struct.ib_cq* %18, i32 %19, i32 %21, %struct.uverbs_attr_bundle* %22)
  store %struct.ib_cq* %23, %struct.ib_cq** %6, align 8
  %24 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %25 = icmp ne %struct.ib_cq* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %17
  %30 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %31 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ib_cq*, i32, i32*)*, i32 (%struct.ib_cq*, i32, i32*)** %34, align 8
  %36 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %37 = getelementptr inbounds %struct.ib_uverbs_resize_cq, %struct.ib_uverbs_resize_cq* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %40 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %39, i32 0, i32 0
  %41 = call i32 %35(%struct.ib_cq* %36, i32 %38, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %52

45:                                               ; preds = %29
  %46 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %47 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.ib_uverbs_resize_cq_resp, %struct.ib_uverbs_resize_cq_resp* %5, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %51 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %50, %struct.ib_uverbs_resize_cq_resp* %5, i32 4)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %54 = call i32 @uobj_put_obj_read(%struct.ib_cq* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %26, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_resize_cq*, i32) #2

declare dso_local %struct.ib_cq* @uobj_get_obj_read(%struct.ib_cq*, i32, i32, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_resize_cq_resp*, i32) #2

declare dso_local i32 @uobj_put_obj_read(%struct.ib_cq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
