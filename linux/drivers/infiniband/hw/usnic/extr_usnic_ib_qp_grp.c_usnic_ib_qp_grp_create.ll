; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.usnic_ib_qp_grp = type { %struct.usnic_ib_qp_grp_flow*, i32, %struct.TYPE_3__, i32, i32, %struct.usnic_fwd_dev*, i32, i32 }
%struct.usnic_ib_qp_grp_flow = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usnic_fwd_dev = type { i32 }
%struct.usnic_ib_vf = type { i32, i32 }
%struct.usnic_ib_pd = type { i32 }
%struct.usnic_vnic_res_spec = type { i32 }
%struct.usnic_transport_spec = type { i32 }

@min_transport_spec = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Spec does not meet minimum req for transport %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to create and add flow with err %ld\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_ib_qp_grp* @usnic_ib_qp_grp_create(%struct.usnic_fwd_dev* %0, %struct.usnic_ib_vf* %1, %struct.usnic_ib_pd* %2, %struct.usnic_vnic_res_spec* %3, %struct.usnic_transport_spec* %4) #0 {
  %6 = alloca %struct.usnic_ib_qp_grp*, align 8
  %7 = alloca %struct.usnic_fwd_dev*, align 8
  %8 = alloca %struct.usnic_ib_vf*, align 8
  %9 = alloca %struct.usnic_ib_pd*, align 8
  %10 = alloca %struct.usnic_vnic_res_spec*, align 8
  %11 = alloca %struct.usnic_transport_spec*, align 8
  %12 = alloca %struct.usnic_ib_qp_grp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usnic_ib_qp_grp_flow*, align 8
  store %struct.usnic_fwd_dev* %0, %struct.usnic_fwd_dev** %7, align 8
  store %struct.usnic_ib_vf* %1, %struct.usnic_ib_vf** %8, align 8
  store %struct.usnic_ib_pd* %2, %struct.usnic_ib_pd** %9, align 8
  store %struct.usnic_vnic_res_spec* %3, %struct.usnic_vnic_res_spec** %10, align 8
  store %struct.usnic_transport_spec* %4, %struct.usnic_transport_spec** %11, align 8
  %16 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %11, align 8
  %17 = getelementptr inbounds %struct.usnic_transport_spec, %struct.usnic_transport_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %20 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load i32*, i32** @min_transport_spec, align 8
  %23 = load i32, i32* %14, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %10, align 8
  %27 = call i32 @usnic_vnic_res_spec_satisfied(i32* %25, %struct.usnic_vnic_res_spec* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @usnic_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %10, align 8
  %34 = call i32 @log_spec(%struct.usnic_vnic_res_spec* %33)
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.usnic_ib_qp_grp* @ERR_PTR(i32 %35)
  store %struct.usnic_ib_qp_grp* %36, %struct.usnic_ib_qp_grp** %6, align 8
  br label %152

37:                                               ; preds = %5
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.usnic_ib_qp_grp* @kzalloc(i32 40, i32 %38)
  store %struct.usnic_ib_qp_grp* %39, %struct.usnic_ib_qp_grp** %12, align 8
  %40 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %41 = icmp ne %struct.usnic_ib_qp_grp* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store %struct.usnic_ib_qp_grp* null, %struct.usnic_ib_qp_grp** %6, align 8
  br label %152

43:                                               ; preds = %37
  %44 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %45 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usnic_vnic_res_spec*, %struct.usnic_vnic_res_spec** %10, align 8
  %48 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %49 = call %struct.usnic_ib_qp_grp_flow* @alloc_res_chunk_list(i32 %46, %struct.usnic_vnic_res_spec* %47, %struct.usnic_ib_qp_grp* %48)
  %50 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %51 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %50, i32 0, i32 0
  store %struct.usnic_ib_qp_grp_flow* %49, %struct.usnic_ib_qp_grp_flow** %51, align 8
  %52 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %53 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %52, i32 0, i32 0
  %54 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %53, align 8
  %55 = call i64 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %43
  %58 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %59 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %58, i32 0, i32 0
  %60 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %59, align 8
  %61 = icmp ne %struct.usnic_ib_qp_grp_flow* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %64 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %63, i32 0, i32 0
  %65 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow* %65)
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %66, %62 ], [ %69, %67 ]
  store i32 %71, i32* %13, align 4
  br label %147

