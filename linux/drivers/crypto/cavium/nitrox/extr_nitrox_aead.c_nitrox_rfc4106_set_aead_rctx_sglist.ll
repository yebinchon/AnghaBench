; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_set_aead_rctx_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_set_aead_rctx_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32 }
%struct.nitrox_rfc4106_rctx = type { %struct.scatterlist*, %struct.scatterlist*, i32, %struct.nitrox_aead_rctx }
%struct.scatterlist = type { i32 }
%struct.nitrox_aead_rctx = type { %struct.scatterlist*, %struct.scatterlist* }

@GCM_RFC4106_IV_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @nitrox_rfc4106_set_aead_rctx_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_rfc4106_set_aead_rctx_sglist(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.nitrox_rfc4106_rctx*, align 8
  %5 = alloca %struct.nitrox_aead_rctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.nitrox_rfc4106_rctx* %9, %struct.nitrox_rfc4106_rctx** %4, align 8
  %10 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %11 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %10, i32 0, i32 3
  store %struct.nitrox_aead_rctx* %11, %struct.nitrox_aead_rctx** %5, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %13 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GCM_RFC4106_IV_SIZE, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 16
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 20
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %143

29:                                               ; preds = %21, %1
  %30 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %31 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %34 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @scatterwalk_map_and_copy(i32 %32, i32 %35, i32 0, i32 %36, i32 0)
  %38 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %39 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %38, i32 0, i32 1
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = call i32 @sg_init_table(%struct.scatterlist* %40, i32 3)
  %42 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %43 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %42, i32 0, i32 1
  %44 = load %struct.scatterlist*, %struct.scatterlist** %43, align 8
  %45 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %46 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @sg_set_buf(%struct.scatterlist* %44, i32 %47, i32 %48)
  %50 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %51 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %50, i32 0, i32 1
  %52 = load %struct.scatterlist*, %struct.scatterlist** %51, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i64 1
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %58 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %53, i32 %56, i32 %59)
  store %struct.scatterlist* %60, %struct.scatterlist** %7, align 8
  %61 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %62 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %63 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %62, i32 0, i32 1
  %64 = load %struct.scatterlist*, %struct.scatterlist** %63, align 8
  %65 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i64 1
  %66 = icmp ne %struct.scatterlist* %61, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %29
  %68 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %69 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %68, i32 0, i32 1
  %70 = load %struct.scatterlist*, %struct.scatterlist** %69, align 8
  %71 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %72 = call i32 @sg_chain(%struct.scatterlist* %70, i32 2, %struct.scatterlist* %71)
  br label %73

73:                                               ; preds = %67, %29
  %74 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %75 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %73
  %82 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %83 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %82, i32 0, i32 0
  %84 = load %struct.scatterlist*, %struct.scatterlist** %83, align 8
  %85 = call i32 @sg_init_table(%struct.scatterlist* %84, i32 3)
  %86 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %87 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %86, i32 0, i32 0
  %88 = load %struct.scatterlist*, %struct.scatterlist** %87, align 8
  %89 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %90 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @sg_set_buf(%struct.scatterlist* %88, i32 %91, i32 %92)
  %94 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %95 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %94, i32 0, i32 0
  %96 = load %struct.scatterlist*, %struct.scatterlist** %95, align 8
  %97 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %96, i64 1
  %98 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %99 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %102 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %97, i32 %100, i32 %103)
  store %struct.scatterlist* %104, %struct.scatterlist** %7, align 8
  %105 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %106 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %107 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %106, i32 0, i32 0
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %108, i64 1
  %110 = icmp ne %struct.scatterlist* %105, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %81
  %112 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %113 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %112, i32 0, i32 0
  %114 = load %struct.scatterlist*, %struct.scatterlist** %113, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %116 = call i32 @sg_chain(%struct.scatterlist* %114, i32 2, %struct.scatterlist* %115)
  br label %117

117:                                              ; preds = %111, %81
  br label %118

118:                                              ; preds = %117, %73
  %119 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %120 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %119, i32 0, i32 1
  %121 = load %struct.scatterlist*, %struct.scatterlist** %120, align 8
  %122 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %5, align 8
  %123 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %122, i32 0, i32 1
  store %struct.scatterlist* %121, %struct.scatterlist** %123, align 8
  %124 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %125 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %128 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %133 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %132, i32 0, i32 1
  %134 = load %struct.scatterlist*, %struct.scatterlist** %133, align 8
  br label %139

135:                                              ; preds = %118
  %136 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %4, align 8
  %137 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %136, i32 0, i32 0
  %138 = load %struct.scatterlist*, %struct.scatterlist** %137, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi %struct.scatterlist* [ %134, %131 ], [ %138, %135 ]
  %141 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %5, align 8
  %142 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %141, i32 0, i32 0
  store %struct.scatterlist* %140, %struct.scatterlist** %142, align 8
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %26
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
