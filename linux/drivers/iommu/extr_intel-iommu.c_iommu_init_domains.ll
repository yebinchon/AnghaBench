; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_init_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_init_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i8**, i8**, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: Number of Domains supported <%d>\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: Allocating domain id array failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: Allocating domain array failed\0A\00", align 1
@FLPT_DEFAULT_DID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*)* @iommu_init_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_init_domains(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %7 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @cap_ndoms(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BITS_TO_LONGS(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8** @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 0
  store i8** %23, i8*** %25, align 8
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %107

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 256)
  %40 = ashr i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i64 %43, i32 %44)
  %46 = bitcast i8* %45 to i8**
  %47 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %48 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %47, i32 0, i32 1
  store i8** %46, i8*** %48, align 8
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %50 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %37
  store i64 2048, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i64 %54, i32 %55)
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %53, %37
  %62 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %63 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = icmp ne i8** %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %68 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %75 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %79 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = call i32 @kfree(i8** %80)
  %82 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %83 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = call i32 @kfree(i8** %84)
  %86 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %87 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %86, i32 0, i32 0
  store i8** null, i8*** %87, align 8
  %88 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %89 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %88, i32 0, i32 1
  store i8** null, i8*** %89, align 8
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %107

92:                                               ; preds = %66
  %93 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %94 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = call i32 @set_bit(i32 0, i8** %95)
  %97 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %98 = call i64 @sm_supported(%struct.intel_iommu* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i32, i32* @FLPT_DEFAULT_DID, align 4
  %102 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %103 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = call i32 @set_bit(i32 %101, i8** %104)
  br label %106

106:                                              ; preds = %100, %92
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %73, %30
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @cap_ndoms(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @set_bit(i32, i8**) #1

declare dso_local i64 @sm_supported(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
