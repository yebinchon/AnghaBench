; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config_noninterlaced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config_noninterlaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32 }
%struct.ipu_di_signal_cfg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.di_sync_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DI_SYNC_CLK = common dso_local global i32 0, align 4
@DI_SYNC_INT_HSYNC = common dso_local global i32 0, align 4
@DI_SYNC_VSYNC = common dso_local global i32 0, align 4
@DI_SYNC_HSYNC = common dso_local global i32 0, align 4
@DI_SCR_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_di*, %struct.ipu_di_signal_cfg*, i32)* @ipu_di_sync_config_noninterlaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_di_sync_config_noninterlaced(%struct.ipu_di* %0, %struct.ipu_di_signal_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_di*, align 8
  %5 = alloca %struct.ipu_di_signal_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [9 x %struct.di_sync_config], align 16
  %10 = alloca [9 x %struct.di_sync_config], align 16
  store %struct.ipu_di* %0, %struct.ipu_di** %4, align 8
  store %struct.ipu_di_signal_cfg* %1, %struct.ipu_di_signal_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %14, %18
  %20 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  %25 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %33, %37
  %39 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %8, align 4
  %49 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %9, i64 0, i64 0
  %50 = bitcast %struct.di_sync_config* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 36, i1 false)
  %51 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %49, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %49, i32 0, i32 8
  %55 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %49, i64 1
  %57 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 1
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  store i32 %65, i32* %60, align 4
  %66 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 3
  %68 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 2
  store i32 %72, i32* %67, align 4
  %73 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 5
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 6
  %76 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 7
  %78 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i32 0, i32 8
  %80 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %56, i64 1
  %82 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 0
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 3
  %88 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %89 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %87, align 4
  %93 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 4
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 6
  %96 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %96, i32* %95, align 4
  %97 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 7
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i32 0, i32 8
  %99 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %81, i64 1
  %101 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 1
  %103 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %108 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %106, %110
  store i32 %111, i32* %102, align 4
  %112 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 2
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 3
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 4
  %115 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %116 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %114, align 4
  %119 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 5
  %120 = load i32, i32* @DI_SYNC_VSYNC, align 4
  store i32 %120, i32* %119, align 4
  %121 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 6
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 7
  %123 = load i32, i32* @DI_SYNC_HSYNC, align 4
  store i32 %123, i32* %122, align 4
  %124 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i32 0, i32 8
  %125 = load i32, i32* @DI_SYNC_HSYNC, align 4
  store i32 %125, i32* %124, align 4
  %126 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %100, i64 1
  %127 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 1
  %129 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %134 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %132, %136
  store i32 %137, i32* %128, align 4
  %138 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 2
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 3
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 4
  %141 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %142 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %140, align 4
  %145 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 5
  store i32 5, i32* %145, align 4
  %146 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 6
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 7
  %148 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %148, i32* %147, align 4
  %149 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i32 0, i32 8
  %150 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %150, i32* %149, align 4
  %151 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %126, i64 1
  %152 = bitcast %struct.di_sync_config* %151 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %152, i8 0, i64 36, i1 false)
  %153 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %151, i64 1
  %154 = bitcast %struct.di_sync_config* %153 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %154, i8 0, i64 36, i1 false)
  %155 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %153, i64 1
  %156 = bitcast %struct.di_sync_config* %155 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %156, i8 0, i64 36, i1 false)
  %157 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %155, i64 1
  %158 = bitcast %struct.di_sync_config* %157 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %158, i8 0, i64 36, i1 false)
  %159 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %10, i64 0, i64 0
  %160 = bitcast %struct.di_sync_config* %159 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %160, i8 0, i64 36, i1 false)
  %161 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %159, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %159, i32 0, i32 8
  %165 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %165, i32* %164, align 4
  %166 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %159, i64 1
  %167 = bitcast %struct.di_sync_config* %166 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %167, i8 0, i64 36, i1 false)
  %168 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %166, i32 0, i32 0
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %166, i32 0, i32 8
  %172 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %172, i32* %171, align 4
  %173 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %166, i64 1
  %174 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 1
  %176 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %177 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %181 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %179, %183
  store i32 %184, i32* %175, align 4
  %185 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 2
  store i32 0, i32* %185, align 4
  %186 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 3
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 4
  %188 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %189 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %187, align 4
  %192 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 5
  store i32 3, i32* %192, align 4
  %193 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 6
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 7
  %195 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %195, i32* %194, align 4
  %196 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i32 0, i32 8
  %197 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %197, i32* %196, align 4
  %198 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %173, i64 1
  %199 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 0
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 1
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %205 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = add nsw i32 %207, 18
  store i32 %208, i32* %202, align 4
  %209 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 2
  store i32 1, i32* %209, align 4
  %210 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 3
  %211 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %212 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %214, 2
  store i32 %215, i32* %210, align 4
  %216 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 4
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 5
  store i32 0, i32* %217, align 4
  %218 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 6
  %219 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %219, i32* %218, align 4
  %220 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 7
  %221 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %221, i32* %220, align 4
  %222 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i32 0, i32 8
  %223 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %223, i32* %222, align 4
  %224 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %198, i64 1
  %225 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 0
  store i32 0, i32* %225, align 4
  %226 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 1
  %227 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %228 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %232 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %230, %234
  store i32 %235, i32* %226, align 4
  %236 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 2
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 3
  store i32 0, i32* %237, align 4
  %238 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 4
  %239 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %240 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %238, align 4
  %243 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 5
  store i32 4, i32* %243, align 4
  %244 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 6
  store i32 0, i32* %244, align 4
  %245 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 7
  %246 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %246, i32* %245, align 4
  %247 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i32 0, i32 8
  %248 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %248, i32* %247, align 4
  %249 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %224, i64 1
  %250 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 0
  %251 = load i32, i32* %8, align 4
  %252 = sub nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  %253 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 1
  store i32 1, i32* %253, align 4
  %254 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 2
  store i32 1, i32* %254, align 4
  %255 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 3
  %256 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %257 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %259, 2
  store i32 %260, i32* %255, align 4
  %261 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 4
  store i32 0, i32* %261, align 4
  %262 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 5
  store i32 0, i32* %262, align 4
  %263 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 6
  %264 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %264, i32* %263, align 4
  %265 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 7
  %266 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %266, i32* %265, align 4
  %267 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i32 0, i32 8
  %268 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %268, i32* %267, align 4
  %269 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %249, i64 1
  %270 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 0
  %271 = load i32, i32* %7, align 4
  %272 = sub nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 1
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %276 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = mul nsw i32 %274, %277
  %279 = add nsw i32 %278, 18
  store i32 %279, i32* %273, align 4
  %280 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 2
  store i32 1, i32* %280, align 4
  %281 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 3
  %282 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %283 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %285, 2
  store i32 %286, i32* %281, align 4
  %287 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 4
  store i32 0, i32* %287, align 4
  %288 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 5
  store i32 0, i32* %288, align 4
  %289 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 6
  %290 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %290, i32* %289, align 4
  %291 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 7
  %292 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %292, i32* %291, align 4
  %293 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i32 0, i32 8
  %294 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %294, i32* %293, align 4
  %295 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %269, i64 1
  %296 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 0
  %297 = load i32, i32* %8, align 4
  %298 = sub nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  %299 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 1
  store i32 1, i32* %299, align 4
  %300 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 2
  store i32 1, i32* %300, align 4
  %301 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 3
  %302 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %303 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %305, 2
  store i32 %306, i32* %301, align 4
  %307 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 4
  store i32 0, i32* %307, align 4
  %308 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 5
  store i32 0, i32* %308, align 4
  %309 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 6
  %310 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %310, i32* %309, align 4
  %311 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 7
  %312 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %312, i32* %311, align 4
  %313 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i32 0, i32 8
  %314 = load i32, i32* @DI_SYNC_INT_HSYNC, align 4
  store i32 %314, i32* %313, align 4
  %315 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %295, i64 1
  %316 = bitcast %struct.di_sync_config* %315 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %316, i8 0, i64 36, i1 false)
  %317 = load %struct.ipu_di*, %struct.ipu_di** %4, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sub nsw i32 %318, 1
  %320 = load i32, i32* @DI_SCR_CONF, align 4
  %321 = call i32 @ipu_di_write(%struct.ipu_di* %317, i32 %319, i32 %320)
  %322 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %323 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %326, label %337

326:                                              ; preds = %3
  %327 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %5, align 8
  %328 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 3
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load %struct.ipu_di*, %struct.ipu_di** %4, align 8
  %333 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %9, i64 0, i64 0
  %334 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %9, i64 0, i64 0
  %335 = call i32 @ARRAY_SIZE(%struct.di_sync_config* %334)
  %336 = call i32 @ipu_di_sync_config(%struct.ipu_di* %332, %struct.di_sync_config* %333, i32 0, i32 %335)
  br label %343

337:                                              ; preds = %326, %3
  %338 = load %struct.ipu_di*, %struct.ipu_di** %4, align 8
  %339 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %10, i64 0, i64 0
  %340 = getelementptr inbounds [9 x %struct.di_sync_config], [9 x %struct.di_sync_config]* %10, i64 0, i64 0
  %341 = call i32 @ARRAY_SIZE(%struct.di_sync_config* %340)
  %342 = call i32 @ipu_di_sync_config(%struct.ipu_di* %338, %struct.di_sync_config* %339, i32 0, i32 %341)
  br label %343

343:                                              ; preds = %337, %331
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #2

declare dso_local i32 @ipu_di_sync_config(%struct.ipu_di*, %struct.di_sync_config*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.di_sync_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
