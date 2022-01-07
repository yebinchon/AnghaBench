; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_update_qps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_update_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32*, i32, %struct.mlx4_ib_qp**, %struct.TYPE_4__ }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.net_device = type { i32 }
%struct.mlx4_update_qp_params = type { i32 }

@MLX4_IB_INVALID_MAC = common dso_local global i64 0, align 8
@dev_base_lock = common dso_local global i32 0, align 4
@MLX4_UPDATE_QP_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, %struct.net_device*, i32)* @mlx4_ib_update_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_update_qps(%struct.mlx4_ib_dev* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx4_update_qp_params, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load i64, i64* @MLX4_IB_INVALID_MAC, align 8
  store i64 %13, i64* %8, align 8
  %14 = call i32 @read_lock(i32* @dev_base_lock)
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mlx4_mac_to_u64(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = call i32 @read_unlock(i32* @dev_base_lock)
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @atomic64_set(i32* %27, i64 %28)
  %30 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx4_is_mfunc(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %141

36:                                               ; preds = %3
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %45, i32 0, i32 2
  %47 = load %struct.mlx4_ib_qp**, %struct.mlx4_ib_qp*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %47, i64 %50
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %51, align 8
  store %struct.mlx4_ib_qp* %52, %struct.mlx4_ib_qp** %9, align 8
  %53 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %54 = icmp ne %struct.mlx4_ib_qp* %53, null
  br i1 %54, label %55, label %113

55:                                               ; preds = %36
  %56 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %114

67:                                               ; preds = %55
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @mlx4_register_mac(i32 %70, i32 %71, i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %114

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %12, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MLX4_UPDATE_QP_SMAC, align 4
  %88 = call i64 @mlx4_update_qp(i32 %82, i32 %86, i32 %87, %struct.mlx4_update_qp_params* %12)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %8, align 8
  br label %114

92:                                               ; preds = %77
  %93 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %98, %92
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %100, %36
  br label %114

114:                                              ; preds = %113, %90, %76, %66
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @MLX4_IB_INVALID_MAC, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %120 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @mlx4_unregister_mac(i32 %121, i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %118, %114
  %126 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %127 = icmp ne %struct.mlx4_ib_qp* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  br label %132

132:                                              ; preds = %128, %125
  %133 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %141

141:                                              ; preds = %132, %35
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @mlx4_mac_to_u64(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_register_mac(i32, i32, i64) #1

declare dso_local i64 @mlx4_update_qp(i32, i32, i32, %struct.mlx4_update_qp_params*) #1

declare dso_local i32 @mlx4_unregister_mac(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
