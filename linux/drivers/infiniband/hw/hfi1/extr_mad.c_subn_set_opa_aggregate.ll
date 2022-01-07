; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_set_opa_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_subn_set_opa_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32, i32 }
%struct.ib_device = type { i32 }
%struct.opa_aggregate = type { i32, i32, i32, i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_SMP_DIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, %struct.ib_device*, i32, i32*, i32)* @subn_set_opa_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_set_opa_aggregate(%struct.opa_smp* %0, %struct.ib_device* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.opa_smp*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.opa_aggregate*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.opa_smp* %0, %struct.opa_smp** %7, align 8
  store %struct.ib_device* %1, %struct.ib_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %20 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = and i32 %22, 255
  store i32 %23, i32* %13, align 4
  %24 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %25 = call i32* @opa_get_smp_data(%struct.opa_smp* %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 117
  br i1 %30, label %31, label %40

31:                                               ; preds = %28, %5
  %32 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %33 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %34 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %38 = bitcast %struct.opa_smp* %37 to %struct.ib_mad_hdr*
  %39 = call i32 @reply(%struct.ib_mad_hdr* %38)
  store i32 %39, i32* %6, align 4
  br label %130

40:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %123, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = bitcast i32* %46 to %struct.opa_aggregate*
  store %struct.opa_aggregate* %47, %struct.opa_aggregate** %15, align 8
  %48 = load %struct.opa_aggregate*, %struct.opa_aggregate** %15, align 8
  %49 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = and i32 %51, 127
  %53 = mul nsw i32 %52, 8
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = add i64 16, %55
  store i64 %56, i64* %17, align 8
  %57 = load %struct.opa_aggregate*, %struct.opa_aggregate** %15, align 8
  %58 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i64, i64* %17, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %61
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %17, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %71 = bitcast %struct.opa_smp* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = icmp ugt i32* %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %45
  %75 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %76 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %77 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %81 = bitcast %struct.opa_smp* %80 to %struct.ib_mad_hdr*
  %82 = call i32 @reply(%struct.ib_mad_hdr* %81)
  store i32 %82, i32* %6, align 4
  br label %130

83:                                               ; preds = %45
  %84 = load %struct.opa_aggregate*, %struct.opa_aggregate** %15, align 8
  %85 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.opa_aggregate*, %struct.opa_aggregate** %15, align 8
  %90 = getelementptr inbounds %struct.opa_aggregate, %struct.opa_aggregate* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i64, i64* %16, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @subn_set_opa_sma(i32 %86, %struct.opa_smp* %87, i32 %88, i32 %91, %struct.ib_device* %92, i32 %93, i32* null, i32 %95, i32 %96)
  %98 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %99 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %83
  br label %126

105:                                              ; preds = %83
  %106 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %107 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IB_SMP_DIRECTION, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.opa_aggregate*, %struct.opa_aggregate** %15, align 8
  %115 = call i32 @set_aggr_error(%struct.opa_aggregate* %114)
  %116 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %117 = bitcast %struct.opa_smp* %116 to %struct.ib_mad_hdr*
  %118 = call i32 @reply(%struct.ib_mad_hdr* %117)
  store i32 %118, i32* %6, align 4
  br label %130

119:                                              ; preds = %105
  %120 = load i64, i64* %17, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %14, align 8
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %41

126:                                              ; preds = %104, %41
  %127 = load %struct.opa_smp*, %struct.opa_smp** %7, align 8
  %128 = bitcast %struct.opa_smp* %127 to %struct.ib_mad_hdr*
  %129 = call i32 @reply(%struct.ib_mad_hdr* %128)
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %113, %74, %31
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32* @opa_get_smp_data(%struct.opa_smp*) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @subn_set_opa_sma(i32, %struct.opa_smp*, i32, i32, %struct.ib_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @set_aggr_error(%struct.opa_aggregate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
