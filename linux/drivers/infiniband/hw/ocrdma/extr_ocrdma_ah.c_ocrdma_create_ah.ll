; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_ocrdma_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_ah = type { i32, i64 }
%struct.ocrdma_pd = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ocrdma_dev = type { i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_AH_ID_MASK = common dso_local global i32 0, align 4
@OCRDMA_AH_L3_TYPE_MASK = common dso_local global i32 0, align 4
@OCRDMA_AH_L3_TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_AH_VLAN_VALID_MASK = common dso_local global i32 0, align 4
@OCRDMA_AH_VLAN_VALID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_create_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocrdma_ah*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_gid_attr*, align 8
  %16 = alloca %struct.ocrdma_pd*, align 8
  %17 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %18 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %19 = call %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah* %18)
  store %struct.ocrdma_ah* %19, %struct.ocrdma_ah** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 65535, i32* %14, align 4
  %20 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %21 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ocrdma_pd* @get_ocrdma_pd(i32 %22)
  store %struct.ocrdma_pd* %23, %struct.ocrdma_pd** %16, align 8
  %24 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %25 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %26)
  store %struct.ocrdma_dev* %27, %struct.ocrdma_dev** %17, align 8
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %29 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %35 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %34)
  %36 = load i32, i32* @IB_AH_GRH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %152

42:                                               ; preds = %33
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 0
  %45 = call i64 @atomic_cmpxchg(i32* %44, i32 1, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %49 = call i32 @ocrdma_init_service_level(%struct.ocrdma_dev* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %52 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %53, align 8
  store %struct.ib_gid_attr* %54, %struct.ib_gid_attr** %15, align 8
  %55 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %56 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %55, i32* %14, i32* null)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %152

61:                                               ; preds = %50
  %62 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %63 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %64 = call i32 @ocrdma_alloc_av(%struct.ocrdma_dev* %62, %struct.ocrdma_ah* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %150

68:                                               ; preds = %61
  %69 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %70 = call i64 @rdma_gid_attr_network_type(%struct.ib_gid_attr* %69)
  %71 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %72 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %74 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %75 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %76 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %77 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %76, i32 0, i32 0
  %78 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %16, align 8
  %79 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @set_av_attr(%struct.ocrdma_dev* %73, %struct.ocrdma_ah* %74, %struct.rdma_ah_attr* %75, i32* %77, i32 %80, i32* %13, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %146

86:                                               ; preds = %68
  %87 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %16, align 8
  %88 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %145

91:                                               ; preds = %86
  %92 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %16, align 8
  %93 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %145

99:                                               ; preds = %91
  %100 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %16, align 8
  %101 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %107 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %106)
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %10, align 8
  store i32 0, i32* %110, align 4
  %111 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %112 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @OCRDMA_AH_ID_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %120 = call i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %99
  %123 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %124 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @OCRDMA_AH_L3_TYPE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @OCRDMA_AH_L3_TYPE_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %122, %99
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* @OCRDMA_AH_VLAN_VALID_MASK, align 4
  %139 = load i32, i32* @OCRDMA_AH_VLAN_VALID_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %134
  br label %145

145:                                              ; preds = %144, %91, %86
  store i32 0, i32* %5, align 4
  br label %152

146:                                              ; preds = %85
  %147 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %17, align 8
  %148 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %12, align 8
  %149 = call i32 @ocrdma_free_av(%struct.ocrdma_dev* %147, %struct.ocrdma_ah* %148)
  br label %150

150:                                              ; preds = %146, %67
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %145, %59, %39
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.ocrdma_ah* @get_ocrdma_ah(%struct.ib_ah*) #1

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(i32) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @ocrdma_init_service_level(%struct.ocrdma_dev*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32*) #1

declare dso_local i32 @ocrdma_alloc_av(%struct.ocrdma_dev*, %struct.ocrdma_ah*) #1

declare dso_local i64 @rdma_gid_attr_network_type(%struct.ib_gid_attr*) #1

declare dso_local i32 @set_av_attr(%struct.ocrdma_dev*, %struct.ocrdma_ah*, %struct.rdma_ah_attr*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_free_av(%struct.ocrdma_dev*, %struct.ocrdma_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