72:                                               ; preds = %43
  %73 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %74 = load %struct.usnic_ib_pd*, %struct.usnic_ib_pd** %9, align 8
  %75 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %76 = call i32 @qp_grp_and_vf_bind(%struct.usnic_ib_vf* %73, %struct.usnic_ib_pd* %74, %struct.usnic_ib_qp_grp* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %142

80:                                               ; preds = %72
  %81 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %82 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %81, i32 0, i32 7
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %85 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %84, i32 0, i32 6
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.usnic_fwd_dev*, %struct.usnic_fwd_dev** %7, align 8
  %88 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %89 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %88, i32 0, i32 5
  store %struct.usnic_fwd_dev* %87, %struct.usnic_fwd_dev** %89, align 8
  %90 = load i32, i32* @IB_QPS_RESET, align 4
  %91 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %92 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %97 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %99 = load %struct.usnic_transport_spec*, %struct.usnic_transport_spec** %11, align 8
  %100 = call %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp* %98, %struct.usnic_transport_spec* %99)
  store %struct.usnic_ib_qp_grp_flow* %100, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %101 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %102 = call i64 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %80
  %105 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %106 = call i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow* %105)
  %107 = call i32 @usnic_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %109 = icmp ne %struct.usnic_ib_qp_grp_flow* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %112 = call i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow* %111)
  br label %116

113:                                              ; preds = %104
  %114 = load i32, i32* @EFAULT, align 4
  %115 = sub nsw i32 0, %114
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i32 [ %112, %110 ], [ %115, %113 ]
  store i32 %117, i32* %13, align 4
  br label %139

118:                                              ; preds = %80
  %119 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %120 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %121 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %120, i32 0, i32 1
  %122 = call i32 @qp_grp_id_from_flow(%struct.usnic_ib_qp_grp_flow* %119, i32* %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %136

126:                                              ; preds = %118
  %127 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %128 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %131 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %134 = call i32 @usnic_ib_sysfs_qpn_add(%struct.usnic_ib_qp_grp* %133)
  %135 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  store %struct.usnic_ib_qp_grp* %135, %struct.usnic_ib_qp_grp** %6, align 8
  br label %152

136:                                              ; preds = %125
  %137 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %15, align 8
  %138 = call i32 @release_and_remove_flow(%struct.usnic_ib_qp_grp_flow* %137)
  br label %139

139:                                              ; preds = %136, %116
  %140 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %141 = call i32 @qp_grp_and_vf_unbind(%struct.usnic_ib_qp_grp* %140)
  br label %142

142:                                              ; preds = %139, %79
  %143 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %144 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %143, i32 0, i32 0
  %145 = load %struct.usnic_ib_qp_grp_flow*, %struct.usnic_ib_qp_grp_flow** %144, align 8
  %146 = call i32 @free_qp_grp_res(%struct.usnic_ib_qp_grp_flow* %145)
  br label %147

147:                                              ; preds = %142, %70
  %148 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %12, align 8
  %149 = call i32 @kfree(%struct.usnic_ib_qp_grp* %148)
  %150 = load i32, i32* %13, align 4
  %151 = call %struct.usnic_ib_qp_grp* @ERR_PTR(i32 %150)
  store %struct.usnic_ib_qp_grp* %151, %struct.usnic_ib_qp_grp** %6, align 8
  br label %152

152:                                              ; preds = %147, %126, %42, %30
  %153 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %6, align 8
  ret %struct.usnic_ib_qp_grp* %153
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @usnic_vnic_res_spec_satisfied(i32*, %struct.usnic_vnic_res_spec*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @log_spec(%struct.usnic_vnic_res_spec*) #1

declare dso_local %struct.usnic_ib_qp_grp* @ERR_PTR(i32) #1

declare dso_local %struct.usnic_ib_qp_grp* @kzalloc(i32, i32) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @alloc_res_chunk_list(i32, %struct.usnic_vnic_res_spec*, %struct.usnic_ib_qp_grp*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @qp_grp_and_vf_bind(%struct.usnic_ib_vf*, %struct.usnic_ib_pd*, %struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.usnic_ib_qp_grp_flow* @create_and_add_flow(%struct.usnic_ib_qp_grp*, %struct.usnic_transport_spec*) #1

declare dso_local i32 @qp_grp_id_from_flow(%struct.usnic_ib_qp_grp_flow*, i32*) #1

declare dso_local i32 @usnic_ib_sysfs_qpn_add(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @release_and_remove_flow(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @qp_grp_and_vf_unbind(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @free_qp_grp_res(%struct.usnic_ib_qp_grp_flow*) #1

declare dso_local i32 @kfree(%struct.usnic_ib_qp_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
