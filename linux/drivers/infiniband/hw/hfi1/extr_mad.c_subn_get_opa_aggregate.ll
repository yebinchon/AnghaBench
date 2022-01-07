; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_opa_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_get_opa_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.opa_aggregate = type { i32, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_SMP_DIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, %struct.ib_device*, i32, i32*)* @subn_get_opa_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_opa_aggregate(%struct.opa_smp* %0, %struct.ib_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.opa_smp*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.opa_aggregate*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %18 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = and i32 %20, 255
  store i32 %21, i32* %11, align 4
  %22 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %23 = call i32* @opa_get_smp_data(%struct.opa_smp* %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 117
  br i1 %28, label %29, label %38

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %31 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %32 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %36 = bitcast %struct.opa_smp* %35 to %struct.ib_mad_hdr*
  %37 = call i32 @reply(%struct.ib_mad_hdr* %36)
  store i32 %37, i32* %5, align 4
  br label %131

38:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %124, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %127

43:                                               ; preds = %39
  %44 = load i32*, i32** %12, align 8
  %45 = bitcast i32* %44 to %struct.opa_aggregate*
  store %struct.opa_aggregate* %45, %struct.opa_aggregate** %13, align 8
  %46 = load %struct.opa_aggregate*, %struct.opa_aggregate** %13, align 8
  %47 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = and i32 %49, 127
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = add i64 16, %53
  store i64 %54, i64* %15, align 8
  %55 = load %struct.opa_aggregate*, %struct.opa_aggregate** %13, align 8
  %56 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i64, i64* %15, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %59
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %69 = bitcast %struct.opa_smp* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = icmp ugt i32* %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %43
  %73 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %74 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %75 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %79 = bitcast %struct.opa_smp* %78 to %struct.ib_mad_hdr*
  %80 = call i32 @reply(%struct.ib_mad_hdr* %79)
  store i32 %80, i32* %5, align 4
  br label %131

81:                                               ; preds = %43
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 16
  %84 = load i64, i64* %14, align 8
  %85 = call i32 @memset(i32* %83, i32 0, i64 %84)
  %86 = load %struct.opa_aggregate*, %struct.opa_aggregate** %13, align 8
  %87 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.opa_aggregate*, %struct.opa_aggregate** %13, align 8
  %92 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i64, i64* %14, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @subn_get_opa_sma(i32 %88, %struct.opa_smp* %89, i32 %90, i32 %93, %struct.ib_device* %94, i32 %95, i32* null, i32 %97)
  %99 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %100 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %81
  br label %127

106:                                              ; preds = %81
  %107 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %108 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IB_SMP_DIRECTION, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.opa_aggregate*, %struct.opa_aggregate** %13, align 8
  %116 = call i32 @set_aggr_error(%struct.opa_aggregate* %115)
  %117 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %118 = bitcast %struct.opa_smp* %117 to %struct.ib_mad_hdr*
  %119 = call i32 @reply(%struct.ib_mad_hdr* %118)
  store i32 %119, i32* %5, align 4
  br label %131

120:                                              ; preds = %106
  %121 = load i64, i64* %15, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 %121
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %39

127:                                              ; preds = %105, %39
  %128 = load %struct.opa_smp*, %struct.opa_smp** %6, align 8
  %129 = bitcast %struct.opa_smp* %128 to %struct.ib_mad_hdr*
  %130 = call i32 @reply(%struct.ib_mad_hdr* %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %114, %72, %29
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32* @opa_get_smp_data(%struct.opa_smp*) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @subn_get_opa_sma(i32, %struct.opa_smp*, i32, i32, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @set_aggr_error(%struct.opa_aggregate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
