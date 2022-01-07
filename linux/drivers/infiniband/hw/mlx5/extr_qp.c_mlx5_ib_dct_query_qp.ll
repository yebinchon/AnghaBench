; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_dct_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_dct_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_core_dct }
%struct.mlx5_core_dct = type { i32 }
%struct.ib_qp_attr = type { i8*, i8*, %struct.TYPE_6__, i8*, i8*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.ib_qp_init_attr = type { i32 }

@query_dct_out = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dct_context_entry = common dso_local global i32 0, align 4
@rre = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@rwe = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@rae = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@min_rnr_nak = common dso_local global i32 0, align 4
@tclass = common dso_local global i32 0, align 4
@flow_label = common dso_local global i32 0, align 4
@my_addr_index = common dso_local global i32 0, align 4
@hop_limit = common dso_local global i32 0, align 4
@mtu = common dso_local global i32 0, align 4
@pkey_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @mlx5_ib_dct_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_dct_query_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.ib_qp_attr* %2, i32 %3, %struct.ib_qp_init_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.ib_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_qp_init_attr*, align 8
  %12 = alloca %struct.mlx5_core_dct*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %8, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ib_qp_init_attr* %4, %struct.ib_qp_init_attr** %11, align 8
  %19 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.mlx5_core_dct* %21, %struct.mlx5_core_dct** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @query_dct_out, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @IB_QP_STATE, align 4
  %25 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IB_QP_PORT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IB_QP_AV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %18, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %217

45:                                               ; preds = %5
  %46 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IB_QPS_RTR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %217

54:                                               ; preds = %45
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i32 %55, i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %217

63:                                               ; preds = %54
  %64 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx5_core_dct*, %struct.mlx5_core_dct** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @mlx5_core_dct_query(i32 %66, %struct.mlx5_core_dct* %67, i32* %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %213

74:                                               ; preds = %63
  %75 = load i32, i32* @query_dct_out, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* @dct_context_entry, align 4
  %78 = call i8* @MLX5_ADDR_OF(i32 %75, i32* %76, i32 %77)
  store i8* %78, i8** %16, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @IB_QP_STATE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i64, i64* @IB_QPS_RTR, align 8
  %85 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %87
  %93 = load i8*, i8** %16, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* @rre, align 4
  %96 = call i8* @MLX5_GET(i8* %93, i8* %94, i32 %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i8*, i8** %16, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* @rwe, align 4
  %106 = call i8* @MLX5_GET(i8* %103, i8* %104, i32 %105)
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i8*, i8** %16, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* @rae, align 4
  %116 = call i8* @MLX5_GET(i8* %113, i8* %114, i32 %115)
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %87
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @IB_QP_PORT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i8*, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* @port, align 4
  %135 = call i8* @MLX5_GET(i8* %132, i8* %133, i32 %134)
  %136 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %137 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %131, %126
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i8*, i8** %16, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = load i32, i32* @min_rnr_nak, align 4
  %147 = call i8* @MLX5_GET(i8* %144, i8* %145, i32 %146)
  %148 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %149 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %143, %138
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @IB_QP_AV, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %188

155:                                              ; preds = %150
  %156 = load i8*, i8** %16, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load i32, i32* @tclass, align 4
  %159 = call i8* @MLX5_GET(i8* %156, i8* %157, i32 %158)
  %160 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %161 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 3
  store i8* %159, i8** %163, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load i32, i32* @flow_label, align 4
  %167 = call i8* @MLX5_GET(i8* %164, i8* %165, i32 %166)
  %168 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %169 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store i8* %167, i8** %171, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = load i32, i32* @my_addr_index, align 4
  %175 = call i8* @MLX5_GET(i8* %172, i8* %173, i32 %174)
  %176 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %177 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i8* %175, i8** %179, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load i32, i32* @hop_limit, align 4
  %183 = call i8* @MLX5_GET(i8* %180, i8* %181, i32 %182)
  %184 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %185 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  br label %188

188:                                              ; preds = %155, %150
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i8*, i8** %16, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = load i32, i32* @mtu, align 4
  %197 = call i8* @MLX5_GET(i8* %194, i8* %195, i32 %196)
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %199 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %193, %188
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i8*, i8** %16, align 8
  %207 = load i8*, i8** %16, align 8
  %208 = load i32, i32* @pkey_index, align 4
  %209 = call i8* @MLX5_GET(i8* %206, i8* %207, i32 %208)
  %210 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %9, align 8
  %211 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  br label %212

212:                                              ; preds = %205, %200
  br label %213

213:                                              ; preds = %212, %73
  %214 = load i32*, i32** %13, align 8
  %215 = call i32 @kfree(i32* %214)
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %213, %60, %51, %42
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_dct_query(i32, %struct.mlx5_core_dct*, i32*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i8* @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
