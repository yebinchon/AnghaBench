; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_fault_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgp100.c_gp100_vmm_fault_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%union.anon = type { %struct.gp100_vmm_fault_cancel_v0 }
%struct.gp100_vmm_fault_cancel_v0 = type { i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, i8*, i32)* @gp100_vmm_fault_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp100_vmm_fault_cancel(%struct.nvkm_vmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %union.anon*
  store %union.anon* %20, %union.anon** %9, align 8
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %union.anon*, %union.anon** %9, align 8
  %25 = bitcast %union.anon* %24 to %struct.gp100_vmm_fault_cancel_v0*
  %26 = bitcast %struct.gp100_vmm_fault_cancel_v0* %25 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 4
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @nvif_unpack(i32 %23, i8** %6, i32* %7, i64 %28, i64 %30, i32 0, i32 0, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %97

35:                                               ; preds = %3
  %36 = load %union.anon*, %union.anon** %9, align 8
  %37 = bitcast %union.anon* %36 to %struct.gp100_vmm_fault_cancel_v0*
  %38 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 3
  store i32 %41, i32* %12, align 4
  %42 = load %union.anon*, %union.anon** %9, align 8
  %43 = bitcast %union.anon* %42 to %struct.gp100_vmm_fault_cancel_v0*
  %44 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 12
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 28
  %49 = load %union.anon*, %union.anon** %9, align 8
  %50 = bitcast %union.anon* %49 to %struct.gp100_vmm_fault_cancel_v0*
  %51 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %union.anon*, %union.anon** %9, align 8
  %55 = bitcast %union.anon* %54 to %struct.gp100_vmm_fault_cancel_v0*
  %56 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, -2147483648
  store i32 %58, i32* %56, align 4
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %60 = call i32 @nvkm_gr_ctxsw_pause(%struct.nvkm_device* %59)
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %96, label %63

63:                                               ; preds = %35
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %65 = call i32 @nvkm_gr_ctxsw_inst(%struct.nvkm_device* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %union.anon*, %union.anon** %9, align 8
  %67 = bitcast %union.anon* %66 to %struct.gp100_vmm_fault_cancel_v0*
  %68 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %63
  %72 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %73 = load %union.anon*, %union.anon** %9, align 8
  %74 = bitcast %union.anon* %73 to %struct.gp100_vmm_fault_cancel_v0*
  %75 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 20
  %78 = or i32 27, %77
  %79 = load %union.anon*, %union.anon** %9, align 8
  %80 = bitcast %union.anon* %79 to %struct.gp100_vmm_fault_cancel_v0*
  %81 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 15
  %84 = or i32 %78, %83
  %85 = load %union.anon*, %union.anon** %9, align 8
  %86 = bitcast %union.anon* %85 to %struct.gp100_vmm_fault_cancel_v0*
  %87 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, %struct.gp100_vmm_fault_cancel_v0* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 9
  %90 = or i32 %84, %89
  %91 = call i32 @gf100_vmm_invalidate(%struct.nvkm_vmm* %72, i32 %90)
  br label %92

92:                                               ; preds = %71, %63
  %93 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %94 = call i32 @nvkm_gr_ctxsw_resume(%struct.nvkm_device* %93)
  %95 = call i32 @WARN_ON(i32 %94)
  br label %96

96:                                               ; preds = %92, %35
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %33
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_gr_ctxsw_pause(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_gr_ctxsw_inst(%struct.nvkm_device*) #1

declare dso_local i32 @gf100_vmm_invalidate(%struct.nvkm_vmm*, i32) #1

declare dso_local i32 @nvkm_gr_ctxsw_resume(%struct.nvkm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
