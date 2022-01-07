; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_gid_info_from_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_gid_info_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.qed_rdma_modify_qp_in_params = type { i32, %struct.TYPE_7__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8**, i8*, i32* }
%struct.ib_gid_attr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.ib_global_route = type { %struct.TYPE_6__, %struct.ib_gid_attr* }

@ROCE_V2_IPV6 = common dso_local global i32 0, align 4
@QED_ROCE_MODIFY_QP_VALID_ROCE_MODE = common dso_local global i32 0, align 4
@ROCE_V1 = common dso_local global i32 0, align 4
@ROCE_V2_IPV4 = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.qed_rdma_modify_qp_in_params*)* @get_gid_info_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gid_info_from_table(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.qed_rdma_modify_qp_in_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_rdma_modify_qp_in_params*, align 8
  %10 = alloca %struct.ib_gid_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_global_route*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_rdma_modify_qp_in_params* %3, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %16 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %16, i32 0, i32 0
  %18 = call %struct.ib_global_route* @rdma_ah_read_grh(i32* %17)
  store %struct.ib_global_route* %18, %struct.ib_global_route** %12, align 8
  %19 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %20 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %19, i32 0, i32 1
  %21 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %20, align 8
  store %struct.ib_gid_attr* %21, %struct.ib_gid_attr** %10, align 8
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %23 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %24 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %23, i32 0, i32 0
  %25 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %22, i32* %24, i32* null)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %168

30:                                               ; preds = %4
  %31 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %32 = call i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %118 [
    i32 128, label %34
    i32 130, label %62
    i32 129, label %85
  ]

34:                                               ; preds = %30
  %35 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %36 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %41 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 0
  %45 = call i32 @memcpy(i32* %39, %struct.TYPE_6__* %44, i32 24)
  %46 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %47 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %52 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %51, i32 0, i32 0
  %53 = call i32 @memcpy(i32* %50, %struct.TYPE_6__* %52, i32 24)
  %54 = load i32, i32* @ROCE_V2_IPV6, align 4
  %55 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %56 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %58 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ROCE_MODE, align 4
  %61 = call i32 @SET_FIELD(i32 %59, i32 %60, i32 1)
  br label %118

62:                                               ; preds = %30
  %63 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %64 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %69 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 0
  %73 = call i32 @memcpy(i32* %67, %struct.TYPE_6__* %72, i32 24)
  %74 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %75 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %80 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %79, i32 0, i32 0
  %81 = call i32 @memcpy(i32* %78, %struct.TYPE_6__* %80, i32 24)
  %82 = load i32, i32* @ROCE_V1, align 4
  %83 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %84 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  br label %118

85:                                               ; preds = %30
  %86 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %87 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %86, i32 0, i32 2
  %88 = call i32 @memset(%struct.TYPE_7__* %87, i32 0, i32 24)
  %89 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %89, i32 0, i32 1
  %91 = call i32 @memset(%struct.TYPE_7__* %90, i32 0, i32 24)
  %92 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %10, align 8
  %93 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i8* @qedr_get_ipv4_from_gid(%struct.TYPE_6__* %95)
  store i8* %96, i8** %13, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %99 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %102 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = call i8* @qedr_get_ipv4_from_gid(%struct.TYPE_6__* %104)
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %108 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %111 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @QED_ROCE_MODIFY_QP_VALID_ROCE_MODE, align 4
  %114 = call i32 @SET_FIELD(i32 %112, i32 %113, i32 1)
  %115 = load i32, i32* @ROCE_V2_IPV4, align 4
  %116 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %117 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %30, %85, %62, %34
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %155, %118
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %158

122:                                              ; preds = %119
  %123 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %124 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @ntohl(i8* %130)
  %132 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %133 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  store i8* %131, i8** %138, align 8
  %139 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %140 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @ntohl(i8* %146)
  %148 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %149 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %147, i8** %154, align 8
  br label %155

155:                                              ; preds = %122
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %119

158:                                              ; preds = %119
  %159 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %160 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @VLAN_CFI_MASK, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %166 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %158
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %28
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(i32*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32*) #1

declare dso_local i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @qedr_get_ipv4_from_gid(%struct.TYPE_6__*) #1

declare dso_local i8* @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
