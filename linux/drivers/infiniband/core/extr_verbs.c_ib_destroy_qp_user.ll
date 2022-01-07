; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_qp_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_qp_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, %struct.TYPE_4__*, i32, i32, %struct.ib_qp_security*, %struct.ib_rwq_ind_table*, %struct.ib_srq*, %struct.ib_cq*, %struct.ib_cq*, %struct.ib_pd*, %struct.ib_qp*, i32, %struct.ib_gid_attr*, %struct.ib_gid_attr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_qp_security = type { i32 }
%struct.ib_rwq_ind_table = type { i32 }
%struct.ib_srq = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_gid_attr = type { i32 }
%struct.ib_udata = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_qp_user(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca %struct.ib_gid_attr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca %struct.ib_cq*, align 8
  %10 = alloca %struct.ib_cq*, align 8
  %11 = alloca %struct.ib_srq*, align 8
  %12 = alloca %struct.ib_rwq_ind_table*, align 8
  %13 = alloca %struct.ib_qp_security*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 13
  %17 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  store %struct.ib_gid_attr* %17, %struct.ib_gid_attr** %6, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 12
  %20 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %19, align 8
  store %struct.ib_gid_attr* %20, %struct.ib_gid_attr** %7, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 11
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %156

34:                                               ; preds = %2
  %35 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 10
  %37 = load %struct.ib_qp*, %struct.ib_qp** %36, align 8
  %38 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %39 = icmp ne %struct.ib_qp* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %42 = call i32 @__ib_destroy_shared_qp(%struct.ib_qp* %41)
  store i32 %42, i32* %3, align 4
  br label %156

43:                                               ; preds = %34
  %44 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %45 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %44, i32 0, i32 9
  %46 = load %struct.ib_pd*, %struct.ib_pd** %45, align 8
  store %struct.ib_pd* %46, %struct.ib_pd** %8, align 8
  %47 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 8
  %49 = load %struct.ib_cq*, %struct.ib_cq** %48, align 8
  store %struct.ib_cq* %49, %struct.ib_cq** %9, align 8
  %50 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %51 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %50, i32 0, i32 7
  %52 = load %struct.ib_cq*, %struct.ib_cq** %51, align 8
  store %struct.ib_cq* %52, %struct.ib_cq** %10, align 8
  %53 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %54 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %53, i32 0, i32 6
  %55 = load %struct.ib_srq*, %struct.ib_srq** %54, align 8
  store %struct.ib_srq* %55, %struct.ib_srq** %11, align 8
  %56 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %57 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %56, i32 0, i32 5
  %58 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %57, align 8
  store %struct.ib_rwq_ind_table* %58, %struct.ib_rwq_ind_table** %12, align 8
  %59 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %60 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %59, i32 0, i32 4
  %61 = load %struct.ib_qp_security*, %struct.ib_qp_security** %60, align 8
  store %struct.ib_qp_security* %61, %struct.ib_qp_security** %13, align 8
  %62 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %63 = icmp ne %struct.ib_qp_security* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %66 = call i32 @ib_destroy_qp_security_begin(%struct.ib_qp_security* %65)
  br label %67

67:                                               ; preds = %64, %43
  %68 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %69 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %74 = call i32 @rdma_rw_cleanup_mrs(%struct.ib_qp* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %77 = call i32 @rdma_counter_unbind_qp(%struct.ib_qp* %76, i32 1)
  %78 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %79 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %78, i32 0, i32 2
  %80 = call i32 @rdma_restrack_del(i32* %79)
  %81 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %82 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = bitcast {}** %85 to i32 (%struct.ib_qp*, %struct.ib_udata*)**
  %87 = load i32 (%struct.ib_qp*, %struct.ib_udata*)*, i32 (%struct.ib_qp*, %struct.ib_udata*)** %86, align 8
  %88 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %89 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %90 = call i32 %87(%struct.ib_qp* %88, %struct.ib_udata* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %147, label %93

93:                                               ; preds = %75
  %94 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %95 = icmp ne %struct.ib_gid_attr* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  %98 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %101 = icmp ne %struct.ib_gid_attr* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %7, align 8
  %104 = call i32 @rdma_put_gid_attr(%struct.ib_gid_attr* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %107 = icmp ne %struct.ib_pd* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %110 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %109, i32 0, i32 0
  %111 = call i32 @atomic_dec(i32* %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  %114 = icmp ne %struct.ib_cq* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  %117 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %116, i32 0, i32 0
  %118 = call i32 @atomic_dec(i32* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load %struct.ib_cq*, %struct.ib_cq** %10, align 8
  %121 = icmp ne %struct.ib_cq* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.ib_cq*, %struct.ib_cq** %10, align 8
  %124 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %123, i32 0, i32 0
  %125 = call i32 @atomic_dec(i32* %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load %struct.ib_srq*, %struct.ib_srq** %11, align 8
  %128 = icmp ne %struct.ib_srq* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.ib_srq*, %struct.ib_srq** %11, align 8
  %131 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %130, i32 0, i32 0
  %132 = call i32 @atomic_dec(i32* %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %12, align 8
  %135 = icmp ne %struct.ib_rwq_ind_table* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %12, align 8
  %138 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %137, i32 0, i32 0
  %139 = call i32 @atomic_dec(i32* %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %142 = icmp ne %struct.ib_qp_security* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %145 = call i32 @ib_destroy_qp_security_end(%struct.ib_qp_security* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %154

147:                                              ; preds = %75
  %148 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %149 = icmp ne %struct.ib_qp_security* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.ib_qp_security*, %struct.ib_qp_security** %13, align 8
  %152 = call i32 @ib_destroy_qp_security_abort(%struct.ib_qp_security* %151)
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %146
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %40, %31
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ib_destroy_shared_qp(%struct.ib_qp*) #1

declare dso_local i32 @ib_destroy_qp_security_begin(%struct.ib_qp_security*) #1

declare dso_local i32 @rdma_rw_cleanup_mrs(%struct.ib_qp*) #1

declare dso_local i32 @rdma_counter_unbind_qp(%struct.ib_qp*, i32) #1

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @rdma_put_gid_attr(%struct.ib_gid_attr*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_destroy_qp_security_end(%struct.ib_qp_security*) #1

declare dso_local i32 @ib_destroy_qp_security_abort(%struct.ib_qp_security*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
