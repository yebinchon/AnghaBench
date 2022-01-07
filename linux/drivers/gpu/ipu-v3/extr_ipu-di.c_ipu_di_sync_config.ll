; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_sync_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.di_sync_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"DI%d counters out of range.\0A\00", align 1
@DI_SW_GEN1_AUTO_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_di*, %struct.di_sync_config*, i32, i32)* @ipu_di_sync_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_di_sync_config(%struct.ipu_di* %0, %struct.di_sync_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_di*, align 8
  %6 = alloca %struct.di_sync_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.di_sync_config*, align 8
  %12 = alloca i32, align 4
  store %struct.ipu_di* %0, %struct.ipu_di** %5, align 8
  store %struct.di_sync_config* %1, %struct.di_sync_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %155, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %158

17:                                               ; preds = %13
  %18 = load %struct.di_sync_config*, %struct.di_sync_config** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %18, i64 %20
  store %struct.di_sync_config* %21, %struct.di_sync_config** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %27 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 4096
  br i1 %29, label %50, label %30

30:                                               ; preds = %17
  %31 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %32 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 4096
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %37 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 4096
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %42 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 1024
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %47 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 1024
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %40, %35, %30, %17
  %51 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %52 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %57 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %158

60:                                               ; preds = %45
  %61 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %62 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DI_SW_GEN0_RUN_COUNT(i32 %63)
  %65 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %66 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DI_SW_GEN0_RUN_SRC(i32 %67)
  %69 = or i32 %64, %68
  %70 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %71 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DI_SW_GEN0_OFFSET_COUNT(i32 %72)
  %74 = or i32 %69, %73
  %75 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %76 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DI_SW_GEN0_OFFSET_SRC(i32 %77)
  %79 = or i32 %74, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @DI_SW_GEN0(i32 %82)
  %84 = call i32 @ipu_di_write(%struct.ipu_di* %80, i32 %81, i32 %83)
  %85 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %86 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DI_SW_GEN1_CNT_POL_GEN_EN(i32 %87)
  %89 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %90 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DI_SW_GEN1_CNT_CLR_SRC(i32 %91)
  %93 = or i32 %88, %92
  %94 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %95 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @DI_SW_GEN1_CNT_POL_TRIGGER_SRC(i32 %96)
  %98 = or i32 %93, %97
  %99 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %100 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DI_SW_GEN1_CNT_POL_CLR_SRC(i32 %101)
  %103 = or i32 %98, %102
  %104 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %105 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @DI_SW_GEN1_CNT_DOWN(i32 %106)
  %108 = or i32 %103, %107
  %109 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %110 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DI_SW_GEN1_CNT_UP(i32 %111)
  %113 = or i32 %108, %112
  store i32 %113, i32* %9, align 4
  %114 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %115 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %60
  %119 = load i32, i32* @DI_SW_GEN1_AUTO_RELOAD, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %60
  %123 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @DI_SW_GEN1(i32 %125)
  %127 = call i32 @ipu_di_write(%struct.ipu_di* %123, i32 %124, i32 %126)
  %128 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @DI_STP_REP(i32 %129)
  %131 = call i32 @ipu_di_read(%struct.ipu_di* %128, i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sub nsw i32 %132, 1
  %134 = and i32 %133, 1
  %135 = mul nsw i32 16, %134
  %136 = shl i32 65535, %135
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.di_sync_config*, %struct.di_sync_config** %11, align 8
  %141 = getelementptr inbounds %struct.di_sync_config, %struct.di_sync_config* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 1
  %145 = and i32 %144, 1
  %146 = mul nsw i32 16, %145
  %147 = shl i32 %142, %146
  %148 = load i32, i32* %9, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load %struct.ipu_di*, %struct.ipu_di** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @DI_STP_REP(i32 %152)
  %154 = call i32 @ipu_di_write(%struct.ipu_di* %150, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %122
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %13

158:                                              ; preds = %50, %13
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DI_SW_GEN0_RUN_COUNT(i32) #1

declare dso_local i32 @DI_SW_GEN0_RUN_SRC(i32) #1

declare dso_local i32 @DI_SW_GEN0_OFFSET_COUNT(i32) #1

declare dso_local i32 @DI_SW_GEN0_OFFSET_SRC(i32) #1

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #1

declare dso_local i32 @DI_SW_GEN0(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_POL_GEN_EN(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_CLR_SRC(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_POL_TRIGGER_SRC(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_POL_CLR_SRC(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_DOWN(i32) #1

declare dso_local i32 @DI_SW_GEN1_CNT_UP(i32) #1

declare dso_local i32 @DI_SW_GEN1(i32) #1

declare dso_local i32 @ipu_di_read(%struct.ipu_di*, i32) #1

declare dso_local i32 @DI_STP_REP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
