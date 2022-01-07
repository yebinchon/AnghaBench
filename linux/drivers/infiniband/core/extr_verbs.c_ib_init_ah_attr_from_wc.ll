; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_init_ah_attr_from_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_init_ah_attr_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_grh = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_gid_attr = type { i32 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.rdma_network_hdr = type { i32 }

@RDMA_NETWORK_IB = common dso_local global i32 0, align 4
@IB_GID_TYPE_IB = common dso_local global i32 0, align 4
@IB_WC_WITH_NETWORK_HDR_TYPE = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@IB_SA_WELL_KNOWN_GUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_attr_from_wc(%struct.ib_device* %0, i32 %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.rdma_ah_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.rdma_ah_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_gid_attr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.ib_gid, align 8
  %19 = alloca %union.ib_gid, align 8
  %20 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.rdma_ah_attr* %4, %struct.rdma_ah_attr** %11, align 8
  %21 = load i32, i32* @RDMA_NETWORK_IB, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @IB_GID_TYPE_IB, align 4
  store i32 %22, i32* %15, align 4
  store i32 255, i32* %17, align 4
  %23 = call i32 (...) @might_sleep()
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %25 = call i32 @memset(%struct.rdma_ah_attr* %24, i32 0, i32 4)
  %26 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rdma_ah_find_type(%struct.ib_device* %26, i32 %27)
  %29 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %30 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @rdma_cap_eth_ah(%struct.ib_device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %5
  %36 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IB_WC_WITH_NETWORK_HDR_TYPE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %50 = call i32 @ib_get_net_type_by_grh(%struct.ib_device* %47, i32 %48, %struct.ib_grh* %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @ib_network_to_gid_type(i32 %52)
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %5
  %55 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %56 = bitcast %struct.ib_grh* %55 to %union.rdma_network_hdr*
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ib_get_gids_from_rdma_hdr(%union.rdma_network_hdr* %56, i32 %57, %union.ib_gid* %19, %union.ib_gid* %18)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %190

63:                                               ; preds = %54
  %64 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %65 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %64, i32 %67)
  %69 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %69, i32 %70)
  %72 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i64 @rdma_protocol_roce(%struct.ib_device* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %135

76:                                               ; preds = %63
  %77 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IB_WC_WITH_VLAN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %85 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  br label %88

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 65535, %87 ]
  store i32 %89, i32* %20, align 4
  %90 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %91 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IB_WC_GRH, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @EPROTOTYPE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %190

99:                                               ; preds = %88
  %100 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call %struct.ib_gid_attr* @get_sgid_attr_from_eth(%struct.ib_device* %100, i32 %101, i32 %102, %union.ib_gid* %18, i32 %103)
  store %struct.ib_gid_attr* %104, %struct.ib_gid_attr** %16, align 8
  %105 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %106 = call i64 @IS_ERR(%struct.ib_gid_attr* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %110 = call i32 @PTR_ERR(%struct.ib_gid_attr* %109)
  store i32 %110, i32* %6, align 4
  br label %190

111:                                              ; preds = %99
  %112 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %113 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be32_to_cpu(i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 1048575
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %12, align 4
  %121 = ashr i32 %120, 20
  %122 = and i32 %121, 255
  %123 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %124 = call i32 @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr* %116, %union.ib_gid* %19, i32 %118, i32 %119, i32 %122, %struct.ib_gid_attr* %123)
  %125 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %126 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %127 = call i32 @ib_resolve_unicast_gid_dmac(%struct.ib_device* %125, %struct.rdma_ah_attr* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  %131 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %132 = call i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr* %131)
  br label %133

133:                                              ; preds = %130, %111
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %190

135:                                              ; preds = %63
  %136 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %137 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %138 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %136, i32 %139)
  %141 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %142 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %143 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %141, i32 %144)
  %146 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %147 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IB_WC_GRH, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %190

153:                                              ; preds = %135
  %154 = bitcast %union.ib_gid* %18 to %struct.TYPE_2__*
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @IB_SA_WELL_KNOWN_GUID, align 4
  %158 = call i64 @cpu_to_be64(i32 %157)
  %159 = icmp ne i64 %156, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %162 = load i32, i32* @IB_GID_TYPE_IB, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device* %161, %union.ib_gid* %18, i32 %162, i32 %163, i32* null)
  store %struct.ib_gid_attr* %164, %struct.ib_gid_attr** %16, align 8
  br label %169

165:                                              ; preds = %153
  %166 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call %struct.ib_gid_attr* @rdma_get_gid_attr(%struct.ib_device* %166, i32 %167, i32 0)
  store %struct.ib_gid_attr* %168, %struct.ib_gid_attr** %16, align 8
  br label %169

169:                                              ; preds = %165, %160
  %170 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %171 = call i64 @IS_ERR(%struct.ib_gid_attr* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %175 = call i32 @PTR_ERR(%struct.ib_gid_attr* %174)
  store i32 %175, i32* %6, align 4
  br label %190

176:                                              ; preds = %169
  %177 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %178 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be32_to_cpu(i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %182 = load i32, i32* %12, align 4
  %183 = and i32 %182, 1048575
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %12, align 4
  %186 = ashr i32 %185, 20
  %187 = and i32 %186, 255
  %188 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %189 = call i32 @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr* %181, %union.ib_gid* %19, i32 %183, i32 %184, i32 %187, %struct.ib_gid_attr* %188)
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %176, %173, %152, %133, %108, %96, %61
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_cap_eth_ah(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_get_net_type_by_grh(%struct.ib_device*, i32, %struct.ib_grh*) #1

declare dso_local i32 @ib_network_to_gid_type(i32) #1

declare dso_local i32 @ib_get_gids_from_rdma_hdr(%union.rdma_network_hdr*, i32, %union.ib_gid*, %union.ib_gid*) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_attr* @get_sgid_attr_from_eth(%struct.ib_device*, i32, i32, %union.ib_gid*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_move_grh_sgid_attr(%struct.rdma_ah_attr*, %union.ib_gid*, i32, i32, i32, %struct.ib_gid_attr*) #1

declare dso_local i32 @ib_resolve_unicast_gid_dmac(%struct.ib_device*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device*, %union.ib_gid*, i32, i32, i32*) #1

declare dso_local %struct.ib_gid_attr* @rdma_get_gid_attr(%struct.ib_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
