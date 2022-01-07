; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_init_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_init_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32, %struct.TYPE_12__, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__*, %struct.mlx5_core_dev* }
%struct.TYPE_12__ = type { %struct.mlx5_core_dev*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.mlx5_ib_dev*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@IB_PORT_DOWN = common dso_local global i32 0, align 4
@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@CONFIG_INFINIBAND_ON_DEMAND_PAGING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_init_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_stage_init_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %63, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 7
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = call i32 @rwlock_init(i32* %33)
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 7
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store %struct.mlx5_ib_dev* %35, %struct.mlx5_ib_dev** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %46, i32 0, i32 7
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %45, i32* %53, align 8
  %54 = load i32, i32* @IB_PORT_DOWN, align 4
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %55, i32 0, i32 7
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %54, i32* %62, align 4
  br label %63

63:                                               ; preds = %16
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %10

66:                                               ; preds = %10
  %67 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %68 = call i32 @mlx5_ib_internal_fill_odp_caps(%struct.mlx5_ib_dev* %67)
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %70 = call i32 @mlx5_ib_init_multiport_master(%struct.mlx5_ib_dev* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %181

75:                                               ; preds = %66
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %77 = call i32 @set_has_smi_cap(%struct.mlx5_ib_dev* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %181

82:                                               ; preds = %75
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %84 = call i32 @mlx5_core_mp_enabled(%struct.mlx5_core_dev* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %101, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @get_port_caps(%struct.mlx5_ib_dev* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %104

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %87

104:                                              ; preds = %99, %87
  br label %110

105:                                              ; preds = %82
  %106 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %107 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %108 = call i32 @mlx5_core_native_port_num(%struct.mlx5_core_dev* %107)
  %109 = call i32 @get_port_caps(%struct.mlx5_ib_dev* %106, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %176

114:                                              ; preds = %110
  %115 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %116 = call i64 @mlx5_use_mad_ifc(%struct.mlx5_ib_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %120 = call i32 @get_ext_port_caps(%struct.mlx5_ib_dev* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %123 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  store i32 %122, i32* %125, align 8
  %126 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %133 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %136 = call i32 @mlx5_comp_vectors_count(%struct.mlx5_core_dev* %135)
  %137 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  %140 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %141 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %144 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  %147 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %148 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %147, i32 0, i32 5
  %149 = call i32 @mutex_init(i32* %148)
  %150 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %150, i32 0, i32 4
  %152 = call i32 @INIT_LIST_HEAD(i32* %151)
  %153 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %154 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %153, i32 0, i32 3
  %155 = call i32 @spin_lock_init(i32* %154)
  %156 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = call i32 @spin_lock_init(i32* %158)
  %160 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %161 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store %struct.mlx5_core_dev* %160, %struct.mlx5_core_dev** %163, align 8
  %164 = load i32, i32* @CONFIG_INFINIBAND_ON_DEMAND_PAGING, align 4
  %165 = call i64 @IS_ENABLED(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %121
  %168 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %168, i32 0, i32 1
  %170 = call i32 @init_srcu_struct(i32* %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %176

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %121
  store i32 0, i32* %2, align 4
  br label %181

176:                                              ; preds = %173, %113
  %177 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %178 = call i32 @mlx5_ib_cleanup_multiport_master(%struct.mlx5_ib_dev* %177)
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %176, %175, %80, %73
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @mlx5_ib_internal_fill_odp_caps(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_init_multiport_master(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @set_has_smi_cap(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_core_mp_enabled(%struct.mlx5_core_dev*) #1

declare dso_local i32 @get_port_caps(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_core_native_port_num(%struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5_use_mad_ifc(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @get_ext_port_caps(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_comp_vectors_count(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @mlx5_ib_cleanup_multiport_master(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
