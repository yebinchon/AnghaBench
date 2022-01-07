; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_internal_fill_odp_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_internal_fill_odp_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5_ib_dev = type { i32, i32, %struct.ib_odp_caps }
%struct.ib_odp_caps = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@pg = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT = common dso_local global i32 0, align 4
@umr_extended_translation_offset = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@MLX5_MAX_UMR_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ud_odp_caps = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IB_ODP_SUPPORT_SEND = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_SRQ_RECV = common dso_local global i32 0, align 4
@rc_odp_caps = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IB_ODP_SUPPORT_RECV = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_WRITE = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_READ = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_ATOMIC = common dso_local global i32 0, align 4
@xrc_odp_caps = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@fixed_buffer_size = common dso_local global i32 0, align 4
@null_mkey = common dso_local global i32 0, align 4
@umr_indirect_mkey_disabled = common dso_local global i32 0, align 4
@IB_ODP_SUPPORT_IMPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_internal_fill_odp_caps(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.ib_odp_caps*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %4 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %4, i32 0, i32 2
  store %struct.ib_odp_caps* %5, %struct.ib_odp_caps** %3, align 8
  %6 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %7 = call i32 @memset(%struct.ib_odp_caps* %6, i32 0, i32 16)
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @pg, align 4
  %12 = call i64 @MLX5_CAP_GEN(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %16 = call i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %1
  br label %271

19:                                               ; preds = %14
  %20 = load i32, i32* @IB_ODP_SUPPORT, align 4
  %21 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %22 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @umr_extended_translation_offset, align 4
  %27 = call i64 @MLX5_CAP_GEN(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @U64_MAX, align 4
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load i64, i64* @MLX5_MAX_UMR_SHIFT, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @BIT_ULL(i64 %36)
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ud_odp_caps, i32 0, i32 1), align 4
  %45 = call i64 @MLX5_CAP_ODP(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @IB_ODP_SUPPORT_SEND, align 4
  %49 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %50 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ud_odp_caps, i32 0, i32 0), align 4
  %59 = call i64 @MLX5_CAP_ODP(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i32, i32* @IB_ODP_SUPPORT_SRQ_RECV, align 4
  %63 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %64 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %54
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 5), align 4
  %73 = call i64 @MLX5_CAP_ODP(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* @IB_ODP_SUPPORT_SEND, align 4
  %77 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %78 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 4), align 4
  %87 = call i64 @MLX5_CAP_ODP(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32, i32* @IB_ODP_SUPPORT_RECV, align 4
  %91 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %92 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 3), align 4
  %101 = call i64 @MLX5_CAP_ODP(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load i32, i32* @IB_ODP_SUPPORT_WRITE, align 4
  %105 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %106 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %96
  %111 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 2), align 4
  %115 = call i64 @MLX5_CAP_ODP(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32, i32* @IB_ODP_SUPPORT_READ, align 4
  %119 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %120 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 1), align 4
  %129 = call i64 @MLX5_CAP_ODP(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load i32, i32* @IB_ODP_SUPPORT_ATOMIC, align 4
  %133 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %134 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %124
  %139 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %140 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rc_odp_caps, i32 0, i32 0), align 4
  %143 = call i64 @MLX5_CAP_ODP(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* @IB_ODP_SUPPORT_SRQ_RECV, align 4
  %147 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %148 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %154 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 5), align 4
  %157 = call i64 @MLX5_CAP_ODP(i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %152
  %160 = load i32, i32* @IB_ODP_SUPPORT_SEND, align 4
  %161 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %162 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %159, %152
  %167 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %168 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 4), align 4
  %171 = call i64 @MLX5_CAP_ODP(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load i32, i32* @IB_ODP_SUPPORT_RECV, align 4
  %175 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %176 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %173, %166
  %181 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %182 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 3), align 4
  %185 = call i64 @MLX5_CAP_ODP(i32 %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load i32, i32* @IB_ODP_SUPPORT_WRITE, align 4
  %189 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %190 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %187, %180
  %195 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %196 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 2), align 4
  %199 = call i64 @MLX5_CAP_ODP(i32 %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i32, i32* @IB_ODP_SUPPORT_READ, align 4
  %203 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %204 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %201, %194
  %209 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %210 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 1), align 4
  %213 = call i64 @MLX5_CAP_ODP(i32 %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load i32, i32* @IB_ODP_SUPPORT_ATOMIC, align 4
  %217 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %218 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %215, %208
  %223 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %224 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @xrc_odp_caps, i32 0, i32 0), align 4
  %227 = call i64 @MLX5_CAP_ODP(i32 %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %222
  %230 = load i32, i32* @IB_ODP_SUPPORT_SRQ_RECV, align 4
  %231 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %232 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %230
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %229, %222
  %237 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %238 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @fixed_buffer_size, align 4
  %241 = call i64 @MLX5_CAP_GEN(i32 %239, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %270

243:                                              ; preds = %236
  %244 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %245 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @null_mkey, align 4
  %248 = call i64 @MLX5_CAP_GEN(i32 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %243
  %251 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %252 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @umr_extended_translation_offset, align 4
  %255 = call i64 @MLX5_CAP_GEN(i32 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %250
  %258 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %259 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @umr_indirect_mkey_disabled, align 4
  %262 = call i64 @MLX5_CAP_GEN(i32 %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %257
  %265 = load i32, i32* @IB_ODP_SUPPORT_IMPLICIT, align 4
  %266 = load %struct.ib_odp_caps*, %struct.ib_odp_caps** %3, align 8
  %267 = getelementptr inbounds %struct.ib_odp_caps, %struct.ib_odp_caps* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %264, %257, %250, %243, %236
  br label %271

271:                                              ; preds = %270, %18
  ret void
}

declare dso_local i32 @memset(%struct.ib_odp_caps*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i64 @MLX5_CAP_ODP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
