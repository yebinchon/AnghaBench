; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_copy_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_copy_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_hash_reqctx = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"alloc pages for unaligned case.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HASH_FLAGS_SGS_COPIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_hash_reqctx*, %struct.scatterlist*, i32)* @s5p_hash_copy_sgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_copy_sgs(%struct.s5p_hash_reqctx* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_hash_reqctx*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.s5p_hash_reqctx* %0, %struct.s5p_hash_reqctx** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %13 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_order(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @__get_free_pages(i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %26 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %32 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %3
  %36 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %37 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %43 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %48 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i8* %41, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %54 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  %58 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %59 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %60 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @scatterwalk_map_and_copy(i8* %57, %struct.scatterlist* %58, i32 %61, i32 %62, i32 0)
  %64 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %65 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sg_init_table(i32 %66, i32 1)
  %68 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %69 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @sg_set_buf(i32 %70, i8* %71, i32 %72)
  %74 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %75 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %78 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %80 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %82 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %84 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %83, i32 0, i32 4
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* @HASH_FLAGS_SGS_COPIED, align 4
  %86 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %87 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %85, i32* %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %51, %24
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i8*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_buf(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
