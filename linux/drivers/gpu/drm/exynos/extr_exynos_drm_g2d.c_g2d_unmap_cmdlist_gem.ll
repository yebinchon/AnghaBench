; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_unmap_cmdlist_gem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_unmap_cmdlist_gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32 }
%struct.g2d_cmdlist_node = type { %struct.g2d_buf_info }
%struct.g2d_buf_info = type { i32, i32*, i64*, i32**, %struct.g2d_buf_desc* }
%struct.g2d_buf_desc = type { i32 }
%struct.drm_file = type { i32 }

@BUF_TYPE_GEM = common dso_local global i64 0, align 8
@REG_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g2d_data*, %struct.g2d_cmdlist_node*, %struct.drm_file*)* @g2d_unmap_cmdlist_gem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_unmap_cmdlist_gem(%struct.g2d_data* %0, %struct.g2d_cmdlist_node* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.g2d_data*, align 8
  %5 = alloca %struct.g2d_cmdlist_node*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.g2d_buf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.g2d_buf_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.g2d_data* %0, %struct.g2d_data** %4, align 8
  store %struct.g2d_cmdlist_node* %1, %struct.g2d_cmdlist_node** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %12 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %5, align 8
  %13 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %12, i32 0, i32 0
  store %struct.g2d_buf_info* %13, %struct.g2d_buf_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %80, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %17 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %14
  %21 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %22 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %29 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %28, i32 0, i32 4
  %30 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %30, i64 %32
  store %struct.g2d_buf_desc* %33, %struct.g2d_buf_desc** %9, align 8
  %34 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %35 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %11, align 8
  %42 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %43 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BUF_TYPE_GEM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @exynos_drm_gem_put(i8* %52)
  br label %58

54:                                               ; preds = %20
  %55 = load %struct.g2d_data*, %struct.g2d_data** %4, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @g2d_userptr_put_dma_addr(%struct.g2d_data* %55, i8* %56, i32 0)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* @REG_TYPE_NONE, align 4
  %60 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %61 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %67 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %66, i32 0, i32 3
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  store i32* null, i32** %71, align 8
  %72 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %73 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 0, i64* %77, align 8
  %78 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %9, align 8
  %79 = call i32 @memset(%struct.g2d_buf_desc* %78, i32 0, i32 4)
  br label %80

80:                                               ; preds = %58
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %14

83:                                               ; preds = %14
  %84 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %7, align 8
  %85 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  ret void
}

declare dso_local i32 @exynos_drm_gem_put(i8*) #1

declare dso_local i32 @g2d_userptr_put_dma_addr(%struct.g2d_data*, i8*, i32) #1

declare dso_local i32 @memset(%struct.g2d_buf_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
