; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_pkeytable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c___subn_set_opa_pkeytable.c"
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
@.str.1 = private unnamed_addr constant [71 x i8] c"OPA Set PKey AM Invalid : s 0x%x; req 0x%x; avail 0x%x; blk/smp 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32)* @__subn_set_opa_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__subn_set_opa_pkeytable(%struct.opa_smp* %0, i32 %1, i32* %2, %struct.ib_device* %3, i32 %4, i32* %5, i32 %6) #0 {
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
  %24 = alloca i32, align 4
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
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %19, align 8
  %32 = load i32*, i32** %11, align 8
  store i32* %32, i32** %20, align 8
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %34 = call i32 @hfi1_get_npkeys(%struct.hfi1_devdata* %33)
  store i32 %34, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %7
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %43 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %44 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %48 = bitcast %struct.opa_smp* %47 to %struct.ib_mad_hdr*
  %49 = call i32 @reply(%struct.ib_mad_hdr* %48)
  store i32 %49, i32* %8, align 4
  br label %146

50:                                               ; preds = %7
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* @OPA_PARTITION_TABLE_BLK_SIZE, align 4
  %53 = udiv i32 %51, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @OPA_PARTITION_TABLE_BLK_SIZE, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @smp_length_check(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %67 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %68 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %72 = bitcast %struct.opa_smp* %71 to %struct.ib_mad_hdr*
  %73 = call i32 @reply(%struct.ib_mad_hdr* %72)
  store i32 %73, i32* %8, align 4
  br label %146

74:                                               ; preds = %50
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %22, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @OPA_NUM_PKEY_BLOCKS_PER_SMP, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80, %74
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* @OPA_NUM_PKEY_BLOCKS_PER_SMP, align 4
  %89 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %91 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %92 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %96 = bitcast %struct.opa_smp* %95 to %struct.ib_mad_hdr*
  %97 = call i32 @reply(%struct.ib_mad_hdr* %96)
  store i32 %97, i32* %8, align 4
  br label %146

98:                                               ; preds = %80
  store i32 0, i32* %21, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @OPA_PARTITION_TABLE_BLK_SIZE, align 4
  %103 = mul i32 %101, %102
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32*, i32** %20, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be16_to_cpu(i32 %110)
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %21, align 4
  br label %99

119:                                              ; preds = %99
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = call i64 @set_pkeys(%struct.hfi1_devdata* %123, i32 %124, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %130 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %131 = getelementptr inbounds %struct.opa_smp, %struct.opa_smp* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %135 = bitcast %struct.opa_smp* %134 to %struct.ib_mad_hdr*
  %136 = call i32 @reply(%struct.ib_mad_hdr* %135)
  store i32 %136, i32* %8, align 4
  br label %146

137:                                              ; preds = %122, %119
  %138 = load %struct.opa_smp*, %struct.opa_smp** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @__subn_get_opa_pkeytable(%struct.opa_smp* %138, i32 %139, i32* %140, %struct.ib_device* %141, i32 %142, i32* %143, i32 %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %137, %128, %84, %65, %37
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @OPA_AM_NBLK(i32) #1

declare dso_local i32 @hfi1_get_npkeys(%struct.hfi1_devdata*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @reply(%struct.ib_mad_hdr*) #1

declare dso_local i64 @smp_length_check(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @set_pkeys(%struct.hfi1_devdata*, i32, i32*) #1

declare dso_local i32 @__subn_get_opa_pkeytable(%struct.opa_smp*, i32, i32*, %struct.ib_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
