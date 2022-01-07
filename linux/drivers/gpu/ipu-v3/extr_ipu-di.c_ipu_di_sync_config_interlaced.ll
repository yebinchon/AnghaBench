; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config_interlaced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config_interlaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32 }
%struct.ipu_di_signal_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.di_sync_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DI_SYNC_CLK = common dso_local global i32 0, align 4
@DI_SYNC_CNT1 = common dso_local global i32 0, align 4
@DI_SYNC_HSYNC = common dso_local global i32 0, align 4
@DI_SYNC_CNT4 = common dso_local global i32 0, align 4
@DI_SYNC_CNT5 = common dso_local global i32 0, align 4
@DI_SCR_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_di*, %struct.ipu_di_signal_cfg*)* @ipu_di_sync_config_interlaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_di_sync_config_interlaced(%struct.ipu_di* %0, %struct.ipu_di_signal_cfg* %1) #0 {
  %3 = alloca %struct.ipu_di*, align 8
  %4 = alloca %struct.ipu_di_signal_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [7 x %struct.di_sync_config], align 16
  store %struct.ipu_di* %0, %struct.ipu_di** %3, align 8
  store %struct.ipu_di_signal_cfg* %1, %struct.ipu_di_signal_cfg** %4, align 8
  %8 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %11, %15
  %17 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  %22 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %30, %34
  %36 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %35, %39
  %41 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %6, align 4
  %46 = getelementptr inbounds [7 x %struct.di_sync_config], [7 x %struct.di_sync_config]* %7, i64 0, i64 0
  %47 = bitcast %struct.di_sync_config* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 36, i1 false)
  %48 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %46, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 2
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %46, i32 0, i32 1
  store i32 3, i32* %52, align 4
  %53 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %46, i64 1
  %54 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 1
  %58 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %58, i32* %57, align 4
  %59 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 3
  %61 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 4
  %63 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %62, align 4
  %68 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 5
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 6
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 7
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i32 0, i32 8
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %53, i64 1
  %73 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 0
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 1
  store i32 4, i32* %76, align 4
  %77 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 3
  store i32 4, i32* %78, align 4
  %79 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 4
  %80 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %79, align 4
  %85 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 5
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 6
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 7
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i32 0, i32 8
  %89 = load i32, i32* @DI_SYNC_CNT1, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %72, i64 1
  %91 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %91, align 4
  %94 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 1
  %95 = load i32, i32* @DI_SYNC_HSYNC, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 4
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 5
  %100 = load i32, i32* %5, align 4
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 6
  %103 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %103, i32* %102, align 4
  %104 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 7
  store i32 2, i32* %104, align 4
  %105 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i32 0, i32 8
  %106 = load i32, i32* @DI_SYNC_CNT1, align 4
  store i32 %106, i32* %105, align 4
  %107 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %90, i64 1
  %108 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 1
  %110 = load i32, i32* @DI_SYNC_HSYNC, align 4
  store i32 %110, i32* %109, align 4
  %111 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 2
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 3
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 4
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 5
  %115 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %116 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %120 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %118, %122
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %114, align 4
  %125 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 6
  %126 = load i32, i32* @DI_SYNC_HSYNC, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 7
  %128 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %129 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 2
  store i32 %132, i32* %127, align 4
  %133 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i32 0, i32 8
  %134 = load i32, i32* @DI_SYNC_CNT4, align 4
  store i32 %134, i32* %133, align 4
  %135 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %107, i64 1
  %136 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 0
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 1
  %138 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %138, i32* %137, align 4
  %139 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 2
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 3
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 5
  %143 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %144 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %148 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %146, %150
  store i32 %151, i32* %142, align 4
  %152 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 6
  %153 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %153, i32* %152, align 4
  %154 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 7
  %155 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %156 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %154, align 4
  %159 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i32 0, i32 8
  %160 = load i32, i32* @DI_SYNC_CNT5, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %135, i64 1
  %162 = bitcast %struct.di_sync_config* %161 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %162, i8 0, i64 36, i1 false)
  %163 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %161, i32 0, i32 0
  %164 = load i32, i32* %5, align 4
  %165 = sdiv i32 %164, 2
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %163, align 4
  %167 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %161, i32 0, i32 1
  %168 = load i32, i32* @DI_SYNC_CLK, align 4
  store i32 %168, i32* %167, align 4
  %169 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %170 = getelementptr inbounds [7 x %struct.di_sync_config], [7 x %struct.di_sync_config]* %7, i64 0, i64 0
  %171 = getelementptr inbounds [7 x %struct.di_sync_config], [7 x %struct.di_sync_config]* %7, i64 0, i64 0
  %172 = call i32 @ARRAY_SIZE(%struct.di_sync_config* %171)
  %173 = call i32 @ipu_di_sync_config(%struct.ipu_di* %169, %struct.di_sync_config* %170, i32 0, i32 %172)
  %174 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sdiv i32 %175, 2
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* @DI_SCR_CONF, align 4
  %179 = call i32 @ipu_di_write(%struct.ipu_di* %174, i32 %177, i32 %178)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipu_di_sync_config(%struct.ipu_di*, %struct.di_sync_config*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.di_sync_config*) #2

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
