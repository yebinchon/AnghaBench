; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_data_descriptor_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_hw_data_descriptor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { %struct.TYPE_4__**, %struct.TYPE_3__**, i32, i64* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i64, i32 }
%struct.sahara_sha_reqctx = type { i64, i32, i32, i64 }
%struct.ahash_request = type { i32 }

@SAHARA_HDR_MDHA_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*, %struct.sahara_sha_reqctx*, %struct.ahash_request*, i32)* @sahara_sha_hw_data_descriptor_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_hw_data_descriptor_create(%struct.sahara_dev* %0, %struct.sahara_sha_reqctx* %1, %struct.ahash_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sahara_dev*, align 8
  %7 = alloca %struct.sahara_sha_reqctx*, align 8
  %8 = alloca %struct.ahash_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %6, align 8
  store %struct.sahara_sha_reqctx* %1, %struct.sahara_sha_reqctx** %7, align 8
  store %struct.ahash_request* %2, %struct.ahash_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %14 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %19 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %20 = call i32 @sahara_sha_init_hdr(%struct.sahara_dev* %18, %struct.sahara_sha_reqctx* %19)
  %21 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %22 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 %20, i32* %28, align 8
  br label %39

29:                                               ; preds = %4
  %30 = load i32, i32* @SAHARA_HDR_MDHA_HASH, align 4
  %31 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %32 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i32 %30, i32* %38, align 8
  br label %39

39:                                               ; preds = %29, %17
  %40 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %41 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %44 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 %42, i64* %50, align 8
  %51 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %52 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %39
  %62 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %63 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %71 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %100

72:                                               ; preds = %39
  %73 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %74 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %81 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %82, i64 %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i64 %79, i64* %87, align 8
  %88 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %89 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @sahara_sha_hw_links_create(%struct.sahara_dev* %88, %struct.sahara_sha_reqctx* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %94 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %72
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %5, align 4
  br label %156

99:                                               ; preds = %72
  br label %100

100:                                              ; preds = %99, %61
  %101 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %102 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %109 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %110, i64 %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i64 %107, i64* %115, align 8
  %116 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %7, align 8
  %117 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %120 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %123 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 %121, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %132 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %133, i64 %135
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %130, i32* %138, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %141 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %142, i64 %144
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %139, i32* %147, align 8
  %148 = load %struct.sahara_dev*, %struct.sahara_dev** %6, align 8
  %149 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %150, i64 %152
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %100, %97
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @sahara_sha_init_hdr(%struct.sahara_dev*, %struct.sahara_sha_reqctx*) #1

declare dso_local i32 @sahara_sha_hw_links_create(%struct.sahara_dev*, %struct.sahara_sha_reqctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
