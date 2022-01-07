; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_cik_event_interrupt.c_cik_event_interrupt_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_cik_event_interrupt.c_cik_event_interrupt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.kfd2kgd_calls* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.kfd2kgd_calls = type { i32 (i32)*, i32 (i32, i32)* }
%struct.cik_ih_ring_entry = type { i64, i32 }

@CIK_INTSRC_GFX_PAGE_INV_FAULT = common dso_local global i64 0, align 8
@CIK_INTSRC_GFX_MEM_PROT_FAULT = common dso_local global i64 0, align 8
@CHIP_HAWAII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"FW bug: No PASID in KFD interrupt\00", align 1
@CIK_INTSRC_CP_END_OF_PIPE = common dso_local global i64 0, align 8
@CIK_INTSRC_SDMA_TRAP = common dso_local global i64 0, align 8
@CIK_INTSRC_SQ_INTERRUPT_MSG = common dso_local global i64 0, align 8
@CIK_INTSRC_CP_BAD_OPCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_dev*, i32*, i32*, i32*)* @cik_event_interrupt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_event_interrupt_isr(%struct.kfd_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kfd_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cik_ih_ring_entry*, align 8
  %11 = alloca %struct.kfd2kgd_calls*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cik_ih_ring_entry*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.cik_ih_ring_entry*
  store %struct.cik_ih_ring_entry* %16, %struct.cik_ih_ring_entry** %10, align 8
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %18 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %17, i32 0, i32 3
  %19 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %18, align 8
  store %struct.kfd2kgd_calls* %19, %struct.kfd2kgd_calls** %11, align 8
  %20 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %21 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CIK_INTSRC_GFX_PAGE_INV_FAULT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %27 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CIK_INTSRC_GFX_MEM_PROT_FAULT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %97

31:                                               ; preds = %25, %4
  %32 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %33 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_HAWAII, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = bitcast i32* %40 to %struct.cik_ih_ring_entry*
  store %struct.cik_ih_ring_entry* %41, %struct.cik_ih_ring_entry** %14, align 8
  %42 = load i32*, i32** %9, align 8
  store i32 1, i32* %42, align 4
  %43 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %14, align 8
  %44 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %45 = bitcast %struct.cik_ih_ring_entry* %43 to i8*
  %46 = bitcast %struct.cik_ih_ring_entry* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %11, align 8
  %48 = getelementptr inbounds %struct.kfd2kgd_calls, %struct.kfd2kgd_calls* %47, i32 0, i32 0
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %51 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %11, align 8
  %55 = getelementptr inbounds %struct.kfd2kgd_calls, %struct.kfd2kgd_calls* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %58 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 %56(i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %14, align 8
  %63 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 255
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %14, align 8
  %69 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 %72, 16
  %74 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %14, align 8
  %75 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %39
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %83 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp uge i32 %81, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %90 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ule i32 %88, %92
  br label %94

94:                                               ; preds = %87, %80, %39
  %95 = phi i1 [ false, %80 ], [ false, %39 ], [ %93, %87 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %168

97:                                               ; preds = %31, %25
  %98 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %99 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 65280
  %102 = ashr i32 %101, 8
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %105 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %103, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.kfd_dev*, %struct.kfd_dev** %6, align 8
  %112 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ugt i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %97
  store i32 0, i32* %5, align 4
  br label %168

117:                                              ; preds = %109
  %118 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %119 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -65536
  %122 = lshr i32 %121, 16
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i64 @WARN_ONCE(i32 %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %168

129:                                              ; preds = %117
  %130 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %131 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CIK_INTSRC_CP_END_OF_PIPE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %165, label %135

135:                                              ; preds = %129
  %136 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %137 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CIK_INTSRC_SDMA_TRAP, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %165, label %141

141:                                              ; preds = %135
  %142 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %143 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CIK_INTSRC_SQ_INTERRUPT_MSG, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %165, label %147

147:                                              ; preds = %141
  %148 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %149 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CIK_INTSRC_CP_BAD_OPCODE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %165, label %153

153:                                              ; preds = %147
  %154 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %155 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @CIK_INTSRC_GFX_PAGE_INV_FAULT, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %10, align 8
  %161 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CIK_INTSRC_GFX_MEM_PROT_FAULT, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %159, %153, %147, %141, %135, %129
  %166 = phi i1 [ true, %153 ], [ true, %147 ], [ true, %141 ], [ true, %135 ], [ true, %129 ], [ %164, %159 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %128, %116, %94
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
