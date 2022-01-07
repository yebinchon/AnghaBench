; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_mgr_fld_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_mgr_fld_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dispc_reg_field* }
%struct.dispc_reg_field = type { i64, i32, i32 }
%struct.dispc_device = type { i32 }

@mgr_desc = common dso_local global %struct.TYPE_2__* null, align 8
@DISPC_CONTROL = common dso_local global i64 0, align 8
@DISPC_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32, i32)* @mgr_fld_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgr_fld_write(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dispc_reg_field, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mgr_desc, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dispc_reg_field*, %struct.dispc_reg_field** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %17, i64 %19
  %21 = bitcast %struct.dispc_reg_field* %9 to i8*
  %22 = bitcast %struct.dispc_reg_field* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DISPC_CONTROL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DISPC_CONFIG, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %27, %4
  %33 = phi i1 [ true, %4 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %39 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %38, i32 0, i32 0
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %43 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @REG_FLD_MOD(%struct.dispc_device* %42, i64 %44, i32 %45, i32 %47, i32 %49)
  %51 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %52 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %51, i32 0, i32 0
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %65

55:                                               ; preds = %32
  %56 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %57 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.dispc_reg_field, %struct.dispc_reg_field* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @REG_FLD_MOD(%struct.dispc_device* %56, i64 %58, i32 %59, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %55, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i64, i32, i32, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
