; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_int_process_v9.c_event_interrupt_isr_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_int_process_v9.c_event_interrupt_isr_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 (i32, i64)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"client id 0x%x, source id %d, vmid %d, pasid 0x%x. raw data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Bug: No PASID in KFD interrupt\00", align 1
@SOC15_INTSRC_CP_END_OF_PIPE = common dso_local global i64 0, align 8
@SOC15_INTSRC_SDMA_TRAP = common dso_local global i64 0, align 8
@SOC15_INTSRC_SQ_INTERRUPT_MSG = common dso_local global i64 0, align 8
@SOC15_INTSRC_CP_BAD_OPCODE = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_VMC = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_VMC1 = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_UTCL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, i64*, i64*, i32*)* @event_interrupt_isr_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_interrupt_isr_v9(%struct.kfd_dev* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kfd_dev*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i64*, i64** %7, align 8
  store i64* %16, i64** %14, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = call i64 @SOC15_VMID_FROM_IH_ENTRY(i64* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %21 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %28 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %148

33:                                               ; preds = %25
  %34 = load i64*, i64** %7, align 8
  %35 = call i64 @SOC15_SOURCE_ID_FROM_IH_ENTRY(i64* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i64 @SOC15_CLIENT_ID_FROM_IH_ENTRY(i64* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = call i64 @SOC15_PASID_FROM_IH_ENTRY(i64* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %33
  %43 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %44 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %42
  store i64 65535, i64* %15, align 8
  %51 = load i32*, i32** %9, align 8
  store i32 1, i32* %51, align 4
  %52 = load i64*, i64** %8, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %55 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i64* %52, i64* %53, i32 %58)
  %60 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %61 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64 (i32, i64)*, i64 (i32, i64)** %63, align 8
  %65 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %66 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 %64(i32 %67, i64 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @le32_to_cpu(i64 %72)
  %74 = and i64 %73, -65536
  %75 = load i64, i64* %12, align 8
  %76 = or i64 %74, %75
  %77 = call i64 @cpu_to_le32(i64 %76)
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 3
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %50, %42, %33
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64*, i64** %14, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %14, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %14, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %14, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %14, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %14, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %14, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 6
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %14, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 7
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, i64, i64, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %91, i64 %94, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109)
  %111 = load i64, i64* %12, align 8
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @WARN_ONCE(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %148

117:                                              ; preds = %80
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @SOC15_INTSRC_CP_END_OF_PIPE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %145, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @SOC15_INTSRC_SDMA_TRAP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @SOC15_INTSRC_SQ_INTERRUPT_MSG, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @SOC15_INTSRC_CP_BAD_OPCODE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @SOC15_IH_CLIENTID_VMC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @SOC15_IH_CLIENTID_VMC1, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @SOC15_IH_CLIENTID_UTCL2, align 8
  %144 = icmp eq i64 %142, %143
  br label %145

145:                                              ; preds = %141, %137, %133, %129, %125, %121, %117
  %146 = phi i1 [ true, %137 ], [ true, %133 ], [ true, %129 ], [ true, %125 ], [ true, %121 ], [ true, %117 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %145, %116, %32
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @SOC15_VMID_FROM_IH_ENTRY(i64*) #1

declare dso_local i64 @SOC15_SOURCE_ID_FROM_IH_ENTRY(i64*) #1

declare dso_local i64 @SOC15_CLIENT_ID_FROM_IH_ENTRY(i64*) #1

declare dso_local i64 @SOC15_PASID_FROM_IH_ENTRY(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
