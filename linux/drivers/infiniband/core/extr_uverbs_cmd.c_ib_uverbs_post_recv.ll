; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_post_recv = type { i32, i32, i32, i32 }
%struct.ib_uverbs_post_recv_resp = type { i32 }
%struct.ib_recv_wr = type { %struct.ib_recv_wr* }
%struct.ib_qp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* }
%struct.uverbs_req_iter = type { i32 }

@UVERBS_OBJECT_QP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_post_recv(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_post_recv, align 4
  %5 = alloca %struct.ib_uverbs_post_recv_resp, align 4
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca %struct.ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uverbs_req_iter, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %14 = call i32 @uverbs_request_start(%struct.uverbs_attr_bundle* %13, %struct.uverbs_req_iter* %12, %struct.ib_uverbs_post_recv* %4, i32 16)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %2, align 4
  br label %102

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ib_uverbs_post_recv, %struct.ib_uverbs_post_recv* %4, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ib_uverbs_post_recv, %struct.ib_uverbs_post_recv* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ib_uverbs_post_recv, %struct.ib_uverbs_post_recv* %4, i32 0, i32 1
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
  br label %102

33:                                               ; preds = %19
  %34 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %35 = load i32, i32* @UVERBS_OBJECT_QP, align 4
  %36 = getelementptr inbounds %struct.ib_uverbs_post_recv, %struct.ib_uverbs_post_recv* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %39 = call %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp* %34, i32 %35, i32 %37, %struct.uverbs_attr_bundle* %38)
  store %struct.ib_qp* %39, %struct.ib_qp** %9, align 8
  %40 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %41 = icmp ne %struct.ib_qp* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %89

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.ib_uverbs_post_recv_resp, %struct.ib_uverbs_post_recv_resp* %5, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**)*, i32 (i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**)** %51, align 8
  %53 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %54 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %57 = call i32 %52(i32 %55, %struct.ib_recv_wr* %56, %struct.ib_recv_wr** %8)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %59 = call i32 @uobj_put_obj_read(%struct.ib_qp* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %45
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr* %63, %struct.ib_recv_wr** %7, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %66 = icmp ne %struct.ib_recv_wr* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ib_uverbs_post_recv_resp, %struct.ib_uverbs_post_recv_resp* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %72 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %73 = icmp eq %struct.ib_recv_wr* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %80

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %78 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %77, i32 0, i32 0
  %79 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %78, align 8
  store %struct.ib_recv_wr* %79, %struct.ib_recv_wr** %7, align 8
  br label %64

80:                                               ; preds = %74, %64
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %83 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %82, %struct.ib_uverbs_post_recv_resp* %5, i32 4)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %42
  br label %90

90:                                               ; preds = %93, %89
  %91 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %92 = icmp ne %struct.ib_recv_wr* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %95 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %94, i32 0, i32 0
  %96 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %95, align 8
  store %struct.ib_recv_wr* %96, %struct.ib_recv_wr** %7, align 8
  %97 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %98 = call i32 @kfree(%struct.ib_recv_wr* %97)
  %99 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  store %struct.ib_recv_wr* %99, %struct.ib_recv_wr** %6, align 8
  br label %90

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %30, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @uverbs_request_start(%struct.uverbs_attr_bundle*, %struct.uverbs_req_iter*, %struct.ib_uverbs_post_recv*, i32) #1

declare dso_local %struct.ib_recv_wr* @ib_uverbs_unmarshall_recv(%struct.uverbs_req_iter*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_recv_wr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_recv_wr*) #1

declare dso_local %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_qp*) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_post_recv_resp*, i32) #1

declare dso_local i32 @kfree(%struct.ib_recv_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
