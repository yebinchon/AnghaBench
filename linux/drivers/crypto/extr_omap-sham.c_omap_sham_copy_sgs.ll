; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_reqctx = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Couldn't allocate pages for unaligned cases.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FLAGS_SGS_COPIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_reqctx*, %struct.scatterlist*, i32, i32)* @omap_sham_copy_sgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_copy_sgs(%struct.omap_sham_reqctx* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_sham_reqctx*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.omap_sham_reqctx* %0, %struct.omap_sham_reqctx** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %15 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %19 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @get_order(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @__get_free_pages(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %95

32:                                               ; preds = %4
  %33 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %34 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %40 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %45 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memcpy(i8* %38, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %51 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %49, i64 %53
  %55 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %56 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %57 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %60 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %63 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %61, %65
  %67 = call i32 @scatterwalk_map_and_copy(i8* %54, %struct.scatterlist* %55, i32 %58, i64 %66, i32 0)
  %68 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %69 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sg_init_table(i32 %70, i32 1)
  %72 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %73 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @sg_set_buf(i32 %74, i8* %75, i32 %76)
  %78 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %79 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %82 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @FLAGS_SGS_COPIED, align 4
  %84 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %85 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %83, i32* %87)
  %89 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %90 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %92 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %6, align 8
  %94 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %48, %28
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i8*, %struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_buf(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
