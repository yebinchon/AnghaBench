; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_hca_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_hca_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_hca_vport_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gid_table_size = common dso_local global i32 0, align 4
@log_max_msg = common dso_local global i32 0, align 4
@pkey_table_size = common dso_local global i32 0, align 4
@IB_PORT_CAP_MASK2_SUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @mlx5_query_hca_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_hca_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_hca_vport_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %16 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx5_ib_dev* %16, %struct.mlx5_ib_dev** %7, align 8
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mlx5_hca_vport_context* @kzalloc(i32 48, i32 %20)
  store %struct.mlx5_hca_vport_context* %21, %struct.mlx5_hca_vport_context** %9, align 8
  %22 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %23 = icmp ne %struct.mlx5_hca_vport_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %169

27:                                               ; preds = %3
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %31 = call i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev* %28, i32 0, i32 %29, i32 0, %struct.mlx5_hca_vport_context* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %169

35:                                               ; preds = %27
  %36 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %40 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %39, i32 0, i32 19
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %44, i32 0, i32 18
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %47 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %49, i32 0, i32 17
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %52 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %55 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %54, i32 0, i32 16
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %67 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %72 = load i32, i32* @gid_table_size, align 4
  %73 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %71, i32 %72)
  %74 = call i32 @mlx5_get_gid_table_len(i32 %73)
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %78 = load i32, i32* @log_max_msg, align 4
  %79 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %77, i32 %78)
  %80 = shl i32 1, %79
  %81 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %84 = load i32, i32* @pkey_table_size, align 4
  %85 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %83, i32 %84)
  %86 = call i32 @mlx5_to_sw_pkey_sz(i32 %85)
  %87 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %87, i32 0, i32 12
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %90 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %95 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %97, i32 0, i32 10
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %100 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %103 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %105 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IB_PORT_CAP_MASK2_SUP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %35
  %116 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %117 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %115, %35
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @mlx5_query_port_link_width_oper(%struct.mlx5_core_dev* %122, i32* %13, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %169

128:                                              ; preds = %121
  %129 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %131, i32 0, i32 6
  %133 = call i32 @translate_active_width(%struct.ib_device* %129, i32 %130, i32* %132)
  %134 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %135 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %135, i32 0, i32 5
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mlx5_query_port_ib_proto_oper(%struct.mlx5_core_dev* %134, i32* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %169

142:                                              ; preds = %128
  %143 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @mlx5_query_port_max_mtu(%struct.mlx5_core_dev* %143, i32* %10, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = call i8* @mlx5_mtu_to_ib_mtu(i32 %146)
  %148 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  %150 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev* %150, i32* %11, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = call i8* @mlx5_mtu_to_ib_mtu(i32 %153)
  %155 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @mlx5_query_port_vl_hw_cap(%struct.mlx5_core_dev* %157, i32* %14, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %142
  br label %169

163:                                              ; preds = %142
  %164 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %167 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %166, i32 0, i32 2
  %168 = call i32 @translate_max_vl_num(%struct.ib_device* %164, i32 %165, i32* %167)
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %163, %162, %141, %127, %34, %24
  %170 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %9, align 8
  %171 = call i32 @kfree(%struct.mlx5_hca_vport_context* %170)
  %172 = load i32, i32* %12, align 4
  ret i32 %172
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx5_hca_vport_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_query_hca_vport_context(%struct.mlx5_core_dev*, i32, i32, i32, %struct.mlx5_hca_vport_context*) #1

declare dso_local i32 @mlx5_get_gid_table_len(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i32 @mlx5_query_port_link_width_oper(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @translate_active_width(%struct.ib_device*, i32, i32*) #1

declare dso_local i32 @mlx5_query_port_ib_proto_oper(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @mlx5_query_port_max_mtu(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i8* @mlx5_mtu_to_ib_mtu(i32) #1

declare dso_local i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @mlx5_query_port_vl_hw_cap(%struct.mlx5_core_dev*, i32*, i32) #1

declare dso_local i32 @translate_max_vl_num(%struct.ib_device*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_hca_vport_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
