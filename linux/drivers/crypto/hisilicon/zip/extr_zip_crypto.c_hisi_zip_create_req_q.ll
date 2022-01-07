; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_req_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_create_req_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hisi_zip_req_q }
%struct.hisi_zip_req_q = type { i8*, i8*, i32, i32 }

@HZIP_CTX_Q_NUM = common dso_local global i32 0, align 4
@QM_Q_DEPTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QPC_DECOMP = common dso_local global i64 0, align 8
@QPC_COMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_ctx*)* @hisi_zip_create_req_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_create_req_q(%struct.hisi_zip_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip_ctx*, align 8
  %4 = alloca %struct.hisi_zip_req_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hisi_zip_ctx* %0, %struct.hisi_zip_ctx** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HZIP_CTX_Q_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.hisi_zip_req_q* %18, %struct.hisi_zip_req_q** %4, align 8
  %19 = load i32, i32* @QM_Q_DEPTH, align 4
  %20 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BITS_TO_LONGS(i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kcalloc(i32 %25, i32 8, i32 %26)
  %28 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %29 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %31 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %100

41:                                               ; preds = %34
  br label %79

42:                                               ; preds = %11
  %43 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %44 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %43, i32 0, i32 3
  %45 = call i32 @rwlock_init(i32* %44)
  %46 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %47 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i32 %48, i32 4, i32 %49)
  %51 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %4, align 8
  %54 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %89

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %7

68:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %100

69:                                               ; preds = %63
  %70 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @QPC_DECOMP, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @kfree(i8* %77)
  br label %79

79:                                               ; preds = %69, %41
  %80 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @QPC_COMP, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @kfree(i8* %87)
  br label %89

89:                                               ; preds = %79, %62
  %90 = load %struct.hisi_zip_ctx*, %struct.hisi_zip_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.hisi_zip_ctx, %struct.hisi_zip_ctx* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* @QPC_COMP, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %89, %68, %39
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
