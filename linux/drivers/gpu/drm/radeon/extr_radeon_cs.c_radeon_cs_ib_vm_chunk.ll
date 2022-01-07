; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_vm_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_vm_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_cs_parser = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_6__, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32 }

@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to sync rings: %i\0A\00", align 1
@CHIP_TAHITI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_cs_parser*)* @radeon_cs_ib_vm_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device* %0, %struct.radeon_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_fpriv*, align 8
  %7 = alloca %struct.radeon_vm*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_cs_parser* %1, %struct.radeon_cs_parser** %5, align 8
  %9 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 6
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %12, align 8
  store %struct.radeon_fpriv* %13, %struct.radeon_fpriv** %6, align 8
  %14 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %14, i32 0, i32 0
  store %struct.radeon_vm* %15, %struct.radeon_vm** %7, align 8
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

21:                                               ; preds = %2
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %122

29:                                               ; preds = %21
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %40, i32 0, i32 3
  %42 = call i32 @radeon_ring_ib_parse(%struct.radeon_device* %36, i64 %39, %struct.TYPE_6__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %122

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %53, i32 0, i32 2
  %55 = call i32 @radeon_ring_ib_parse(%struct.radeon_device* %49, i64 %52, %struct.TYPE_6__* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %122

60:                                               ; preds = %48
  %61 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = call i32 @radeon_uvd_note_usage(%struct.radeon_device* %67)
  br label %69

69:                                               ; preds = %66, %60
  %70 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %74 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %75 = call i32 @radeon_bo_vm_update_pte(%struct.radeon_cs_parser* %73, %struct.radeon_vm* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %117

79:                                               ; preds = %69
  %80 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %81 = call i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ERESTARTSYS, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %84
  br label %117

93:                                               ; preds = %79
  %94 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CHIP_TAHITI, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %106 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %106, i32 0, i32 2
  %108 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %109 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %108, i32 0, i32 3
  %110 = call i32 @radeon_ib_schedule(%struct.radeon_device* %105, %struct.TYPE_6__* %107, %struct.TYPE_6__* %109, i32 1)
  store i32 %110, i32* %8, align 4
  br label %116

111:                                              ; preds = %99, %93
  %112 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %113 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %114 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %113, i32 0, i32 2
  %115 = call i32 @radeon_ib_schedule(%struct.radeon_device* %112, %struct.TYPE_6__* %114, %struct.TYPE_6__* null, i32 1)
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %104
  br label %117

117:                                              ; preds = %116, %92, %78
  %118 = load %struct.radeon_vm*, %struct.radeon_vm** %7, align 8
  %119 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %117, %58, %45, %28, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @radeon_ring_ib_parse(%struct.radeon_device*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @radeon_uvd_note_usage(%struct.radeon_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radeon_bo_vm_update_pte(%struct.radeon_cs_parser*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
