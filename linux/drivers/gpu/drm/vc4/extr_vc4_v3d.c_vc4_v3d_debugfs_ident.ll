; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_debugfs_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_debugfs_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }

@V3D_IDENT1 = common dso_local global i32 0, align 4
@V3D_IDENT1_NSLC = common dso_local global i32 0, align 4
@V3D_IDENT1_TUPS = common dso_local global i32 0, align 4
@V3D_IDENT1_QUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Revision:   %d\0A\00", align 1
@V3D_IDENT1_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Slices:     %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"TMUs:       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"QPUs:       %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Semaphores: %d\0A\00", align 1
@V3D_IDENT1_NSEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @vc4_v3d_debugfs_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_v3d_debugfs_ident(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vc4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.drm_info_node*
  store %struct.drm_info_node* %16, %struct.drm_info_node** %5, align 8
  %17 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %18 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %6, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %22)
  store %struct.vc4_dev* %23, %struct.vc4_dev** %7, align 8
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %25 = call i32 @vc4_v3d_pm_get(%struct.vc4_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %2
  %29 = load i32, i32* @V3D_IDENT1, align 4
  %30 = call i32 @V3D_READ(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @V3D_IDENT1_NSLC, align 4
  %33 = call i32 @VC4_GET_FIELD(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @V3D_IDENT1_TUPS, align 4
  %36 = call i32 @VC4_GET_FIELD(i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @V3D_IDENT1_QUPS, align 4
  %39 = call i32 @VC4_GET_FIELD(i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @V3D_IDENT1_REV, align 4
  %43 = call i32 @VC4_GET_FIELD(i32 %41, i32 %42)
  %44 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @V3D_IDENT1_NSEM, align 4
  %61 = call i32 @VC4_GET_FIELD(i32 %59, i32 %60)
  %62 = call i32 @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %64 = call i32 @vc4_v3d_pm_put(%struct.vc4_dev* %63)
  br label %65

65:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @vc4_v3d_pm_get(%struct.vc4_dev*) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @VC4_GET_FIELD(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @vc4_v3d_pm_put(%struct.vc4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
