; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_device.c_copy_port_attr_to_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_std_types_device.c_copy_port_attr_to_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_query_port_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_device = type { i32 }

@IB_UVERBS_QPF_GRH_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_port_attr_to_resp(%struct.ib_port_attr* %0, %struct.ib_uverbs_query_port_resp* %1, %struct.ib_device* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_port_attr*, align 8
  %6 = alloca %struct.ib_uverbs_query_port_resp*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_port_attr* %0, %struct.ib_port_attr** %5, align 8
  store %struct.ib_uverbs_query_port_resp* %1, %struct.ib_uverbs_query_port_resp** %6, align 8
  store %struct.ib_device* %2, %struct.ib_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %10 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %17, i32 0, i32 19
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %25 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %28 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %27, i32 0, i32 17
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %30 = call i32 @make_port_cap_flags(%struct.ib_port_attr* %29)
  %31 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %37 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %42 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %47 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @rdma_is_grh_required(%struct.ib_device* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %4
  %58 = load i32, i32* @IB_UVERBS_QPF_GRH_REQUIRED, align 4
  %59 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %60 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %4
  %64 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @rdma_cap_opa_ah(%struct.ib_device* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %70 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @OPA_TO_IB_UCAST_LID(i32 %71)
  %73 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %74 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %73, i32 0, i32 10
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @OPA_TO_IB_UCAST_LID(i32 %77)
  %79 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %80 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  br label %94

81:                                               ; preds = %63
  %82 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ib_lid_cpu16(i32 %84)
  %86 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %87 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ib_lid_cpu16(i32 %90)
  %92 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %93 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %81, %68
  %95 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %96 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %99 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %106 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %109 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %114 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %116 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %119 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %121 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %124 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %126 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %129 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ib_port_attr*, %struct.ib_port_attr** %5, align 8
  %131 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %134 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @rdma_port_get_link_layer(%struct.ib_device* %135, i32 %136)
  %138 = load %struct.ib_uverbs_query_port_resp*, %struct.ib_uverbs_query_port_resp** %6, align 8
  %139 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, %struct.ib_uverbs_query_port_resp* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  ret void
}

declare dso_local i32 @make_port_cap_flags(%struct.ib_port_attr*) #1

declare dso_local i64 @rdma_is_grh_required(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_cap_opa_ah(%struct.ib_device*, i32) #1

declare dso_local i8* @OPA_TO_IB_UCAST_LID(i32) #1

declare dso_local i8* @ib_lid_cpu16(i32) #1

declare dso_local i32 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
