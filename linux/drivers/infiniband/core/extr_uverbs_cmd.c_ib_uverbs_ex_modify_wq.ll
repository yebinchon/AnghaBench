; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_modify_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_modify_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_modify_wq = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_wq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)* }
%struct.ib_wq_attr = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_WQ_STATE = common dso_local global i32 0, align 4
@IB_WQ_CUR_STATE = common dso_local global i32 0, align 4
@IB_WQ_FLAGS = common dso_local global i32 0, align 4
@UVERBS_OBJECT_WQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_modify_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_modify_wq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_modify_wq, align 4
  %5 = alloca %struct.ib_wq*, align 8
  %6 = alloca %struct.ib_wq_attr, align 4
  %7 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %8 = bitcast %struct.ib_wq_attr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %10 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %9, %struct.ib_uverbs_ex_modify_wq* %4, i32 24)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %81

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IB_WQ_STATE, align 4
  %26 = load i32, i32* @IB_WQ_CUR_STATE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_WQ_FLAGS, align 4
  %29 = or i32 %27, %28
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %81

34:                                               ; preds = %22
  %35 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %36 = load i32, i32* @UVERBS_OBJECT_WQ, align 4
  %37 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %40 = call %struct.ib_wq* @uobj_get_obj_read(%struct.ib_wq* %35, i32 %36, i32 %38, %struct.uverbs_attr_bundle* %39)
  store %struct.ib_wq* %40, %struct.ib_wq** %5, align 8
  %41 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %42 = icmp ne %struct.ib_wq* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %81

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.ib_wq_attr, %struct.ib_wq_attr* %6, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ib_wq_attr, %struct.ib_wq_attr* %6, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IB_WQ_FLAGS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ib_wq_attr, %struct.ib_wq_attr* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ib_wq_attr, %struct.ib_wq_attr* %6, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %46
  %66 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %67 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)*, i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)** %70, align 8
  %72 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %73 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, %struct.ib_uverbs_ex_modify_wq* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %76 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %75, i32 0, i32 0
  %77 = call i32 %71(%struct.ib_wq* %72, %struct.ib_wq_attr* %6, i32 %74, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %79 = call i32 @uobj_put_obj_read(%struct.ib_wq* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %65, %43, %31, %19, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_wq*, i32) #2

declare dso_local %struct.ib_wq* @uobj_get_obj_read(%struct.ib_wq*, i32, i32, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @uobj_put_obj_read(%struct.ib_wq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
