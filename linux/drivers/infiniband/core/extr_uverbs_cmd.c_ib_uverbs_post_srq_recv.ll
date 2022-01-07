; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_post_srq_recv = type { i32, i32, i32, i32 }
%struct.ib_uverbs_post_srq_recv_resp = type { i32 }
%struct.ib_recv_wr = type { %struct.ib_recv_wr* }
%struct.ib_srq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_srq*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* }
%struct.uverbs_req_iter = type { i32 }

@UVERBS_OBJECT_SRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_post_srq_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_post_srq_recv(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_post_srq_recv, align 4
  %5 = alloca %struct.ib_uverbs_post_srq_recv_resp, align 4
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca %struct.ib_srq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uverbs_req_iter, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %14 = call i32 @uverbs_request_start(%struct.uverbs_attr_bundle* %13, %struct.uverbs_req_iter* %12, %struct.ib_uverbs_post_srq_recv* %4, i32 16)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %2, align 4
  br label %100

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, %struct.ib_uverbs_post_srq_recv* %4, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, %struct.ib_uverbs_post_srq_recv* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, %struct.ib_uverbs_post_srq_recv* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ib_recv_wr* @ib_uverbs_unmarshall_recv(%struct.uverbs_req_iter* %12, i32 %21, i32 %23, i32 %25)
  store %struct.ib_recv_wr* %26, %struct.ib_recv_wr** %6, align 8
  %27 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %28 = call i64 @IS_ERR(%struct.ib_recv_wr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.ib_recv_wr* %31)
  store i32 %32, i32* %2, align 4
  br label %100

33:                                               ; preds = %19
  %34 = load %struct.ib_srq*, %struct.ib_srq** %9, align 8
  %35 = load i32, i32* @UVERBS_OBJECT_SRQ, align 4
  %36 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, %struct.ib_uverbs_post_srq_recv* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %39 = call %struct.ib_srq* @uobj_get_obj_read(%struct.ib_srq* %34, i32 %35, i32 %37, %struct.uverbs_attr_bundle* %38)
  store %struct.ib_srq* %39, %struct.ib_srq** %9, align 8
  %40 = load %struct.ib_srq*, %struct.ib_srq** %9, align 8
  %41 = icmp ne %struct.ib_srq* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %87

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv_resp, %struct.ib_uverbs_post_srq_recv_resp* %5, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.ib_srq*, %struct.ib_srq** %9, align 8
  %48 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.ib_srq*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)*, i32 (%struct.ib_srq*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)** %51, align 8
  %53 = load %struct.ib_srq*, %struct.ib_srq** %9, align 8
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %55 = call i32 %52(%struct.ib_srq* %53, %struct.ib_recv_wr* %54, %struct.ib_recv_wr** %8)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ib_srq*, %struct.ib_srq** %9, align 8
  %57 = call i32 @uobj_put_obj_read(%struct.ib_srq* %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %45
  %61 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr* %61, %struct.ib_recv_wr** %7, align 8
  br label %62

62:                                               ; preds = %74, %60
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %64 = icmp ne %struct.ib_recv_wr* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv_resp, %struct.ib_uverbs_post_srq_recv_resp* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %70 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %71 = icmp eq %struct.ib_recv_wr* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %75, i32 0, i32 0
  %77 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %76, align 8
  store %struct.ib_recv_wr* %77, %struct.ib_recv_wr** %7, align 8
  br label %62

78:                                               ; preds = %72, %62
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %81 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %80, %struct.ib_uverbs_post_srq_recv_resp* %5, i32 4)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86, %42
  br label %88

88:                                               ; preds = %91, %87
  %89 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %90 = icmp ne %struct.ib_recv_wr* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %92, i32 0, i32 0
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %93, align 8
  store %struct.ib_recv_wr* %94, %struct.ib_recv_wr** %7, align 8
  %95 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %96 = call i32 @kfree(%struct.ib_recv_wr* %95)
  %97 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  store %struct.ib_recv_wr* %97, %struct.ib_recv_wr** %6, align 8
  br label %88

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %30, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @uverbs_request_start(%struct.uverbs_attr_bundle*, %struct.uverbs_req_iter*, %struct.ib_uverbs_post_srq_recv*, i32) #1

declare dso_local %struct.ib_recv_wr* @ib_uverbs_unmarshall_recv(%struct.uverbs_req_iter*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_recv_wr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_recv_wr*) #1

declare dso_local %struct.ib_srq* @uobj_get_obj_read(%struct.ib_srq*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_srq*) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_post_srq_recv_resp*, i32) #1

declare dso_local i32 @kfree(%struct.ib_recv_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
