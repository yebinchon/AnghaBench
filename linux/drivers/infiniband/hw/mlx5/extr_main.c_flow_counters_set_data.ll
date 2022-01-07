; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_flow_counters_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_flow_counters_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_counters = type { i32 }
%struct.mlx5_ib_create_flow = type { i64, %struct.mlx5_ib_flow_counters_data* }
%struct.mlx5_ib_flow_counters_data = type { i32, i32 }
%struct.mlx5_ib_mcounters = type { i32*, i64 }
%struct.mlx5_ib_flow_counters_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_COUNTERS_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MLX5_IB_COUNTERS_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_counters*, %struct.mlx5_ib_create_flow*)* @flow_counters_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_counters_set_data(%struct.ib_counters* %0, %struct.mlx5_ib_create_flow* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_counters*, align 8
  %5 = alloca %struct.mlx5_ib_create_flow*, align 8
  %6 = alloca %struct.mlx5_ib_mcounters*, align 8
  %7 = alloca %struct.mlx5_ib_flow_counters_data*, align 8
  %8 = alloca %struct.mlx5_ib_flow_counters_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_counters* %0, %struct.ib_counters** %4, align 8
  store %struct.mlx5_ib_create_flow* %1, %struct.mlx5_ib_create_flow** %5, align 8
  %11 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %12 = call %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters* %11)
  store %struct.mlx5_ib_mcounters* %12, %struct.mlx5_ib_mcounters** %6, align 8
  store %struct.mlx5_ib_flow_counters_data* null, %struct.mlx5_ib_flow_counters_data** %7, align 8
  store %struct.mlx5_ib_flow_counters_desc* null, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mlx5_ib_create_flow*, %struct.mlx5_ib_create_flow** %5, align 8
  %14 = icmp ne %struct.mlx5_ib_create_flow* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.mlx5_ib_create_flow*, %struct.mlx5_ib_create_flow** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_create_flow, %struct.mlx5_ib_create_flow* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %15
  %21 = load %struct.mlx5_ib_create_flow*, %struct.mlx5_ib_create_flow** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_create_flow, %struct.mlx5_ib_create_flow* %21, i32 0, i32 1
  %23 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %22, align 8
  store %struct.mlx5_ib_flow_counters_data* %23, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %24 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, %struct.mlx5_ib_flow_counters_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_COUNTERS_NUM, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %141

32:                                               ; preds = %20
  %33 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, %struct.mlx5_ib_flow_counters_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlx5_ib_flow_counters_desc* @kcalloc(i32 %35, i32 4, i32 %36)
  store %struct.mlx5_ib_flow_counters_desc* %37, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %38 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %39 = icmp ne %struct.mlx5_ib_flow_counters_desc* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %141

43:                                               ; preds = %32
  %44 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %45 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, %struct.mlx5_ib_flow_counters_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @u64_to_user_ptr(i32 %47)
  %49 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, %struct.mlx5_ib_flow_counters_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @copy_from_user(%struct.mlx5_ib_flow_counters_desc* %44, i32 %48, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %137

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %15, %2
  %62 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %61
  %67 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %68 = getelementptr inbounds %struct.ib_counters, %struct.ib_counters* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_2__* @to_mdev(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @mlx5_fc_create(i32 %72, i32 0)
  %74 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %10, align 4
  br label %137

86:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %61
  %88 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %89 = icmp ne %struct.mlx5_ib_flow_counters_desc* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %120

98:                                               ; preds = %90
  %99 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %100 = load i32, i32* @MLX5_IB_COUNTERS_FLOW, align 4
  %101 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %102 = load %struct.mlx5_ib_flow_counters_data*, %struct.mlx5_ib_flow_counters_data** %7, align 8
  %103 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, %struct.mlx5_ib_flow_counters_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @counters_set_description(%struct.ib_counters* %99, i32 %100, %struct.mlx5_ib_flow_counters_desc* %101, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %120

109:                                              ; preds = %98
  br label %119

110:                                              ; preds = %87
  %111 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %120

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %109
  store i32 0, i32* %3, align 4
  br label %141

120:                                              ; preds = %115, %108, %95
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %125 = getelementptr inbounds %struct.ib_counters, %struct.ib_counters* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.TYPE_2__* @to_mdev(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %131 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @mlx5_fc_destroy(i32 %129, i32* %132)
  %134 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %6, align 8
  %135 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %123, %120
  br label %137

137:                                              ; preds = %136, %81, %57
  %138 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %139 = call i32 @kfree(%struct.mlx5_ib_flow_counters_desc* %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %119, %40, %29
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters*) #1

declare dso_local %struct.mlx5_ib_flow_counters_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.mlx5_ib_flow_counters_desc*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32* @mlx5_fc_create(i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @counters_set_description(%struct.ib_counters*, i32, %struct.mlx5_ib_flow_counters_desc*, i32) #1

declare dso_local i32 @mlx5_fc_destroy(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_counters_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
