; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_eth_link_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_eth_link_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__*, %struct.mlx4_ib_iboe }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.mlx4_ib_iboe = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_SPEED_FDR = common dso_local global i32 0, align 4
@IB_SPEED_QDR = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i8* null, align 8
@IB_MTU_256 = common dso_local global i8* null, align 8
@IB_PORT_ACTIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @eth_link_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_link_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_iboe*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %8, align 8
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 1
  store %struct.mlx4_ib_iboe* %18, %struct.mlx4_ib_iboe** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @mlx4_is_bonded(%struct.TYPE_7__* %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_7__* %25)
  store %struct.mlx4_cmd_mailbox* %26, %struct.mlx4_cmd_mailbox** %12, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %28 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %32 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %31)
  store i32 %32, i32* %4, align 4
  br label %207

33:                                               ; preds = %3
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %38 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %42 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %43 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %44 = call i32 @mlx4_cmd_box(%struct.TYPE_7__* %36, i32 0, i32 %39, i32 %40, i32 0, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %200

48:                                               ; preds = %33
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %50 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 64
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %58 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %48
  %65 = load i32, i32* @IB_WIDTH_4X, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @IB_WIDTH_1X, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %71 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %73 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @IB_SPEED_FDR, align 4
  br label %83

81:                                               ; preds = %68
  %82 = load i32, i32* @IB_SPEED_QDR, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %86 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @IB_PORT_CM_SUP, align 4
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %103 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %105 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %113 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* @IB_MTU_4096, align 4
  %115 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %116 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %118 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %117, i32 0, i32 2
  store i32 2, i32* %118, align 8
  %119 = load i8*, i8** @IB_PORT_DOWN, align 8
  %120 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %121 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %123 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @state_to_phys_state(i8* %124)
  %126 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %127 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @IB_MTU_256, align 8
  %129 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %130 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %9, align 8
  %132 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %131, i32 0, i32 0
  %133 = call i32 @spin_lock_bh(i32* %132)
  %134 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %9, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %134, i32 0, i32 1
  %136 = load %struct.net_device**, %struct.net_device*** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.net_device*, %struct.net_device** %136, i64 %139
  %141 = load %struct.net_device*, %struct.net_device** %140, align 8
  store %struct.net_device* %141, %struct.net_device** %10, align 8
  %142 = load %struct.net_device*, %struct.net_device** %10, align 8
  %143 = icmp ne %struct.net_device* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %83
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = call i32 (...) @rcu_read_lock()
  %149 = load %struct.net_device*, %struct.net_device** %10, align 8
  %150 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %149)
  store %struct.net_device* %150, %struct.net_device** %10, align 8
  %151 = call i32 (...) @rcu_read_unlock()
  br label %152

152:                                              ; preds = %147, %144, %83
  %153 = load %struct.net_device*, %struct.net_device** %10, align 8
  %154 = icmp ne %struct.net_device* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br label %196

156:                                              ; preds = %152
  %157 = load %struct.net_device*, %struct.net_device** %10, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @iboe_get_mtu(i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %165 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i8* @min(i32 %166, i32 %167)
  br label %171

169:                                              ; preds = %156
  %170 = load i8*, i8** @IB_MTU_256, align 8
  br label %171

171:                                              ; preds = %169, %163
  %172 = phi i8* [ %168, %163 ], [ %170, %169 ]
  %173 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %174 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load %struct.net_device*, %struct.net_device** %10, align 8
  %176 = call i64 @netif_running(%struct.net_device* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.net_device*, %struct.net_device** %10, align 8
  %180 = call i64 @netif_carrier_ok(%struct.net_device* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i8*, i8** @IB_PORT_ACTIVE, align 8
  br label %186

184:                                              ; preds = %178, %171
  %185 = load i8*, i8** @IB_PORT_DOWN, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i8* [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %189 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %191 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @state_to_phys_state(i8* %192)
  %194 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %195 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %186, %155
  %197 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %9, align 8
  %198 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %197, i32 0, i32 0
  %199 = call i32 @spin_unlock_bh(i32* %198)
  br label %200

200:                                              ; preds = %196, %47
  %201 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %205 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_7__* %203, %struct.mlx4_cmd_mailbox* %204)
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %200, %30
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_is_bonded(%struct.TYPE_7__*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @state_to_phys_state(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_7__*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
