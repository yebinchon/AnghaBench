; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_copy_gathers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_copy_gathers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, i64, i32, i8*, %struct.host1x_job_gather*, i32, i64, i32 }
%struct.host1x_job_gather = type { i32, i64, i32, i32 }
%struct.device = type { i32 }
%struct.host1x_firewall = type { i64, i32, i32, %struct.device*, %struct.host1x_job* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_job*, %struct.device*)* @copy_gathers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_gathers(%struct.host1x_job* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_job*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.host1x_firewall, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.host1x_job_gather*, align 8
  %11 = alloca %struct.host1x_job_gather*, align 8
  %12 = alloca i8*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %14 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 4
  store %struct.host1x_job* %13, %struct.host1x_job** %14, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 3
  store %struct.device* %15, %struct.device** %16, align 8
  %17 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %18 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %22 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %26 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %49, %2
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %32 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %37 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %36, i32 0, i32 4
  %38 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %38, i64 %40
  store %struct.host1x_job_gather* %41, %struct.host1x_job_gather** %10, align 8
  %42 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %10, align 8
  %43 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %56 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %55, i32 0, i32 2
  %57 = load i32, i32* @GFP_NOWAIT, align 4
  %58 = call i8* @dma_alloc_wc(%struct.device* %53, i64 %54, i32* %56, i32 %57)
  %59 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %60 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %62 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %52
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %69 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %68, i32 0, i32 2
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @dma_alloc_wc(%struct.device* %66, i64 %67, i32* %69, i32 %70)
  %72 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %73 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %52
  %75 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %76 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %158

82:                                               ; preds = %74
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %85 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %147, %82
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %89 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %150

92:                                               ; preds = %86
  %93 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %94 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %93, i32 0, i32 4
  %95 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %95, i64 %97
  store %struct.host1x_job_gather* %98, %struct.host1x_job_gather** %11, align 8
  %99 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %100 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @host1x_bo_mmap(i32 %101)
  store i8* %102, i8** %12, align 8
  %103 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %104 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr i8, i8* %105, i64 %106
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %110 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr i8, i8* %108, i64 %111
  %113 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %114 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memcpy(i8* %107, i8* %112, i32 %118)
  %120 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %121 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @host1x_bo_munmap(i32 %122, i8* %123)
  %125 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %126 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %129 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %132 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %134 = call i64 @validate(%struct.host1x_firewall* %6, %struct.host1x_job_gather* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %92
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %158

139:                                              ; preds = %92
  %140 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %11, align 8
  %141 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %86

150:                                              ; preds = %86
  %151 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %158

157:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %154, %136, %79
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i8* @dma_alloc_wc(%struct.device*, i64, i32*, i32) #1

declare dso_local i8* @host1x_bo_mmap(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @host1x_bo_munmap(i32, i8*) #1

declare dso_local i64 @validate(%struct.host1x_firewall*, %struct.host1x_job_gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
