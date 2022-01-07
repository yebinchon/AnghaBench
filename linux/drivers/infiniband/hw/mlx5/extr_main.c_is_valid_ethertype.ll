; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_is_valid_ethertype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_is_valid_ethertype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.ib_flow_attr = type { i32 }
%union.ib_flow_spec = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ft_field_support = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IB_FLOW_SPEC_INNER = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_ETH = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_IPV4 = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@ETH_P_MPLS_UC = common dso_local global i64 0, align 8
@ETH_P_MPLS_MC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.ib_flow_attr*, i32)* @is_valid_ethertype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_ethertype(%struct.mlx5_core_dev* %0, %struct.ib_flow_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.ib_flow_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_flow_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %18, i64 1
  %20 = bitcast %struct.ib_flow_attr* %19 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %20, %union.ib_flow_spec** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ft_field_support, i32 0, i32 1), align 4
  %26 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %24, i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ft_field_support, i32 0, i32 0), align 4
  %30 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @IB_FLOW_SPEC_INNER, align 4
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %106, %38
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %109

46:                                               ; preds = %40
  %47 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %48 = bitcast %union.ib_flow_spec* %47 to i32*
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IB_FLOW_SPEC_ETH, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %56 = bitcast %union.ib_flow_spec* %55 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %63 = bitcast %union.ib_flow_spec* %62 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @htons(i32 65535)
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %15, align 4
  store i32 1, i32* %13, align 4
  %70 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %71 = bitcast %union.ib_flow_spec* %70 to %struct.TYPE_7__*
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ntohs(i32 %74)
  store i64 %75, i64* %16, align 8
  br label %97

76:                                               ; preds = %54, %46
  %77 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %78 = bitcast %union.ib_flow_spec* %77 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IB_FLOW_SPEC_IPV4, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %86 = bitcast %union.ib_flow_spec* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IB_FLOW_SPEC_IPV6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %88, %89
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84, %76
  %93 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %94 = bitcast %union.ib_flow_spec* %93 to i32*
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %92, %84
  br label %97

97:                                               ; preds = %96, %61
  %98 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %99 = bitcast %union.ib_flow_spec* %98 to i8*
  %100 = load %union.ib_flow_spec*, %union.ib_flow_spec** %7, align 8
  %101 = bitcast %union.ib_flow_spec* %100 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %99, i64 %103
  %105 = bitcast i8* %104 to %union.ib_flow_spec*
  store %union.ib_flow_spec* %105, %union.ib_flow_spec** %7, align 8
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %40

109:                                              ; preds = %40
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ true, %109 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %170, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %170

124:                                              ; preds = %121
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @ETH_P_IP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @IB_FLOW_SPEC_IPV4, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %130, %131
  %133 = icmp eq i32 %129, %132
  br label %134

134:                                              ; preds = %128, %124
  %135 = phi i1 [ false, %124 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %10, align 4
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @ETH_P_IPV6, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @IB_FLOW_SPEC_IPV6, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %142, %143
  %145 = icmp eq i32 %141, %144
  br label %146

146:                                              ; preds = %140, %134
  %147 = phi i1 [ false, %134 ], [ %145, %140 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* @ETH_P_MPLS_UC, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* @ETH_P_MPLS_MC, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br label %165

165:                                              ; preds = %162, %158
  %166 = phi i1 [ false, %158 ], [ %164, %162 ]
  br label %167

167:                                              ; preds = %165, %151, %146
  %168 = phi i1 [ true, %151 ], [ true, %146 ], [ %166, %165 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %167, %121, %116
  %171 = load i32, i32* %17, align 4
  ret i32 %171
}

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
