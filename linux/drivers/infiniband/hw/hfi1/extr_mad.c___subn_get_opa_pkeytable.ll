; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_pkeytable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_get_opa_pkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_smp = type { i32 }
%struct.ib_device = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"OPA Get PKey AM Invalid : P = %d; B = 0x%x; N = 0x%x\0A\00", align 1
@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@OPA_PARTITION_TABLE_BLK_SIZE = common dso_local global i32 0, align 4
@OPA_NUM_PKEY_BLOCKS_PER_SMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"OPA Get PKey AM Invalid : s 0x%x; req 0x%x; avail 0x%x; blk/smp 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_get_opa_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_get_opa_pkeytable(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.opa_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hfi1_devdata*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.opa_smp* %0, %struct.opa_smp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store %struct.ib_device* %3, %struct.ib_device** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %26 = call %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device* %25)
  store %struct.hfi1_devdata* %26, %struct.hfi1_devdata** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @OPA_AM_NBLK(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 2047
  store i32 %30, i32* %18, align 4
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %32 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %31)
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %7
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %41 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %42 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %46 = bitcast %struct.opa_smp* %45 to %struct.ib_mad_hdr*
  %47 = call i32 @reply(%struct.ib_mad_hdr* %46)
  store i32 %47, i32* %8, align 4
  br label %144

48:                                               ; preds = %7
  %49 = load i32, i32* %23, align 4
  %50 = load i32, i32* @OPA_PARTITION_TABLE_BLK_SIZE, align 4
  %51 = udiv i32 %49, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @OPA_PARTITION_TABLE_BLK_SIZE, align 4
  %55 = mul i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 4
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @smp_length_check(i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %48
  %63 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %64 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %65 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %69 = bitcast %struct.opa_smp* %68 to %struct.ib_mad_hdr*
  %70 = call i32 @reply(%struct.ib_mad_hdr* %69)
  store i32 %70, i32* %8, align 4
  br label %144

71:                                               ; preds = %48
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %22, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @OPA_NUM_PKEY_BLOCKS_PER_SMP, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77, %71
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* @OPA_NUM_PKEY_BLOCKS_PER_SMP, align 4
  %86 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %88 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %89 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %93 = bitcast %struct.opa_smp* %92 to %struct.ib_mad_hdr*
  %94 = call i32 @reply(%struct.ib_mad_hdr* %93)
  store i32 %94, i32* %8, align 4
  br label %144

95:                                               ; preds = %77
  %96 = load i32*, i32** %11, align 8
  store i32* %96, i32** %19, align 8
  %97 = load i32*, i32** %11, align 8
  store i32* %97, i32** %20, align 8
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %134

100:                                              ; preds = %95
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @get_pkeys(%struct.hfi1_devdata* %101, i32 %102, i32* %103)
  store i32 0, i32* %21, align 4
  br label %105

105:                                              ; preds = %120, %100
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cpu_to_be16(i32 %114)
  %116 = load i32*, i32** %19, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %21, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i32*, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i64, i64* %24, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %127
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  br label %133

133:                                              ; preds = %126, %123
  br label %140

134:                                              ; preds = %95
  %135 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %136 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %137 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %133
  %141 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %142 = bitcast %struct.opa_smp* %141 to %struct.ib_mad_hdr*
  %143 = call i32 @reply(%struct.ib_mad_hdr* %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %140, %81, %62, %35
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i64 @smp_length_check(i64, i32) #1

declare dso_local i32 @get_pkeys(%struct.hfi1_devdata*, i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
