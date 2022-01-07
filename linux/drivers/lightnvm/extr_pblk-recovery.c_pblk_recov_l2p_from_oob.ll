; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_l2p_from_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_l2p_from_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { i32, %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_recov_alloc = type { i8*, i8*, i8*, %struct.nvm_rq*, i8*, %struct.ppa_addr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pblk_g_rq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not recover L2P form OOB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_recov_l2p_from_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_recov_l2p_from_oob(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_geo*, align 8
  %8 = alloca %struct.nvm_rq*, align 8
  %9 = alloca %struct.ppa_addr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pblk_recov_alloc, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %16 = load %struct.pblk*, %struct.pblk** %4, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 2
  %18 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %17, align 8
  store %struct.nvm_tgt_dev* %18, %struct.nvm_tgt_dev** %6, align 8
  %19 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %19, i32 0, i32 1
  store %struct.nvm_geo* %20, %struct.nvm_geo** %7, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %22 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @nvm_dev_dma_alloc(i32 %23, i32 %24, i8** %14)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %106

31:                                               ; preds = %2
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.pblk*, %struct.pblk** %4, align 8
  %34 = call i64 @pblk_dma_meta_size(%struct.pblk* %33)
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.ppa_addr*
  store %struct.ppa_addr* %36, %struct.ppa_addr** %9, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.pblk*, %struct.pblk** %4, align 8
  %39 = call i64 @pblk_dma_meta_size(%struct.pblk* %38)
  %40 = getelementptr i8, i8* %37, i64 %39
  store i8* %40, i8** %13, align 8
  %41 = load %struct.pblk*, %struct.pblk** %4, align 8
  %42 = getelementptr inbounds %struct.pblk, %struct.pblk* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %45 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %43, i32 %46, i32 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  br label %98

54:                                               ; preds = %31
  %55 = load %struct.pblk*, %struct.pblk** %4, align 8
  %56 = getelementptr inbounds %struct.pblk, %struct.pblk* %55, i32 0, i32 0
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.nvm_rq* @mempool_alloc(i32* %56, i32 %57)
  store %struct.nvm_rq* %58, %struct.nvm_rq** %8, align 8
  %59 = load %struct.nvm_rq*, %struct.nvm_rq** %8, align 8
  %60 = load i32, i32* @pblk_g_rq_size, align 4
  %61 = call i32 @memset(%struct.nvm_rq* %59, i32 0, i32 %60)
  %62 = load %struct.ppa_addr*, %struct.ppa_addr** %9, align 8
  %63 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 5
  store %struct.ppa_addr* %62, %struct.ppa_addr** %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load %struct.nvm_rq*, %struct.nvm_rq** %8, align 8
  %67 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 3
  store %struct.nvm_rq* %66, %struct.nvm_rq** %67, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %11, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = load %struct.pblk*, %struct.pblk** %4, align 8
  %75 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %76 = call i32 @pblk_recov_scan_oob(%struct.pblk* %74, %struct.pblk_line* %75, %struct.pblk_recov_alloc* byval(%struct.pblk_recov_alloc) align 8 %11)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %54
  %80 = load %struct.pblk*, %struct.pblk** %4, align 8
  %81 = call i32 @pblk_err(%struct.pblk* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %91

82:                                               ; preds = %54
  %83 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %84 = call i64 @pblk_line_is_full(%struct.pblk_line* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.pblk*, %struct.pblk** %4, align 8
  %88 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %89 = call i32 @pblk_line_recov_close(%struct.pblk* %87, %struct.pblk_line* %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %79
  %92 = load %struct.nvm_rq*, %struct.nvm_rq** %8, align 8
  %93 = load %struct.pblk*, %struct.pblk** %4, align 8
  %94 = getelementptr inbounds %struct.pblk, %struct.pblk* %93, i32 0, i32 0
  %95 = call i32 @mempool_free(%struct.nvm_rq* %92, i32* %94)
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @kfree(i8* %96)
  br label %98

98:                                               ; preds = %91, %51
  %99 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %100 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @nvm_dev_dma_free(i32 %101, i8* %102, i8* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %28
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @nvm_dev_dma_alloc(i32, i32, i8**) #1

declare dso_local i64 @pblk_dma_meta_size(%struct.pblk*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.nvm_rq* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_recov_scan_oob(%struct.pblk*, %struct.pblk_line*, %struct.pblk_recov_alloc* byval(%struct.pblk_recov_alloc) align 8) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i64 @pblk_line_is_full(%struct.pblk_line*) #1

declare dso_local i32 @pblk_line_recov_close(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @mempool_free(%struct.nvm_rq*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nvm_dev_dma_free(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
