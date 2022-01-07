; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_rqd_ppalist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_rqd_ppalist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { %struct.nvm_geo, %struct.nvm_dev* }
%struct.nvm_geo = type { i32 }
%struct.nvm_dev = type { i32 }
%struct.nvm_rq = type { i32, %struct.ppa_addr*, i32, %struct.ppa_addr }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVM_PLANE_SINGLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate dma memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_tgt_dev*, %struct.nvm_rq*, %struct.ppa_addr*, i32)* @nvm_set_rqd_ppalist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_set_rqd_ppalist(%struct.nvm_tgt_dev* %0, %struct.nvm_rq* %1, %struct.ppa_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_rq*, align 8
  %8 = alloca %struct.ppa_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvm_dev*, align 8
  %11 = alloca %struct.nvm_geo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ppa_addr, align 4
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %6, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %7, align 8
  store %struct.ppa_addr* %2, %struct.ppa_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %17 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %16, i32 0, i32 1
  %18 = load %struct.nvm_dev*, %struct.nvm_dev** %17, align 8
  store %struct.nvm_dev* %18, %struct.nvm_dev** %10, align 8
  %19 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %19, i32 0, i32 0
  store %struct.nvm_geo* %20, %struct.nvm_geo** %11, align 8
  %21 = load %struct.nvm_geo*, %struct.nvm_geo** %11, align 8
  %22 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NVM_PLANE_SINGLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %32 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %34 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %33, i32 0, i32 3
  %35 = load %struct.ppa_addr*, %struct.ppa_addr** %8, align 8
  %36 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %35, i64 0
  %37 = bitcast %struct.ppa_addr* %34 to i8*
  %38 = bitcast %struct.ppa_addr* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %106

39:                                               ; preds = %26, %4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %42 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %46 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %45, i32 0, i32 2
  %47 = call %struct.ppa_addr* @nvm_dev_dma_alloc(%struct.nvm_dev* %43, i32 %44, i32* %46)
  %48 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %49 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %48, i32 0, i32 1
  store %struct.ppa_addr* %47, %struct.ppa_addr** %49, align 8
  %50 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %51 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %50, i32 0, i32 1
  %52 = load %struct.ppa_addr*, %struct.ppa_addr** %51, align 8
  %53 = icmp ne %struct.ppa_addr* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %106

58:                                               ; preds = %39
  %59 = load %struct.nvm_geo*, %struct.nvm_geo** %11, align 8
  %60 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %64 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %102, %58
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load %struct.ppa_addr*, %struct.ppa_addr** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %77, i64 %79
  %81 = bitcast %struct.ppa_addr* %15 to i8*
  %82 = bitcast %struct.ppa_addr* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load i32, i32* %14, align 4
  %84 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %87 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %86, i32 0, i32 1
  %88 = load %struct.ppa_addr*, %struct.ppa_addr** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %88, i64 %94
  %96 = bitcast %struct.ppa_addr* %95 to i8*
  %97 = bitcast %struct.ppa_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  br label %98

98:                                               ; preds = %76
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %72

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %67

105:                                              ; preds = %67
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %54, %29
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ppa_addr* @nvm_dev_dma_alloc(%struct.nvm_dev*, i32, i32*) #2

declare dso_local i32 @pr_err(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
