; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_dm_workarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_dm_workarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_dm_workarea = type { i32, %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ccp_cmd_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CCP_DMAPOOL_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_dm_workarea*, %struct.ccp_cmd_queue*, i32, i32)* @ccp_init_dm_workarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_init_dm_workarea(%struct.ccp_dm_workarea* %0, %struct.ccp_cmd_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_dm_workarea*, align 8
  %7 = alloca %struct.ccp_cmd_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccp_dm_workarea* %0, %struct.ccp_dm_workarea** %6, align 8
  store %struct.ccp_cmd_queue* %1, %struct.ccp_cmd_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %11 = call i32 @memset(%struct.ccp_dm_workarea* %10, i32 0, i32 40)
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %105

15:                                               ; preds = %4
  %16 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %7, align 8
  %17 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %22 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %25 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CCP_DMAPOOL_MAX_SIZE, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %15
  %30 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %7, align 8
  %31 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %34 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %36 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %40 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i64 @dma_pool_zalloc(i32 %37, i32 %38, i32* %41)
  %43 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %44 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %46 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %29
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %105

52:                                               ; preds = %29
  %53 = load i32, i32* @CCP_DMAPOOL_MAX_SIZE, align 4
  %54 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %55 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %100

57:                                               ; preds = %15
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i64 @kzalloc(i32 %58, i32 %59)
  %61 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %62 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %64 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %105

70:                                               ; preds = %57
  %71 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %72 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %75 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dma_map_single(i32 %73, i64 %76, i32 %77, i32 %78)
  %80 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %81 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %84 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %87 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @dma_mapping_error(i32 %85, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %70
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %105

95:                                               ; preds = %70
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %98 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %52
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %6, align 8
  %103 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %92, %67, %49, %14
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.ccp_dm_workarea*, i32, i32) #1

declare dso_local i64 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
