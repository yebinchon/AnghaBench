; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.sdma_engine* }
%struct.sdma_engine = type { i32, i32, i32, %struct.sdma_buffer_descriptor*, %struct.sdma_context_data* }
%struct.sdma_buffer_descriptor = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sdma_context_data = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"load_address = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wml = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"shp_addr = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"per_addr = 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"event_mask0 = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"event_mask1 = 0x%08x\0A\00", align 1
@C0_SETDM = common dso_local global i32 0, align 4
@BD_DONE = common dso_local global i32 0, align 4
@BD_WRAP = common dso_local global i32 0, align 4
@BD_EXTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_channel*)* @sdma_load_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_load_context(%struct.sdma_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdma_context_data*, align 8
  %8 = alloca %struct.sdma_buffer_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sdma_channel* %0, %struct.sdma_channel** %3, align 8
  %11 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %11, i32 0, i32 11
  %13 = load %struct.sdma_engine*, %struct.sdma_engine** %12, align 8
  store %struct.sdma_engine* %13, %struct.sdma_engine** %4, align 8
  %14 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %18 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %17, i32 0, i32 4
  %19 = load %struct.sdma_context_data*, %struct.sdma_context_data** %18, align 8
  store %struct.sdma_context_data* %19, %struct.sdma_context_data** %7, align 8
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 3
  %22 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %21, align 8
  store %struct.sdma_buffer_descriptor* %22, %struct.sdma_buffer_descriptor** %8, align 8
  %23 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %24 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %199

28:                                               ; preds = %1
  %29 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %30 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %36 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %64

38:                                               ; preds = %28
  %39 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %40 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %46 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %63

48:                                               ; preds = %38
  %49 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %50 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %56 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %60 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %199

69:                                               ; preds = %64
  %70 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %71 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %76 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %79 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %83 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %86 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %90 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %93 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %97 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %100 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_dbg(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %106 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %109 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %115 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %114, i32 0, i32 0
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %119 = call i32 @memset(%struct.sdma_context_data* %118, i32 0, i32 16)
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %122 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %125 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %124, i32 0, i32 10
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %130 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %134 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %139 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %143 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %146 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %144, i32* %148, align 4
  %149 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %150 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %153 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 6
  store i32 %151, i32* %155, align 4
  %156 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %157 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sdma_context_data*, %struct.sdma_context_data** %7, align 8
  %160 = getelementptr inbounds %struct.sdma_context_data, %struct.sdma_context_data* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 7
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* @C0_SETDM, align 4
  %164 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %8, align 8
  %165 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @BD_DONE, align 4
  %168 = load i32, i32* @BD_WRAP, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @BD_EXTD, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %8, align 8
  %173 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %8, align 8
  %176 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 4, i32* %177, align 4
  %178 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %179 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %8, align 8
  %182 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 4, %184
  %186 = add i64 2048, %185
  %187 = trunc i64 %186 to i32
  %188 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %8, align 8
  %189 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %191 = call i32 @sdma_run_channel0(%struct.sdma_engine* %190)
  store i32 %191, i32* %9, align 4
  %192 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %193 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %192, i32 0, i32 0
  %194 = load i64, i64* %10, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  %196 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %197 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %69, %67, %27
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.sdma_context_data*, i32, i32) #1

declare dso_local i32 @sdma_run_channel0(%struct.sdma_engine*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
