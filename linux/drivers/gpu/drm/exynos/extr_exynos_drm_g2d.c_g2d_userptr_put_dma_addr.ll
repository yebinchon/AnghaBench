; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_userptr_put_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_userptr_put_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32 }
%struct.g2d_cmdlist_userptr = type { %struct.g2d_cmdlist_userptr*, i32, i32, i32, i32, i32, i64, i32 }
%struct.page = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g2d_data*, i8*, i32)* @g2d_userptr_put_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_userptr_put_dma_addr(%struct.g2d_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.g2d_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g2d_cmdlist_userptr*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  store %struct.g2d_data* %0, %struct.g2d_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.g2d_cmdlist_userptr*
  store %struct.g2d_cmdlist_userptr* %11, %struct.g2d_cmdlist_userptr** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %106

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %35

19:                                               ; preds = %15
  %20 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %21 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %20, i32 0, i32 7
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %24 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %23, i32 0, i32 7
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %106

28:                                               ; preds = %19
  %29 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %30 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %106

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.g2d_data*, %struct.g2d_data** %4, align 8
  %37 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_dma_dev(i32 %38)
  %40 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %41 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %40, i32 0, i32 0
  %42 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %41, align 8
  %43 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %46 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %45, i32 0, i32 0
  %47 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %46, align 8
  %48 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %51 = call i32 @dma_unmap_sg(i32 %39, i32 %44, i32 %49, i32 %50)
  %52 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %53 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.page** @frame_vector_pages(i32 %54)
  store %struct.page** %55, %struct.page*** %8, align 8
  %56 = load %struct.page**, %struct.page*** %8, align 8
  %57 = call i32 @IS_ERR(%struct.page** %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %63 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @frame_vector_count(i32 %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.page**, %struct.page*** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 %70
  %72 = load %struct.page*, %struct.page** %71, align 8
  %73 = call i32 @set_page_dirty_lock(%struct.page* %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %60

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %35
  %79 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %80 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @put_vaddr_frames(i32 %81)
  %83 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %84 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @frame_vector_destroy(i32 %85)
  %87 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %88 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %78
  %92 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %93 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %92, i32 0, i32 1
  %94 = call i32 @list_del_init(i32* %93)
  br label %95

95:                                               ; preds = %91, %78
  %96 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %97 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %96, i32 0, i32 0
  %98 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %97, align 8
  %99 = call i32 @sg_free_table(%struct.g2d_cmdlist_userptr* %98)
  %100 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %101 = getelementptr inbounds %struct.g2d_cmdlist_userptr, %struct.g2d_cmdlist_userptr* %100, i32 0, i32 0
  %102 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %101, align 8
  %103 = call i32 @kfree(%struct.g2d_cmdlist_userptr* %102)
  %104 = load %struct.g2d_cmdlist_userptr*, %struct.g2d_cmdlist_userptr** %7, align 8
  %105 = call i32 @kfree(%struct.g2d_cmdlist_userptr* %104)
  br label %106

106:                                              ; preds = %95, %33, %27, %14
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

declare dso_local %struct.page** @frame_vector_pages(i32) #1

declare dso_local i32 @IS_ERR(%struct.page**) #1

declare dso_local i32 @frame_vector_count(i32) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @put_vaddr_frames(i32) #1

declare dso_local i32 @frame_vector_destroy(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sg_free_table(%struct.g2d_cmdlist_userptr*) #1

declare dso_local i32 @kfree(%struct.g2d_cmdlist_userptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
