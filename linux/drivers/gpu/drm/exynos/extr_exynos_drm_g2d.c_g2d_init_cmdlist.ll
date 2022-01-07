; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_init_cmdlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_init_cmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32, i64, i64, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.g2d_cmdlist_node = type { i32, %struct.g2d_buf_info, i64, i64 }
%struct.g2d_buf_info = type { i32* }

@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@G2D_CMDLIST_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate dma memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@G2D_CMDLIST_NUM = common dso_local global i32 0, align 4
@G2D_CMDLIST_SIZE = common dso_local global i32 0, align 4
@MAX_REG_TYPE_NR = common dso_local global i32 0, align 4
@REG_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_data*)* @g2d_init_cmdlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_init_cmdlist(%struct.g2d_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g2d_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.g2d_cmdlist_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.g2d_buf_info*, align 8
  %9 = alloca i32, align 4
  store %struct.g2d_data* %0, %struct.g2d_data** %3, align 8
  %10 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %11 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %10, i32 0, i32 5
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %14 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %15 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %17 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @to_dma_dev(i32 %18)
  %20 = load i32, i32* @G2D_CMDLIST_POOL_SIZE, align 4
  %21 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %22 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %25 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @dma_alloc_attrs(i32 %19, i32 %20, i64* %22, i32 %23, i32 %26)
  %28 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %29 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %31 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %130

39:                                               ; preds = %1
  %40 = load i32, i32* @G2D_CMDLIST_NUM, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.g2d_cmdlist_node* @kcalloc(i32 %40, i32 32, i32 %41)
  store %struct.g2d_cmdlist_node* %42, %struct.g2d_cmdlist_node** %5, align 8
  %43 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %44 = icmp ne %struct.g2d_cmdlist_node* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %113

48:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %109, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @G2D_CMDLIST_NUM, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %49
  %54 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %55 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @G2D_CMDLIST_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %62, i64 %64
  %66 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %65, i32 0, i32 3
  store i64 %61, i64* %66, align 8
  %67 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %68 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @G2D_CMDLIST_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %75, i64 %77
  %79 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %78, i32 0, i32 2
  store i64 %74, i64* %79, align 8
  %80 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %80, i64 %82
  %84 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %83, i32 0, i32 1
  store %struct.g2d_buf_info* %84, %struct.g2d_buf_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %97, %53
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @MAX_REG_TYPE_NR, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i32, i32* @REG_TYPE_NONE, align 4
  %91 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %8, align 8
  %92 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %101, i64 %103
  %105 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %104, i32 0, i32 0
  %106 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %107 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %106, i32 0, i32 4
  %108 = call i32 @list_add_tail(i32* %105, i32* %107)
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %49

112:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %130

113:                                              ; preds = %45
  %114 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %115 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @to_dma_dev(i32 %116)
  %118 = load i32, i32* @G2D_CMDLIST_POOL_SIZE, align 4
  %119 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %120 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %123 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %126 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dma_free_attrs(i32 %117, i32 %118, i64 %121, i64 %124, i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %113, %112, %34
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @dma_alloc_attrs(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.g2d_cmdlist_node* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
