; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_v3d_debugfs_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_v3d_debugfs_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32 }

@V3D_HUB_IDENT0 = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1 = common dso_local global i32 0, align 4
@V3D_HUB_IDENT2 = common dso_local global i32 0, align 4
@V3D_HUB_IDENT3 = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1_NCORES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Revision:   %d.%d.%d.%d\0A\00", align 1
@V3D_HUB_IDENT1_TVER = common dso_local global i32 0, align 4
@V3D_HUB_IDENT1_REV = common dso_local global i32 0, align 4
@V3D_HUB_IDENT3_IPREV = common dso_local global i32 0, align 4
@V3D_HUB_IDENT3_IPIDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MMU:        %s\0A\00", align 1
@V3D_HUB_IDENT2_WITH_MMU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"TFU:        %s\0A\00", align 1
@V3D_HUB_IDENT1_WITH_TFU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"TSY:        %s\0A\00", align 1
@V3D_HUB_IDENT1_WITH_TSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"MSO:        %s\0A\00", align 1
@V3D_HUB_IDENT1_WITH_MSO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"L3C:        %s (%dkb)\0A\00", align 1
@V3D_HUB_IDENT1_WITH_L3C = common dso_local global i32 0, align 4
@V3D_HUB_IDENT2_L3C_NKB = common dso_local global i32 0, align 4
@V3D_CTL_IDENT0 = common dso_local global i32 0, align 4
@V3D_CTL_IDENT1 = common dso_local global i32 0, align 4
@V3D_CTL_IDENT2 = common dso_local global i32 0, align 4
@V3D_CTL_MISCCFG = common dso_local global i32 0, align 4
@V3D_IDENT1_NSLC = common dso_local global i32 0, align 4
@V3D_IDENT1_NTMU = common dso_local global i32 0, align 4
@V3D_IDENT1_QUPS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"Core %d:\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"  Revision:     %d.%d\0A\00", align 1
@V3D_IDENT0_VER = common dso_local global i32 0, align 4
@V3D_IDENT1_REV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"  Slices:       %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"  TMUs:         %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"  QPUs:         %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"  Semaphores:   %d\0A\00", align 1
@V3D_IDENT1_NSEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"  BCG int:      %d\0A\00", align 1
@V3D_IDENT2_BCG_INT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"  Override TMU: %d\0A\00", align 1
@V3D_MISCCFG_OVRTMUOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @v3d_v3d_debugfs_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_v3d_debugfs_ident(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_info_node*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.v3d_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.drm_info_node*
  store %struct.drm_info_node* %23, %struct.drm_info_node** %6, align 8
  %24 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %25 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %7, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %29)
  store %struct.v3d_dev* %30, %struct.v3d_dev** %8, align 8
  %31 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %32 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_get_sync(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %3, align 4
  br label %189

39:                                               ; preds = %2
  %40 = load i32, i32* @V3D_HUB_IDENT0, align 4
  %41 = call i32 @V3D_READ(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @V3D_HUB_IDENT1, align 4
  %43 = call i32 @V3D_READ(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @V3D_HUB_IDENT2, align 4
  %45 = call i32 @V3D_READ(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @V3D_HUB_IDENT3, align 4
  %47 = call i32 @V3D_READ(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @V3D_HUB_IDENT1_NCORES, align 4
  %50 = call i32 @V3D_GET_FIELD(i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @V3D_HUB_IDENT1_TVER, align 4
  %54 = call i32 @V3D_GET_FIELD(i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @V3D_HUB_IDENT1_REV, align 4
  %57 = call i32 @V3D_GET_FIELD(i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @V3D_HUB_IDENT3_IPREV, align 4
  %60 = call i32 @V3D_GET_FIELD(i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @V3D_HUB_IDENT3_IPIDX, align 4
  %63 = call i32 @V3D_GET_FIELD(i32 %61, i32 %62)
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @V3D_HUB_IDENT2_WITH_MMU, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @V3D_HUB_IDENT1_WITH_TFU, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @V3D_HUB_IDENT1_WITH_TSY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @V3D_HUB_IDENT1_WITH_MSO, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %96 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @V3D_HUB_IDENT1_WITH_L3C, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @V3D_HUB_IDENT2_L3C_NKB, align 4
  %106 = call i32 @V3D_GET_FIELD(i32 %104, i32 %105)
  %107 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %103, i32 %106)
  store i32 0, i32* %15, align 4
  br label %108

108:                                              ; preds = %177, %39
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %180

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @V3D_CTL_IDENT0, align 4
  %115 = call i32 @V3D_CORE_READ(i32 %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @V3D_CTL_IDENT1, align 4
  %118 = call i32 @V3D_CORE_READ(i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @V3D_CTL_IDENT2, align 4
  %121 = call i32 @V3D_CORE_READ(i32 %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @V3D_CTL_MISCCFG, align 4
  %124 = call i32 @V3D_CORE_READ(i32 %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @V3D_IDENT1_NSLC, align 4
  %127 = call i32 @V3D_GET_FIELD(i32 %125, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @V3D_IDENT1_NTMU, align 4
  %130 = call i32 @V3D_GET_FIELD(i32 %128, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @V3D_IDENT1_QUPS, align 4
  %133 = call i32 @V3D_GET_FIELD(i32 %131, i32 %132)
  store i32 %133, i32* %19, align 4
  %134 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @V3D_IDENT0_VER, align 4
  %140 = call i32 @V3D_GET_FIELD(i32 %138, i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @V3D_IDENT1_REV, align 4
  %143 = call i32 @V3D_GET_FIELD(i32 %141, i32 %142)
  %144 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %146 = load i32, i32* %17, align 4
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %18, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %19, align 4
  %156 = mul nsw i32 %154, %155
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %156)
  %158 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @V3D_IDENT1_NSEM, align 4
  %161 = call i32 @V3D_GET_FIELD(i32 %159, i32 %160)
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @V3D_IDENT2_BCG_INT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %168)
  %170 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @V3D_MISCCFG_OVRTMUOUT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %112
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %108

180:                                              ; preds = %108
  %181 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %182 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @pm_runtime_mark_last_busy(i32 %183)
  %185 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %186 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @pm_runtime_put_autosuspend(i32 %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %180, %37
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @V3D_GET_FIELD(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
