; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_raw_packet_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_raw_packet_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { i32, %struct.mlx5_flow_handle* }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_ib_rq = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32, i32, i32 }

@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_ERR = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_ERR = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_RAW_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_modify_raw_qp_param*, i32)* @modify_raw_packet_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.mlx5_modify_raw_qp_param* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca %struct.mlx5_modify_raw_qp_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %11 = alloca %struct.mlx5_ib_rq*, align 8
  %12 = alloca %struct.mlx5_ib_sq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_flow_handle*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %7, align 8
  store %struct.mlx5_modify_raw_qp_param* %2, %struct.mlx5_modify_raw_qp_param** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %19, i32 0, i32 3
  store %struct.mlx5_ib_raw_packet_qp* %20, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %21 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %21, i32 0, i32 1
  store %struct.mlx5_ib_rq* %22, %struct.mlx5_ib_rq** %11, align 8
  %23 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %23, i32 0, i32 0
  store %struct.mlx5_ib_sq* %24, %struct.mlx5_ib_sq** %12, align 8
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %84 [
    i32 130, label %44
    i32 134, label %47
    i32 133, label %50
    i32 129, label %53
    i32 128, label %53
    i32 132, label %75
    i32 131, label %75
  ]

44:                                               ; preds = %4
  %45 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  store i32 %46, i32* %16, align 4
  br label %88

47:                                               ; preds = %4
  %48 = load i32, i32* @MLX5_RQC_STATE_ERR, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @MLX5_SQC_STATE_ERR, align 4
  store i32 %49, i32* %16, align 4
  br label %88

50:                                               ; preds = %4
  %51 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  store i32 %52, i32* %16, align 4
  br label %88

53:                                               ; preds = %4, %4
  %54 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX5_RAW_QP_RATE_LIMIT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  %60 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %16, align 4
  br label %74

63:                                               ; preds = %53
  %64 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %65 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i32 [ %70, %68 ], [ 0, %71 ]
  store i32 %73, i32* %5, align 4
  br label %175

74:                                               ; preds = %59
  br label %88

75:                                               ; preds = %4, %4
  %76 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %77 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %175

83:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %175

84:                                               ; preds = %4
  %85 = call i32 @WARN_ON(i32 1)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %175

88:                                               ; preds = %74, %50, %47, %44
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %93 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %96 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev* %92, %struct.mlx5_ib_rq* %93, i32 %94, %struct.mlx5_modify_raw_qp_param* %95, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %5, align 4
  br label %175

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %174

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %114 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @modify_raw_packet_tx_affinity(i32 %115, %struct.mlx5_ib_sq* %116, i32 %117, i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %5, align 4
  br label %175

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %130 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %131 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %132 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.mlx5_flow_handle* @create_flow_rule_vport_sq(%struct.mlx5_ib_dev* %129, %struct.mlx5_ib_sq* %130, i32 %133)
  store %struct.mlx5_flow_handle* %134, %struct.mlx5_flow_handle** %18, align 8
  %135 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %136 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %140 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %139)
  store i32 %140, i32* %5, align 4
  br label %175

141:                                              ; preds = %128
  %142 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %143 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %8, align 8
  %148 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %149 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @modify_raw_packet_qp_sq(i32 %144, %struct.mlx5_ib_sq* %145, i32 %146, %struct.mlx5_modify_raw_qp_param* %147, i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %141
  %156 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %157 = icmp ne %struct.mlx5_flow_handle* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %160 = call i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %5, align 4
  br label %175

163:                                              ; preds = %141
  %164 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %165 = icmp ne %struct.mlx5_flow_handle* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %168 = call i32 @destroy_flow_rule_vport_sq(%struct.mlx5_ib_sq* %167)
  %169 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %18, align 8
  %170 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %12, align 8
  %171 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %170, i32 0, i32 1
  store %struct.mlx5_flow_handle* %169, %struct.mlx5_flow_handle** %171, align 8
  br label %172

172:                                              ; preds = %166, %163
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %5, align 4
  br label %175

174:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %174, %172, %161, %138, %125, %103, %84, %83, %80, %72
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.mlx5_modify_raw_qp_param*, i32) #1

declare dso_local i32 @modify_raw_packet_tx_affinity(i32, %struct.mlx5_ib_sq*, i32, i32) #1

declare dso_local %struct.mlx5_flow_handle* @create_flow_rule_vport_sq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @modify_raw_packet_qp_sq(i32, %struct.mlx5_ib_sq*, i32, %struct.mlx5_modify_raw_qp_param*, i32) #1

declare dso_local i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @destroy_flow_rule_vport_sq(%struct.mlx5_ib_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
