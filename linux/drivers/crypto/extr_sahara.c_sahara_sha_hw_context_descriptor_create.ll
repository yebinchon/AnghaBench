; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_context_descriptor_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_context_descriptor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { %struct.TYPE_4__**, i32, %struct.TYPE_3__**, i32* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }
%struct.sahara_sha_reqctx = type { i32 }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*, %struct.sahara_sha_reqctx*, %struct.ahash_request*, i32)* @sahara_sha_hw_context_descriptor_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_hw_context_descriptor_create(%struct.sahara_dev* %0, %struct.sahara_sha_reqctx* %1, %struct.ahash_request* %2, i32 %3) #0 {
  %5 = alloca %struct.sahara_dev*, align 8
  %6 = alloca %struct.sahara_sha_reqctx*, align 8
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %5, align 8
  store %struct.sahara_sha_reqctx* %1, %struct.sahara_sha_reqctx** %6, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %10 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %11 = call i32 @sahara_sha_init_hdr(%struct.sahara_dev* %9, %struct.sahara_sha_reqctx* %10)
  %12 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %13 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i32 %11, i32* %19, align 8
  %20 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %21 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %24 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %22, i32* %30, align 4
  %31 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %32 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %39 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %37, i32* %45, align 8
  %46 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %47 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %55 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %6, align 8
  %63 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %66 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %64, i32* %72, align 4
  %73 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %74 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %77 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %75, i32* %83, align 8
  %84 = load %struct.sahara_dev*, %struct.sahara_dev** %5, align 8
  %85 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  ret i32 0
}

declare dso_local i32 @sahara_sha_init_hdr(%struct.sahara_dev*, %struct.sahara_sha_reqctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
