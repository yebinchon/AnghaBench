; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MLX5_IB_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MLX5_IB_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CONG_MGMT = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  %18 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %19 = icmp ne %struct.ib_wc* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ib_lid_cpu16(i32 %23)
  br label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %27 = call i64 @be16_to_cpu(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i64 [ %24, %20 ], [ %27, %25 ]
  store i64 %29, i64* %16, align 8
  %30 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %31 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* %16, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %41 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %186

43:                                               ; preds = %36, %28
  %44 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %45 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %50, %43
  %58 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %59 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %66 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %73 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %79, i32* %8, align 4
  br label %186

80:                                               ; preds = %71, %64, %57
  %81 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %82 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IB_SMP_ATTR_SM_INFO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %88, i32* %8, align 4
  br label %186

89:                                               ; preds = %80
  br label %138

90:                                               ; preds = %50
  %91 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %92 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %118, label %97

97:                                               ; preds = %90
  %98 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %99 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MLX5_IB_VENDOR_CLASS1, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %97
  %105 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %106 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MLX5_IB_VENDOR_CLASS2, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %113 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IB_MGMT_CLASS_CONG_MGMT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %111, %104, %97, %90
  %119 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %120 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %127 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %133, i32* %8, align 4
  br label %186

134:                                              ; preds = %125, %118
  br label %137

135:                                              ; preds = %111
  %136 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %136, i32* %8, align 4
  br label %186

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %89
  %139 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %140 = call i32 @to_mdev(%struct.ib_device* %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %149 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %150 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %151 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %152 = call i32 @mlx5_MAD_IFC(i32 %140, i32 %143, i32 %146, i32 %147, %struct.ib_wc* %148, %struct.ib_grh* %149, %struct.ib_mad* %150, %struct.ib_mad* %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %138
  %156 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %156, i32* %8, align 4
  br label %186

157:                                              ; preds = %138
  %158 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %159 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = call i32 @cpu_to_be16(i32 32768)
  %166 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %167 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %157
  %172 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %173 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %180 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %8, align 4
  br label %186

182:                                              ; preds = %171
  %183 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %184 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %182, %178, %155, %135, %132, %87, %78, %39
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i64 @ib_lid_cpu16(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(i32, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
