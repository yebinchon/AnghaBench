; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_ah = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ib_uverbs_create_ah_resp = type { i32 }
%struct.ib_uobject = type { i32, %struct.ib_uobject*, i32, %struct.ib_uobject* }
%struct.ib_pd = type { i32 }
%struct.ib_ah = type { i32, %struct.ib_ah*, i32, %struct.ib_ah* }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_device = type { i32 }

@UVERBS_OBJECT_AH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_PD = common dso_local global i32 0, align 4
@RDMA_DESTROY_AH_SLEEPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_create_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_ah(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_ah, align 8
  %5 = alloca %struct.ib_uverbs_create_ah_resp, align 4
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.ib_ah*, align 8
  %9 = alloca %struct.rdma_ah_attr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %12 = bitcast %struct.rdma_ah_attr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %14 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %13, %struct.ib_uverbs_create_ah* %4, i32 72)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %2, align 4
  br label %165

19:                                               ; preds = %1
  %20 = load i32, i32* @UVERBS_OBJECT_AH, align 4
  %21 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %22 = call %struct.ib_uobject* @uobj_alloc(i32 %20, %struct.uverbs_attr_bundle* %21, %struct.ib_device** %11)
  store %struct.ib_uobject* %22, %struct.ib_uobject** %6, align 8
  %23 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %24 = call i64 @IS_ERR(%struct.ib_uobject* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.ib_uobject* %27)
  store i32 %28, i32* %2, align 4
  br label %165

29:                                               ; preds = %19
  %30 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %31 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rdma_is_port_valid(%struct.ib_device* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %160

39:                                               ; preds = %29
  %40 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %41 = load i32, i32* @UVERBS_OBJECT_PD, align 4
  %42 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %45 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %40, i32 %41, i32 %43, %struct.uverbs_attr_bundle* %44)
  store %struct.ib_pd* %45, %struct.ib_pd** %7, align 8
  %46 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %47 = icmp ne %struct.ib_pd* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %160

51:                                               ; preds = %39
  %52 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %53 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rdma_ah_find_type(%struct.ib_device* %52, i32 %55)
  %57 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = call i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr* %9, i32 0)
  %59 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %9, i32 %61)
  %63 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %9, i32 %65)
  %67 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %9, i32 %69)
  %71 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %9, i32 %73)
  %75 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %9, i32 %77)
  %79 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %51
  %84 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %9, i32* null, i32 %87, i32 %91, i32 %95, i32 %99)
  %101 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %9, i32 %104)
  br label %108

106:                                              ; preds = %51
  %107 = call i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr* %9, i32 0)
  br label %108

108:                                              ; preds = %106, %83
  %109 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %110 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %111 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %110, i32 0, i32 0
  %112 = call %struct.ib_uobject* @rdma_create_user_ah(%struct.ib_pd* %109, %struct.rdma_ah_attr* %9, i32* %111)
  %113 = bitcast %struct.ib_uobject* %112 to %struct.ib_ah*
  store %struct.ib_ah* %113, %struct.ib_ah** %8, align 8
  %114 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %115 = bitcast %struct.ib_ah* %114 to %struct.ib_uobject*
  %116 = call i64 @IS_ERR(%struct.ib_uobject* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %120 = bitcast %struct.ib_ah* %119 to %struct.ib_uobject*
  %121 = call i32 @PTR_ERR(%struct.ib_uobject* %120)
  store i32 %121, i32* %10, align 4
  br label %157

122:                                              ; preds = %108
  %123 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %124 = bitcast %struct.ib_uobject* %123 to %struct.ib_ah*
  %125 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %126 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %125, i32 0, i32 3
  store %struct.ib_ah* %124, %struct.ib_ah** %126, align 8
  %127 = getelementptr inbounds %struct.ib_uverbs_create_ah, %struct.ib_uverbs_create_ah* %4, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %130 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %132 = bitcast %struct.ib_ah* %131 to %struct.ib_uobject*
  %133 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %134 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %133, i32 0, i32 1
  store %struct.ib_uobject* %132, %struct.ib_uobject** %134, align 8
  %135 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %136 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.ib_uverbs_create_ah_resp, %struct.ib_uverbs_create_ah_resp* %5, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %140 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %139, %struct.ib_uverbs_create_ah_resp* %5, i32 4)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %122
  br label %150

144:                                              ; preds = %122
  %145 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %146 = call i32 @uobj_put_obj_read(%struct.ib_pd* %145)
  %147 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %148 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %149 = call i32 @uobj_alloc_commit(%struct.ib_uobject* %147, %struct.uverbs_attr_bundle* %148)
  store i32 %149, i32* %2, align 4
  br label %165

150:                                              ; preds = %143
  %151 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %152 = bitcast %struct.ib_ah* %151 to %struct.ib_uobject*
  %153 = load i32, i32* @RDMA_DESTROY_AH_SLEEPABLE, align 4
  %154 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %155 = call i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle* %154)
  %156 = call i32 @rdma_destroy_ah_user(%struct.ib_uobject* %152, i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %150, %118
  %158 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %159 = call i32 @uobj_put_obj_read(%struct.ib_pd* %158)
  br label %160

160:                                              ; preds = %157, %48, %36
  %161 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %162 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %163 = call i32 @uobj_alloc_abort(%struct.ib_uobject* %161, %struct.uverbs_attr_bundle* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %160, %144, %26, %17
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_ah*, i32) #2

declare dso_local %struct.ib_uobject* @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #2

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #2

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #2

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #2

declare dso_local %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd*, i32, i32, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @rdma_ah_find_type(%struct.ib_device*, i32) #2

declare dso_local i32 @rdma_ah_set_make_grd(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #2

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.rdma_ah_attr*, i32) #2

declare dso_local %struct.ib_uobject* @rdma_create_user_ah(%struct.ib_pd*, %struct.rdma_ah_attr*, i32*) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_ah_resp*, i32) #2

declare dso_local i32 @uobj_put_obj_read(%struct.ib_pd*) #2

declare dso_local i32 @uobj_alloc_commit(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @rdma_destroy_ah_user(%struct.ib_uobject*, i32, i32) #2

declare dso_local i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle*) #2

declare dso_local i32 @uobj_alloc_abort(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
